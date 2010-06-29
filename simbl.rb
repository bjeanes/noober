installer 'SIMBL' do
  source 'http://www.culater.net/dl/files/SIMBL-0.9.7a.zip'
  met? {
    # TODO use `launchctl` or `system_profiler` to check the extension is loaded correctly
    "/Library/ScriptingAdditions/SIMBL.osax".p.dir?
  }
end