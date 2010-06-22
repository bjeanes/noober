dep

installer 'xcode tools' do
  met? { 
    which 'gcc' and 
    which 'g++' and
    which 'autoconf' and
    which 'make' and
    which 'ld' and
    file_exists? '/Developer/Platforms/iPhoneSimulator.platform/Developer/Applications/iPhone Simulator.app/Contents/MacOS/iPhone Simulator'
  }

  define_var :source,
    :message => "Where is the iPhone SDK DMG located? (It can be downloaded from http://developer.apple.com/iphone/)"
  source(lambda { var(:source) })
end