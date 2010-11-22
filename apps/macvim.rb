dep 'MacVim.app' do
  source 'http://github.com/downloads/b4winckler/macvim/MacVim-7_3-53.tbz'
end

dep 'macvim' do
  requires 'MacVim.app'
  met? { "~/.vim/.git".p.exists? }
  meet { shell "curl http://github.com/carlhuda/janus/raw/master/bootstrap.sh -o - | sh" }
end