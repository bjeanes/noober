# FIXME (it's extracting and placing CWD *inside* of the bundle')
meta :simbl_bundle, :for => :osx do
  accepts_list_for :source
  accepts_list_for :extra_source
  
  template {
    requires 'SIMBL'
    prepare { setup_source_uris }
    
    helper :path do
      "~/Library/Application Support/SIMBL/Plugins" / name
    end
    
    met? {
      ("~/Library/Application Support/SIMBL/Plugins" / name).exists? or false
      # ("/Library/Application Support/SIMBL/Plugins" / name).exists?
    }
  
    before { shell "mkdir -p #{path.parent}" }
    meet {
      p "meeting"
      process_sources {|archive|
        p "processing #{archive}"
        `open .`
        Dir.glob("**/#{name}").map {|entry|
          p "finding #{entry}"
          log_shell "Installing #{entry}",
                    "mv -v #{entry} #{path}"
        }
      }
    }
  }
end