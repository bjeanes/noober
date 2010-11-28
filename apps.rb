dep 'apps' do
  requires 'adium',
           '1Password.app',
           'dropbox',
           'Firefox.app',
           'benhoskings:Fluid.app',
           'GitX.app',
           'chrome',
           'Growl.prefpane',
           'benhoskings:LaunchBar.app',
           'macvim',
           'Mailplane.app',
           'MockSmtp.app',
           'RubyMine.app',
           'Sequel Pro.app',
           'Skitch.app',
           'Skype.app',
           'TextMate.app',
           'Things.app',
           'textmate'
end

dep 'iChat.app' do
  met? { true }
end

dep 'iChat.dropboxed' do
  files %w[
    ~/Documents/iChats
  ]
end
