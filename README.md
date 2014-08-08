apm-repo
========
[![Build Status](https://travis-ci.org/neonowy/apm-repo.svg?branch=master)](https://travis-ci.org/neonowy/apm-repo)
[![Code Climate](https://codeclimate.com/github/neonowy/apm-repo/badges/gpa.svg)](https://codeclimate.com/github/neonowy/apm-repo)
[![Dependency Status](https://gemnasium.com/neonowy/apm-repo.svg)](https://gemnasium.com/neonowy/apm-repo)

Official repository for apm.


##Files
- `packages.json` - list of all packages in repository
- `package-name.json` - info about package
- `generate.rb` - generator of 'packages.json'

##Structure of `package-name.json`
- `name` - name of package (lowercase with dashes)
- `description` - short description of package
- `category` - category of package (lowercase)
- `versions`:
  - `version` - version of package (in this format: `x.x.x`)
  - `url` - link to download this version of package (only `.zip` supported)
- `files` - array of directories/files to install (`.` if you want to install root directory)
- `dependencies` - other packages that must be installed with package (optional):
  - `dependency-name` - name of package
  - `dependency-version` - version of package that must be installed

Example `package-name.json`:
```JSON
{
  "name": "example-code",
  "description": "Just for example.",
  "category": "examples",
  "homepage": "http://example.com/example",
  "versions": {
  	"2.0.0": "http://download.example.com/example2.0.zip",
  	"1.0.0": "http://download.example.com/example1.0.zip",
  },
  "files": ["./example-code", "./code"],
  "dependencies": {
    "awesome": "*"
  }
}
```

##How to generate `packages.json`
1. Install Ruby 1.9.3+ and DevKit
3. Install Bundler: `gem install bundler`
4. Install dependencies: `bundle install`
5. Run: `ruby generate.rb` in folder with packages (or `ruby generate.rb PATH_TO_PACKAGES`)


##How to contribute
1. Fork.
2. Make changes.
3. Pull request.

You can add issues with tag `missing package` to propose new packages in repository.
