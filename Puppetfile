#This file manages Puppet module dependencies.
#
# It works a lot like Bundler. We provide some core modules by
# default. This ensures at least the ability to construct a basic
# environment.

# Shortcut for a module from GitHub's boxen organization
def github(name, *args)
  options ||= if args.last.is_a? Hash
    args.last
  else
    {}
  end

  if path = options.delete(:path)
    mod name, :path => path
  else
    version = args.first
    options[:repo] ||= "boxen/puppet-#{name}"
    mod name, version, :github_tarball => options[:repo]
  end
end

# Shortcut for a module under development
def dev(name, *args)
  mod name, :path => "#{ENV['HOME']}/src/boxen/puppet-#{name}"
end

# Includes many of our custom types and providers, as well as global
# config. Required.

github "boxen", "3.4.2"

# Support for default hiera data in modules

github "module-data", "0.0.3", :repo => "ripienaar/puppet-module-data"

# Core modules for a basic development environment. You can replace
# some/most of these if you want, but it's not recommended.

github "dnsmasq",     "1.0.1"
github "foreman",     "1.2.0"
github "gcc",         "2.0.100"
github "git",         "2.2.2"
github "go",          "1.1.0"
github "homebrew",    "1.9.2"
github "hub",         "1.3.0"
github "inifile",     "1.0.3", :repo => "puppetlabs/puppetlabs-inifile"
github "nginx",       "1.4.3"
github "nodejs",      "3.8.1"
github "openssl",     "1.0.0"
github "phantomjs",   "2.1.0"
github "pkgconfig",   "1.0.0"
github "repository",  "2.3.0"
github "ruby",        "7.3.0"
github "stdlib",      "4.1.0", :repo => "puppetlabs/puppetlabs-stdlib"
github "sudo",        "1.0.0"
github "xquartz",     "1.1.1"

# Optional/custom modules. There are tons available at
# https://github.com/boxen.

#Add custom github Repos
def githhaelmy(name, version, options = nil)
  options ||= {}
  options[:repo] ||= "haelmy/puppet-#{name}"
  mod name, version, :github_tarball => options[:repo]
end

github "firefox",               "1.1.8"
github "chrome",                "1.1.2"
github "skype",                 "1.0.8"
github "iterm2",                "1.0.7"
github "thunderbird",           "1.4.0"

#Even if not use directly, osx is required for puppet-zsh
github "osx",                   "2.5.0"

github "zsh",	                "1.0.0"
github "phpstorm",              "1.0.4"
github "vim",                   "1.0.5"
github "wget",                  "1.0.0"
github "appcleaner",            "1.0.0"
github "hipchat",               "1.1.0"
github "dropbox",               "1.1.1"
githhaelmy "ohmyzsh",           "0.0.1"
github "alfred",                "1.2.0"
github "divvy",                 "1.0.1"

#lamp
github "memcached",   "1.2.0"
github "pkgconfig",   "1.0.0"
github "pcre",        "1.0.0"
github "mysql",       "1.1.3"

#mobile
github "java",        "1.5.0"
github "eclipse",     "2.3.0"
github "android",     "1.2.1"

#file transfer
github "transmit",    "1.0.2"
