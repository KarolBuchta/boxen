class karol::default {
    	include karol::tools::phpstorm			
	include karol::tools::htop
	include karol::tools::android
   	include iterm2::stable 
	include zsh
	include ohmyzsh	
	include firefox
	include chrome
	include skype
	include dropbox
	include hipchat
	include transmit
		
	include appcleaner
	
	include java
	
	#set out default ruby and PHP version by addin .ruby/node/php-version into the users homefolder
	
	file { "/Users/${::luser}/.zshrc":
	    content => template('karol/zshrc.erb'),
	    mode => 640,	    
	    ensure => 'file'	    
  	}	
 }
