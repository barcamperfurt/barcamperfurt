# barcamp erfurt

The website for the barcamp erfurt. It is developed with [Wintersmith](http://wintersmith.io).

## Requirements

nodejs, git, bower

## Set up

Clone the repo, install wintersmith and the npm modules.

```bash
npm install
bower install
(sudo) npm install -g wintersmith
```

## Develop

Start the preview server:

```bash
wintersmith preview
```

## Build

To build the static site run:

```bash
wintersmith build
```

## Deploy

To build and deploy (aka put it to https://github.com/barcamperfurt/barcamperfurt.github.io) run:

```bash
make deploy
```

## Release

Login to barcamp-erfurt.de

```bash
cd /var/www/html/
git fetch
git reset --hard origin/master
```
