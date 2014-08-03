apm-repo
========

Official repository for apm.


##Files:
- `packages.json` - list of all packages in repository
- `package-name.json` - info about package
- `generate.rb` - generator of 'packages.json'

##Structure of `package-name.json`:
- `name` - name of package (lowercase with dashes)
- `description` - short description of package
- `category` - category of package (lowercase)
- `versions`:
  - `version` - version of package (in this format: `x.x.x`)
  - `url` - link to download this version of package (only `.zip` supported)
- `files` - array of directories/files to install (`*` if all)
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
  "files": ["example-code", "example/code"],
  "dependencies": {
    "awesome": "*"
  }
}
```
