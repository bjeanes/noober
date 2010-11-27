dep 'Adium.app' do
  source "http://download.adium.im/Adium_1.4.1.dmg"
end

dep 'adium' do
  requires 'Adium.app', 'Adium.dropboxed'
end

dep 'Adium.dropboxed' do
  files %w[
    ~/Library/Preferences/com.adiumX.adiumX.plist
    ~/Library/Application\ Support/Adium\ 2.0/Users/Default
  ]
end
