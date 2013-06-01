nikky-ipsum
===========

# Introduction

Travis Evans made the [Nikky Simulator](http://www.ticalc.org/archives/files/fileinfo/450/45051.html) and provided a handy CLI application. This contains the source directory along with a compiled "nikky" binary, and the Sinatra app.

This project is written in Ruby with Sinatra/Thin providing application support.

# Features

It makes 5 random paragraphs; more or less if you ask it to. Caps out at 20.

# Requirements

* Ruby 1.9+
* A webserver

# Getting it Running

1. Download from Github
2. Run `bundle install` to install required gems
3. `thin -C ipsum_dev.yml start` to start in development; `thin -C ipsum_prod.yml` for production

## Notes

* Dev listens on port 5288 by default, production on 5288-5291.
* You likely want to put this behind mod_proxy on an apache server, or the similar functionality for nginx.

# To-Do

* API that understands JSON for 3rd party implementation
* Patch C generator for support of most of the random shunting I'm doing right now. Currently the binary only returns one result every time its called through a Ruby wrapper that is providing it a random string; this is slower than desired and a better alternative would be to have it accept multiple random strings and return them all at once.

# Demonstration

[http://nykida.net/nikky-ipsum](http://nykida.net/nikky-ipsum)
