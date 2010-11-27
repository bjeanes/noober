dep 'Skitch.app' do
  source "http://get.skitch.com/skitch-beta.dmg"
end

dep 'Skitch.dropboxed' do
  files %w[
    ~/Library/Application\ Support/plasq
    ~/Library/Preferences/com.plasq.skitch.plist
    ~/Library/Preferences/com.plasq.skitch.history
    ~/Pictures/Skitch
  ]
end

dep 'skitch' do
  requires 'Skitch.app', 'Skitch.dropboxed'
end
