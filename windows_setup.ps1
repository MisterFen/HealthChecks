## Windows Setup Ruby

Install chocolatey:

    iex ((new-object net.webclient).DownloadString('https://chocolatey.org/install.ps1'))

Install ruby

    choco install ruby
    
Install ruby devkit
    
    choco install ruby.devkit

Install required gems 

	gem install bundler

### Ruby

After getting into the directory, all you need to do is just installing the gems:

    bundle install

To run your test cases with tags ;

    cucumber  --tags @regression


to run test we need to install firefox/chrome driver - for firefox: download geckodriver-v0.20.1-win64.zip

    https://github.com/mozilla/geckodriver/releases
