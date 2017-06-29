# GarageOpener



## Installation

```ruby
gem install bundler
```

And then execute:

    $ bundle
    
## Setup

Two files needs to be edited with your MQTT settings.
`lib/garage_opener.rb` add an account that has write permissions.
`views/index.erb` add an account that has read-only access (this account will run in the browser)

Change the default basic auth usernamne and password in `app.rb`. The defaults are `test/test`

## Usage

```ruby
rackup
```

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

