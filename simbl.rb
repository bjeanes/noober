installer 'SIMBL' do
  source 'http://www.culater.net/dl/files/SIMBL-0.9.7a.zip'
  met? {
    "/private/var/db/receipts/net.culater.simbl.SIMBL.pkg.plist".p.exists?
  }
end