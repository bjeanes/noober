dep 'Adium.app' do
  source "http://adiumx.cachefly.net/Adium_1.3.10.dmg"
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
