dep 'hax' do
end

dep 'simbl_bundles' do
  requires %w(Blurminal Visor).map {|bundle| "#{bundle}.bundle"}
end

dep 'Blurminal.bundle', :template => "simbl_bundle" do
  source 'http://github.com/timmfin/Blurminal/raw/master/Blurminal-SL-64bit.bundle.zip'
end

dep 'Visor.bundle', :template => "simbl_bundle" do
  source 'http://cloud.github.com/downloads/darwin/visor/Visor-2.2-84d1873.zip'
end
