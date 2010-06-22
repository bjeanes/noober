installer 'iphone sdk' do
  met? { 
    puts "Sup"
    p(which 'gcc', 'g++', 'autoconf', 'make', 'ld')
    p(file_exists? '/Developer/Platforms/iPhoneSimulator.platform/Developer/Applications/iPhone Simulator.app/Contents/MacOS/iPhone Simulator')

    which 'gcc', 'g++', 'autoconf', 'make', 'ld' and
    file_exists? '/Developer/Platforms/iPhoneSimulator.platform/Developer/Applications/iPhone Simulator.app/Contents/MacOS/iPhone Simulator'
  }
  
  define_var :source,
    :message => "Where is the iPhone SDK DMG located? (It can be downloaded from http://developer.apple.com/iphone/)"

  provides 'xcode tools'
  source var(:source)
end