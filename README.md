# Noober

Setting up a machine for development involves a LOT of dependencies and time

## Ideas

### Done

* Homebrew
* Textmate + Bundles
* Git
* Adium
* Skitch
* MacPorts
* Skype
* Chrome
* Firefox
* Sequel Pro
* Mailplane
* GitX
* Dropbox
* Things
* MacVIM
* RVM
* Lots of brews

### Started

* Growl
* Developer Tools + iPhone SDK/XCode
* MockSMTP (not unpacking the zip)

### Future
* RVM + standard rubies + gems
* MacVIM plugins
* Passenger
* MySQL / Postgres
* Firefox extensions (firebug esp)
* Chrome extensions
* ZSH
* Set up iChat to have Bonjour (always on)
* Colemak / QWERTY / Dvorak / Backspace on capslock hack
* latest MacRuby
* Bind / DNSMasq
* LaunchBar
* Setup dot-files
* Fluid
* http://github.com/xvzf/vcprompt
* SizeUp
* TextMate ProjectPlus plugin
* Teleport
* Telefrag + AppleScript hack to inject
* PrefPanes
  * Perian
  * Passenger
  * MySQL
* DTerm (http://www.decimus.net/dterm.php)
* Customised Terminal profiles (http://github.com/xaviershay/babushka-deps/blob/master/terminal.rb)
  * Visor (http://cloud.github.com/downloads/darwin/visor/Visor-2.2-84d1873.zip)
  * Blurminal (http://github.com/timmfin/Blurminal/raw/master/Blurminal-SL-64bit.bundle.zip)
    * `defaults write com.apple.Terminal ‘Blurminal Radius’ -float 1.0`
  * ANSI colours (http://github.com/timmfin/terminalcolours/raw/master/TerminalColours-SL-64bit.zip)
  * terminal keyboard shortcuts: (http://bjeanes.com/2010/06/26/option-keyboard-shortcuts-for-terminal-and-iterm)
* PlugSuit (http://www.macupdate.com/download.php/26068/download)
* Common fonts
* PeepOpen
* Permissions for /Library/{Perl,Ruby,Python} corrected as per `homebrew` wiki page

## Misc/Hacks/Preferences to set

* `sudo ln -s /System/Library/PrivateFrameworks/Apple80211.framework/Versions/Current/Resources/airport /usr/sbin/airport`
* turn universal access on (for applescripting interfaces, etc)
* Set up file/folder reference patterns in TextMate
* Set default file type of Textmate to ruby: `defaults write com.macromates.textmate OakDefaultLanguage E00B62AC-6B1C-11D9-9B1F-000D93589AF6`

## Notes

* Use Sparkle RSS locations to get the latest version of each app for download so versions don't need to be maintained
* Standard way to apply licenses to everything?
* use `system_profiler SPApplicationsDataType` to get a list of all installed applications

## Babushka TODO

* Make tmbundles UPDATE to latest (regardless if a version exists or not)
* Make process_sources be smarter regarding git (so a .zip or a git:// url can be provided)
* Use system_profiler to check if .apps get properly installed
