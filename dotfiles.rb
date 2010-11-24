dep 'dotfiles' do
  requires 'git', 'curl.managed'
  met? { "~/.config/.git".p.exists? }
  meet {
    shell "mv ~/.config ~/.config.old" if "~/.config".p.exists?
    shell "git clone git@github.com:bjeanes/dot-files.git ~/.config"
    shell "cd ~/.config && rake"
  }
end
