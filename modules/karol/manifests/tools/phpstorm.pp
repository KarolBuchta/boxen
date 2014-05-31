class karol::tools::phpstorm {
  package { 'PHPstorm custom':
    source   => "http://download.jetbrains.com/webide/PhpStorm-7.0.dmg",
    provider => 'appdmg_eula',
    ensure => 'installed',
  }
}
