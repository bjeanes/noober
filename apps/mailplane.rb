app 'Mailplane.app' do
  version = case host.name
    when :tiger
      'Tiger' 
    when :leopard
      ''
    when :snow_leopard
      'SL'
  end
  
  source %Q{http://mailplaneapp.com/downloads/Mailplane#{version}_1337.dmg}
end