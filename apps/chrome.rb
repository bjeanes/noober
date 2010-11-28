dep 'chrome' do
  requires 'Google Chrome.app', 'Google Chrome.dropboxed'
end

dep 'Google Chrome.app' do
  source 'http://dl.google.com/chrome/mac/stable/GGRO/googlechrome.dmg'
end

dep 'Google Chrome.dropboxed' do
  files %w[
    ~/Library/Application\ Support/Google/Chrome/Default/Extensions
    ~/Library/Application\ Support/Google/Chrome/Default/Extension\ Cookies
    ~/Library/Application\ Support/Google/Chrome/Default/Bookmarks
    ~/Library/Application\ Support/Google/Chrome/Default/History
    ~/Library/Application\ Support/Google/Chrome/Default/Preferences
    ~/Library/Preferences/com.google.Chrome.plist
    ~/Library/Preferences/com.google.Chrome.helper.plist
  ]
end
