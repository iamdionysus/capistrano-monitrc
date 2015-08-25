# Capistrano::Monitrc

## Installation

```ruby
gem 'capistrano-monitrc'
```

And then execute:

    $ bundle

Require in `Capfile` to use the tasks.

## Tasks

Download `/etc/monitrc` file to local folder as #{hostname}.monitrc file name

    $ cap production monitrc:download

Upload local hostname.monitrc file to `/etc/monitrc`

    $ cap production monitrc:deploy
    
