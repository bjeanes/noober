dep 'dropbox' do
  requires 'Dropbox.app', 'dropbox directory exists'
end

dep 'dropbox directory exists' do
  requires 'Dropbox.app'

  met? { "~/Dropbox".p.exists? }
  meet { shell "mkdir -p ~/Dropbox" }
end

dep 'Dropbox.app' do
  source 'http://cdn.dropbox.com/Dropbox%200.7.110.dmg'
end
