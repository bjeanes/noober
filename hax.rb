dep 'hax' do
  requires 'simbl_bundles'#, 'TextMate.app.plist', 'Terminal.app.plist'
end

dep 'simbl_bundles' do
  requires %w(Blurminal Visor).map {|bundle| "#{bundle}.bundle"}
end

simbl_bundle 'Blurminal.bundle' do
  source 'http://github.com/timmfin/Blurminal/raw/master/Blurminal-SL-64bit.bundle.zip'
end

simbl_bundle 'Visor.bundle' do
  source 'http://cloud.github.com/downloads/darwin/visor/Visor-2.2-84d1873.zip'
end

plist 'TextMate.app.plist' do
  # Escaping is fucking my head over...
  # setting :OakFolderReferenceFilePattern, '!(/\\.(?!htaccess)[^/]*|\\.(tmproj|o|pyc|out)|(webrat|capybara)-.*\\.html$|/Icon\\r|fish(d\\..+|_(read_)?history)|/svn-commit(\\.[2-9])?\\.tmp)$'
  # setting :OakFolderReferenceFolderPattern, '!.*/(\\.[^/]*|CVS|log|output|pkg|db/data|vendor|tmp|_darcs|_MTN|\\{arch\\\}|blib|.*~\\.nib|.*\\.(framework|app|pbproj|pbxproj|xcode(proj)?|bundle))$'
  
  setting "NSUserKeyEquivalents", { "Next File Tab" => "@$]", "Previous File Tab" => "@$[" }
end

# For Terminal.app.plist
dep 'Terminal.app' do
  met? { true }
end

plist 'Terminal.app.plist' do
  requires 'Blurminal.bundle'
  setting "Blurminal Radius", 1.1
end