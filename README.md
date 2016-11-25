# Styleguide

Style guide for UK Parliament

## Dependencies

* Ruby 2.3.1
* Rails 5.0.0.1
* Nodejs

## Installation

To install:
```bash
$ make install
```

To serve:
```bash
$ rails s
```

## Development ENV.

Live reloading and synchronization with Browser-Sync, start your rails app with the above command then run the command below in another terminal instance:

```bash
$ make browser-sync
```

By default this watch for `app/assets` and `app/views`. You can also add more files to watch or change the host or port.

It is done in `Makefile`.

## Licence
This microservice is available under the [Open Parliament Licence](http://www.parliament.uk/site-information/copyright/open-parliament-licence/).
