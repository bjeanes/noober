# http://github.com/xaviershay/babushka-deps/blob/master/fonts.rb
meta :font do
  accepts_list_for :source

  template do
    helper(:name) { File.basename(src.name.to_s) }
    helper(:src)  { source.first }
    helper(:dest) { "~/Library/Fonts/#{name}".p.expand_path }
    met? { File.exists?(dest) }
    meet { shell "curl #{src} > #{dest}" }
  end
end