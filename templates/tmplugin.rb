meta :tmplugin, :for => :osx do
  accepts_list_for :source

  template {
    requires 'TextMate.app'
    
    helper :path do
      '~/Library/Application Support/TextMate/PlugIns' / name
    end
    
    before { shell "mkdir -p \"#{path.parent}\"" }
    
    met? { path.dir? }
    meet {
      process_sources {|archive|
        p archive
        Dir.glob("{./,../}*.tmplugin").map {|entry|
          # log_shell "Installing #{entry}",
          p          %Q{mv -v #{entry} "#{path}"}
        }
      }
    }
  }
end
