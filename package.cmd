@echo off

mkdir .\build

.\tool\nuget.exe pack .\jruby.nuspec -BasePath .\content -OutputDirectory .\build