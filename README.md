apm-repo
========
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
- `files` - array of directories/files to install
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
  "files": ["libTwo", "libOne"],
  "dependencies": {
    "awesome": "*"
  }
}
```

##How to contribute
1. Fork.
2. Make changes.
3. Check packages with [JSONLint](http://jsonlint.com/).
4. Generate new `packages.json` with [apm-repo-gen](https://github.com/neonowy/apm-repo-gen).
4. Pull request.

You can add issues with tag `missing package` to suggest new packages in repository.
