class karol::tools::nginx($port = 80) {
  include ::nginx

  # use standard nginx.conf, add your own into template if you like into the template directive
  File <| title == $nginx::config::configfile |> {
    content => template("nginx/config/nginx/nginx.conf.erb", "karol/nginx.conf.erb")
  }

  #Change this to teh real config path when debugging finished
  $projects_config = "${nginx::config::configdir}/nginx.conf"
  $passenger_version = "4.0.45"
  $passenger_root = "/Library/Ruby/Gems/2.0.0/gems/passenger-${passenger_version}"

  # uninstall system nginx if it's built without passenger or selftest is failing
  # and do it before the onlyif / unless conditions of other blocks are even executed
  $x = inline_template("<%=
    config = File.read('${projects_config}') rescue ''
    if !config.include?('passenger-${passenger_version}') || !system('sudo nginx -t >/dev/null 2>&1')
      puts 'Uninstalling nginx'
      Bundler.with_clean_env { `brew uninstall nginx 2>/dev/null` }
    end
  %>")

  # install passenger into the ruby which nginx will use
  ruby::gem {"passenger-system":
    gem     => 'passenger',
    version => $passenger_version,
    ruby    => "system",
  }

  # Sometimes passenger is not building it's native extensions and needs help
  # check if it is there after a normal install and if not do it by hand
  exec{ "compile-passenger":
    command => "cd ${passenger_root} && rake nginx",
    user => "root",
    unless => "test -d ${passenger_root}/buildout",
    require => Package["boxen/brews/nginx"],
  }

  # make nginx formula install via default ruby and exact passenger version
  file{ "/opt/boxen/homebrew/Library/ENV/4.3/passenger-config":
    content => "#!/bin/sh\necho ${passenger_root}",
    mode    => "0755",
    require => Ruby::Gem["passenger-system"],
  }

  Package <| title == "boxen/brews/nginx" |> {
    install_options => "--with-passenger",
    require => [Ruby::Gem["passenger-system"], File["/opt/boxen/homebrew/Library/ENV/4.3/passenger-config"], Exec["fix-passenger-permissions"]],
  }

  # or nginx install fails with passenger errors (buildout/common/libboost_oxt.a)
  exec {"fix-passenger-permissions":
    command => "chmod -R 777 ${passenger_root}",
    user => root,
    require => Ruby::Gem["passenger-system"],
  }
  
  file { "/opt/boxen/config/nginx/sites/apirails.conf":
    content => template('karol/apirails.nginx.conf.erb'),
    ensure => file,
    mode => 640,
    owner => 'karolbuchta',
    group => 'staff',
    require => Package["boxen/brews/nginx"],
    notify => Service["dev.nginx"],
  }
}