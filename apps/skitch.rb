dep 'Skitch.app' do
  requires 'skitch data in dropbox'

  source "http://get.skitch.com/skitch-beta.dmg"
end

dep 'skitch data in dropbox' do
  requires 'Dropbox.app'

  files = %w[
    ~/Library/Application\ Support/plasq
    ~/Library/Preferences/com.plasq.skitch.plist
    ~/Library/Preferences/com.plasq.skitch.history
    ~/Pictures/Skitch
  ]

  met? {
    files.all? { |file| file.p.readlink.to_s =~ /\/Dropbox\// }
  }

  meet {
    app_data = "~/Dropbox/Application Data/Skitch".p.expand

    shell 'killall Skitch'
    shell "mkdir -p #{app_data.to_s.inspect}"

    files.each do |file|
      file = file.p.expand
      shell "mv -n #{file.to_s.inspect} #{app_data.to_s.inspect}" if file.exists? && !file.symlink?
      shell "ln -s #{(app_data / file.basename).to_s.inspect} #{file.to_s.inspect}" unless file.symlink?
    end
  }
end
