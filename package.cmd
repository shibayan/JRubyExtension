@echo off

mkdir .\build

.\bin\nuget.exe pack .\jruby.nuspec -BasePath .\content -OutputDirectory .\build