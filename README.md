# pup-ruby

[sheepdoge](https://github.com/mattjmcnaughton/sheepdoge) for managing ruby
installation.

Note, we do not attempt to manage per project ruby dependencies, instead
installing a sufficiently new ruby version and gems which we want to be globally
available.

## Variables

- `gem_to_install`: Gems I want to install.
- `gem_to_uninstall`: Gems I want to uinstall.
- `dotfile`: Dotfile in which to modify $PATH.

## Requirements

If you do not already have ruby installed, you will need either `homebrew` or
`python-apt` installed.
