# Net Core Analysis with Sonarscanner

Netcore 6 install on ubuntu
``` bash
# dowland
wget https://packages.microsoft.com/config/ubuntu/20.04/packages-microsoft-prod.deb -O packages-microsoft-prod.deb

# install
sudo dpkg -i packages-microsoft-prod.deb
sudo apt-get update 
sudo apt-get install -y apt-transport-https
sudo apt-get update    
sudo apt-get install -y dotnet-sdk-6.0

# Checking
sudo dotnet --version
sudo dotnet --list-sdks

```

Create project for net-core
``` bash
# helping
dotnet --help

# create
dotnet new webapi --name NetCoreExample

# go to into project
cd NetCoreExample

# build
dotnet build

# restore
dotnet restore

# run
dotnet run

```

Main branch analysis with sonar scanner on net core
``` bash
# install sonar-scanner for net
dotnet tool install --global dotnet-sonarscanner

# begin
dotnet sonarscanner begin /k:"test" /d:sonar.host.url="http://192.168.1.40:9000"  /d:sonar.login="sqp_3ca24132482e425b329ba08681ad5ca518ba2721"

# build
dotnet build

# end
dotnet sonarscanner end /d:sonar.login="sqp_3ca24132482e425b329ba08681ad5ca518ba2721"

```