# sfdc-merge-pps

Profile and Permission Set merger

## Getting Started

Works in Unix like system.
Windows is not tested.

### Installing

```
npm install -g sfdc-merge-pps
```

or

```
yarn globally add sfdc-merge-pps
```

## Usage

### Command Line

```
$ smpps -h

  Usage: smpps [options]

  Merge profile and permission set

  Options:

    -h, --help                   output usage information
    -V, --version                output the version number
    -p, --pps                    path to the profile or permission set
    -o, --output                 path where to output the merged package.xml
```

### Module

```
  var smp = require('sfdc-merge-pps');

  smp({
    'pps':'./src/profile/Admin.profile' // path to the profile or permission set
  })
  .then(// my treatment
  );
```


## Built With

* [commander](https://github.com/tj/commander.js/) - The complete solution for node.js command-line interfaces, inspired by Ruby's commander.
* [xml2js](https://github.com/Leonidas-from-XIV/node-xml2js) - XML to JavaScript object converter.
* [xmlbuilder](https://github.com/oozcitak/xmlbuilder-js) - An XML builder for node.js

## Versioning

[SemVer](http://semver.org/) is used for versioning.

## Authors

* **Sebastien Colladon** - *Initial work* - [scolladon](https://github.com/scolladon)

## License

This project is licensed under the MIT License - see the [LICENSE.md](LICENSE.md) file for details
