
::::::::::::::::::::::::::::::::::::::::
:: Setup
:: ----------------

set JRUBY_VERSION=9.0.4.0
set JRUBY_HOME=%HOME%\SiteExtensions\jruby\jruby-%JRUBY_VERSION%
set JRUBY_EXE=%JRUBY_HOME%\bin\jruby.exe
set JRUBY_GEM_CMD=%JRUBY_HOME%\bin\gem
set JRUBY_BUNDLER_CMD=%JRUBY_HOME%\bin\bundle

set JAVA_OPTS=-Djava.net.preferIPv4Stack=true

:: Installing JRuby
curl -LOs https://s3.amazonaws.com/jruby.org/downloads/%JRUBY_VERSION%/jruby-bin-%JRUBY_VERSION%.zip
unzip -q jruby-bin-%JRUBY_VERSION%.zip & rm -f jruby-bin-%JRUBY_VERSION%.zip

:: Installing bundler
IF NOT EXIST %JRUBY_BUNDLER_CMD% (
  %JRUBY_EXE% -S "%JRUBY_GEM_CMD%" install bundler --no-ri --no-rdoc --quiet > nul
)

:: Copy Web.config
cp Web.config %HOME%\site\wwwroot\Web.config