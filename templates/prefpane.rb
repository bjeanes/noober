meta :prefpane, :for => :osx do
  accepts_list_for :source
  accepts_list_for :extra_source
  
  template {
    prepare { setup_source_uris }
    
    helper :path do
      "/Library/PreferencePanes" / name
    end
    
    met? {
      # TODO use `system_profiler` to check that the prefpane is properly installed
      path.exists? or ("~" / path).exists?
    }
  
    before { shell "mkdir -p \"#{path.parent}\"" }
    meet {
      process_sources {|archive|
        Dir.glob("*.prefPane").map {|entry|
          log_shell "Installing #{entry}",
                    %Q{mv -v #{entry} "#{path}"}
        }
      }
    }
  }
end