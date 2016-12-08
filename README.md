# Styleguide

Style guide for UK Parliament

## Dependencies

* Ruby 2.3.1
* Rails 5.0.0.1
* Nodejs

## Installation

Initial install:
```bash
$ make setup
```

To serve:
```bash
$ rails s
```

## Development ENV.

Live reloading and synchronization with Browser-Sync, start your rails app with the above command then run the command below in another terminal instance:

```bash
$ make browsersync -C pugin
```

To watch file for changes and recompile in real-time, run:
```bash
$ make watch -C pugin
```

By default this watch for `app/assets` and `app/views`. You can also add more files to watch or change the host or port.

## Licence
This microservice is available under the [Open Parliament Licence](http://www.parliament.uk/site-information/copyright/open-parliament-licence/).
