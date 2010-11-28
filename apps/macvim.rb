dep 'MacVim.app' do
  source 'http://github.com/downloads/b4winckler/macvim/MacVim-7_3-53.tbz'
end

dep 'macvim' do
  requires 'MacVim.app', 'macvim janus', 'macvim janus update'
end

dep 'macvim janus' do
  requires dep('ctags.managed'), dep('ack.managed')

  met? { "~/.vim/.git".p.exists? }
  meet { shell "git clone git://github.com/carlhuda/janus.git ~/.vim" }
end

dep 'macvim janus update', :template => "task" do
  requires 'macvim janus'
  run { in_dir("~/.vim".p) { shell "rake" } }
end
