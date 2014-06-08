# My pass

A password manager for browsers, using [OpenPGP.js](http://openpgpjs.org/).

This project is still on early development.
You can fork to contibute.

## Goals and Features

* Create an Open Source and Secure password generator and manager for web browsers
* Generate strong password based on domain names
* Automatically fill login forms
* Store (encrypted) keyring using HTML5 Local Storage
* Encrypt keyring using your personal OpenPGP keys
* Create browser extensions (on separate projects)
* Create Mobile Apps

## Contributing

Write CoffeScript sources and tests and validate it using coffeelint with [this coffeeling.json](coffeelint.json).
Javascript files on `public/` folder are not versioned.

Submit pull-requests only with coffeelint and tests passing.

All source code and comments must be in english (including git commits).

### Cloning the repo and start developing

You must have [Node.js](http://nodejs.org), [npm](http://npmjs.org), [Grunt cli](http://gruntjs.com) and [Bower](http://bower.io) installed.

    # clone the repo and cd into it
    git clone https://github.com/paulodiovani/open-my-pass.git my-pass
    cd my-pass

    # install Node and Grunt dependencies
    npm install

    # install bower dependencies
    bower install

    # run grunt tasks (including tests) 
    grunt

## Licence

This project uses a [GPLv2](LICENSE).

In resume, it means that, if you want use this project sources for another product you must also use a GPLv2 licence on your product.

A commercial licence is planned for the future.

## TODO

* Write some code that actually works
* Mocha tests for browser scripts using [Grunt mocha](https://github.com/kmiyashiro/grunt-mocha) and [Phantom.js](http://phantomjs.org/)