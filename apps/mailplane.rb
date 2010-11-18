dep 'Mailplane.app' do
  version = case Babushka::Base.host.name
    when :tiger
      'Tiger'
    when :leopard
      ''
    when :snow_leopard
      'SL'
  end

  source %Q{http://mailplaneapp.com/downloads/Mailplane#{version}_1527.dmg}
end
