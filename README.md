A library of scripts for including in RubyMine external tools.  The reason for this collection is because when running external tools, RubyMine does not load bash profile settings, which then causes issues when gems inside rvm is needed.

# Dependecies

The following libraries are used in various gems

```
gem install brakeman flay flog reek rubocop roodi pronto pronto-brakeman pronto-reek
gem
```

# Usage

```
$ git clone https://github.com/tleish/rubymin_external_tools
```

Then in Rubymine, navigate to
> Settings > Tools > External Tools

Add a new tool with the following paramters:
* Name: You choose (e.g Reek)
* Group: You choose (e.g Static Analysis)
* Open Console (checked)
* Program: `/absolute/path/to/rubymine_external_tools/[script].sh` (e.g. `/Users/me/scripts/rubymine_external_tools/reek.sh`)
* Parameters: `$FilePath$`
* Working directory: `$ProjectFileDir$`
