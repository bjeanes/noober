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
      path.exists? or path.to_s.gsub(/^~/,'').p.exists?
    }
  
    before { shell "mkdir -p \"#{path.parent}\"" }
    meet {
      process_sources {|archive|
        Dir.glob("*.bundle").map {|entry|
          log_shell "Installing #{entry}",
                    %Q{mv -v #{entry} "#{path}"}
        }
      }
    }
  }
end