dep 'iphone tools', :template => "installer" do
  met? {
    dev_tools = shell('system_profiler SPDeveloperToolsDataType')

    which 'gcc' and
    which 'g++' and
    which 'autoconf' and
    which 'make' and
    which 'ld' and
    dev_tools.grep(/Mac OS X:/) and
    dev_tools.grep(/iPhone OS:/) and
    dev_tools.grep(/iPhone Simulator:/)
  }

  define_var :source,
    :message => "Where is the iPhone SDK DMG located? (It can be downloaded from http://developer.apple.com/iphone/)"
  source(lambda { var(:source) })
end
