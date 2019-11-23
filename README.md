# pup-ruby-gem

[sheepdoge](https://github.com/mattjmcnaughton/sheepdoge) for managing ruby
gems.

Note, we do not attempt to manage per project ruby dependencies, as we presume
actual ruby projects will use bundle.

## Variables

- `gem_to_install`: Gems I want to install.
- `gem_to_uninstall`: Gems I want to uinstall.
- `dotfile`: Dotfile in which to modify $PATH.

## Requirements

If you do not already have ruby installed, you will need either `homebrew` or
`python-apt` installed if you are on Mac or Debian respectively.
