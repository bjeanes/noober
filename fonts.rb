dep 'fonts' do
  requires 'inconsolata.font'
end

dep 'inconsolata.font' do
  source 'http://www.levien.com/type/myfonts/Inconsolata.otf'
end

# TODO: make the font template proccess archives to find fonts
dep 'bitstream vera.font' do
  source 'http://ftp.gnome.org/pub/GNOME/sources/ttf-bitstream-vera/1.10/ttf-bitstream-vera-1.10.tar.bz2'
end
