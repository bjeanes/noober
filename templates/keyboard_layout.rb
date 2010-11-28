meta :keyboard_layout do
  accepts_list_for :source

  template do
    helper(:path) { "/Library/Keyboard Layouts/#{name}.bundle" }

    met? { path.p.exists? }

    before { setup_source_uris }

    meet {
      process_sources do |archive|
        # TODO: add .keylayout
        Dir["*.bundle"].each do |layout|
          log_shell "Installing #{layout}",
            %Q|mv -v #{layout.inspect} #{path.inspect}|
        end
      end
    }
  end
end
