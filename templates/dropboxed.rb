meta :dropboxed do
  accepts_list_for :files

  template do
    requires ['dropbox', "#{name.sub(/\.dropboxed$/,'')}.app"]

    helper :app_name do
      name.sub(/\.dropboxed$/,'')
    end

    met? {
      files.all? { |file| file.p.readlink.to_s =~ /\/Dropbox\// }
    }

    meet {
      app_data = "~/Dropbox/Application Data/#{app_name}".p.expand

      shell "killall #{app_name}"
      shell "mkdir -p #{app_data.to_s.inspect}"

      files.each do |file|
        file = file.p.expand
        drop_box_file = app_data / file.basename

        shell "mkdir -p #{file.dirname.to_s.inspect}"

        shell "mv #{file.to_s.inspect} #{drop_box_file.to_s.inspect}" if file.exists? && !file.symlink? && !drop_box_file.exists?
        shell "ln -s #{drop_box_file.to_s.inspect} #{file.to_s.inspect}" unless file.symlink?
      end
    }
  end
end
