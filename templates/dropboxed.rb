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
      app_data = "~/Dropbox/Application Data/#{app_name}/".p.expand
      cmd_app_data = app_data.to_s.inspect

      shell "killall #{app_name}"
      shell "mkdir -p #{cmd_app_data}"

      files.each do |file|
        file = file.p.expand
        p "mv -n #{file.to_s.inspect} #{cmd_app_data}"
        p "ln -s #{(app_data / file.basename).to_s.inspect} #{file.to_s.inspect}"
        abort
        shell "mv -n #{file.to_s.inspect} #{cmd_app_data}" if file.exists? && !file.symlink?
        shell "ln -s #{(app_data / file.basename).to_s.inspect} #{file.to_s.inspect}" unless file.symlink?
      end
    }
  end
end
