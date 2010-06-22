installer 'iphone sdk' do
  define_var :source,
    :message => "Where is the iPhone SDK DMG located? (It can be downloaded from http://developer.apple.com/iphone/)"

  provides 'xcode tools'
  source var(:source)
end