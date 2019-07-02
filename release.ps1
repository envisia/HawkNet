param([string] $ApiKey, [string] $Version)
dotnet pack -c Release /p:Version=$Version
dotnet nuget push -k $ApiKey -s https://api.nuget.org/v3/index.json ./Envisia.Hawk/bin/Release/Envisia.Hawk.$Version.nupkg
