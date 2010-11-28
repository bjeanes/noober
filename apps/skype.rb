dep 'skype' do
  requires 'Skype.app', 'Skype.dropboxed'
end

dep 'Skype.app' do
  source 'http://www.skype.com/go/getskype-macosx.dmg'
end

dep 'Skype.dropboxed' do
  files %w[
    ~/Library/Preferences/com.skype.skype.plist
    ~/Library/Application\ Support/Skype/bojeanes
  ]
end
