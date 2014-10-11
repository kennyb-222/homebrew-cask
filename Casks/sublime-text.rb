class SublimeText < Cask
  version '2.0.2'
  sha256 '906e71e19ae5321f80e7cf42eab8355146d8f2c3fd55be1f7fe5c62c57165add'

  url "http://c758482.r82.cf2.rackcdn.com/Sublime%20Text%20#{version}.dmg"
  appcast 'http://www.sublimetext.com/updates/2/stable/appcast_osx.xml'
  homepage 'http://www.sublimetext.com/2'
  license :unknown

  app 'Sublime Text 2.app'
  binary 'Sublime Text 2.app/Contents/SharedSupport/bin/subl'

  zap :delete => [
                  '~/Library/Application Support/Sublime Text 2/Installed Packages',
                  '~/Library/Application Support/Sublime Text 2/Packages',
                  '~/Library/Application Support/Sublime Text 2/Pristine Packages',
                 ],
      :rmdir  => '~/Library/Application Support/Sublime Text 2'

  caveats do
    files_in_usr_local
  end
end
