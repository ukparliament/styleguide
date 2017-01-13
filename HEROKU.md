# Deploying App to Heroku

You need to be in the root of you App.

## Create App
```bash
$ heroku create {{AppName}} --region eu
```


## Initiate existing directory

```bash
$ heroku git:remote -a {{AppName}}
```


## Add Buildpacks

Add Heroku Buildpacks that our application requires, in this instance it is Node and Ruby.

Node is added first to make sure our dependencies are loaded before the Rails app is built.

```bash
$ heroku buildpacks:set heroku/nodejs
```

```bash
$ heroku buildpacks:add heroku/ruby --index 2
```

If adding Buildpacks to an existing app, be sure to clear previous build apps first.

```bash
$ heroku buildpacks:clear
```

## Build and test our rails app locally

Build app locally and test, if successful, proceed with by following the section **Add heroku plugin**

Initial install:
```bash
$ make setup
```

To serve:
```bash
$ rails s
```

## Add heroku plugin

We are going to install the [Heroku Builds](https://github.com/heroku/heroku-builds) plugin to build our app.

```bash
$ heroku plugins:install heroku-builds
```

Create a build from our local directory.

```bash
$ heroku builds:create
```
