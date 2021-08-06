Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))

choco install vscode -y
choco install slack -y
choco install skype -y
choco install tidal -y
choco install 1password -y
choco install nordvpn -y
choco install winrar -y
choco install quicktime -y
choco install gopro-quik -y

choco install discord -y
choco install battle.net -y
choco install steam-client -y
choco install origin -y

choco install icue -y
choco install nzxt -y
choco install powertoys -y
choco install amd-ryzen-chipset -y

Start-Process "https://www.philips-hue.com/nl-nl/explore-hue/propositions/entertainment/sync-with-pc"
Start-Process "https://www.amd.com/en/support"
Start-Process "https://login.norton.com/sso"
