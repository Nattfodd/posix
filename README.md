# posix

A better way of use of Posix-Spawn gem

## Installation

Add this line to your application's Gemfile:

    gem 'posix'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install posix

## Usage

require 'posix'

Posix.exec('echo', '"Hello!"')
