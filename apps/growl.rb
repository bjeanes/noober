installer 'Growl.app' do
  source 'http://growl.cachefly.net/Growl-1.2.dmg'
  met? { 
    File.exists?('/Library/PreferencePanes/Growl.prefPane') or
      File.exists?('~/Library/PreferencePanes/Growl.prefPane')
  }
end