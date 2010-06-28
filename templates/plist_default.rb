# http://github.com/xaviershay/babushka-deps/blob/master/terminal.rb
meta :plist_default, :for => :osx do
  accepts_list_for :domain
  accepts_list_for :key
  accepts_list_for :value

  template do
    met? { shell(%Q{defaults read  #{domain[0]} "#{key[0]}"}) == value[0].to_s }
    meet { shell(%Q{defaults write #{domain[0]} "#{key[0]}" "#{value[0]}"}) }
  end
end