# irc log viewer

This is a irc log viewer for tiarra.

[![Dependency Status](https://gemnasium.com/yono/irc_log_viewer.png)](https://gemnasium.com/yono/irc_log_viewer)
[![Code Climate](https://codeclimate.com/github/yono/irc_log_viewer.png)](https://codeclimate.com/github/yono/irc_log_viewer)

## Requirements

- [tiarra](http://www.clovery.jp/tiarra/)
  - [Log::DBI](http://d.hatena.ne.jp/woremacx/20080404/1207260356)
- Ruby 1.9.2

## Usage

Firstly, you need to finish these settings.

- tiarra
- Log::DBI

Download or git clone this repository.

    $ git clone git://github.com/yono/irc_log_viewer.git
    $ cd irc_log_viewer

Install modules with bundle install.

    $ bundle install

Copy config/database.yml.sample to config/database.yml.

    $ cp config/database.yml.sample config/database.yml

Edit config/database.yml.

    $ vim config/database.yml

You need to input database info.

After that, you can start irc_log_viewer with rails s.

    $ rails s
