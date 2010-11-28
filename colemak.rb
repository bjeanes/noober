dep 'colemak', :template => 'keyboard_layout' do
  requires 'caps lock remapped to backspace'
  source "http://github.com/downloads/bjeanes/colemak/ColemakKeyboardLayouts.bundle.zip"
end

dep 'caps lock remapped to backspace' do
  requires 'PCKeyboardHack.installer', 'osx hidden binaries'

  met? { false } # Not sure the best way to check that this is working
  meet {
    # This sets the right preference but I think we need to restart PCKeyboardHack?
    shell 'PlistBuddy -c "Add :sysctl:enable_capslock integer 1" ~/Library/Preferences/org.pqrs.PCKeyboardHack.plist'
  }
end

dep 'PCKeyboardHack.installer' do
  source 'http://pqrs.org/macosx/keyremap4macbook/files/PCKeyboardHack-6.3.0.pkg.zip'

  met? { "/Library/PreferencePanes/PCKeyboardHack.prefPane".p.exists? }
end
