#!/bin/bash

set -e

test::check_syntax() {
  ansible-playbook playbook.yml -i 'localhost' -e '{"gem_to_install": ["rake", "tmuxinator", "spring"], "gem_to_uninstall": ["spring"], "dotfile": "~/.bashrc"}' --syntax-check
}

test::run_ansible() {
  ansible-playbook playbook.yml -i 'localhost' -e '{"gem_to_install": ["rake", "tmuxinator", "spring"], "gem_to_uninstall": ["spring"], "dotfile": "~/.bashrc"}'
}

test::assert_output() {
  for program_file in ruby gem rake tmuxinator; do
    if ! which $program_file >/dev/null; then
      echo "$program_file is not installed"
      exit 1
    fi
  done

  for program_file in spring; do
    if which $program_file >/dev/null; then
      echo "$program_file is installed"
      exit 1
    fi
  done
}

export PATH=$PATH:~/.gem/ruby/2.3.0/bin

test::check_syntax
test::run_ansible
test::assert_output
