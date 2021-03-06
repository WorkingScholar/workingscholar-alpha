# WorkingScholar
[![Stories in Ready](https://badge.waffle.io/WorkingScholar/workingscholar.svg?label=ready&title=Ready)](http://waffle.io/WorkingScholar/workingscholar)
[![Build Status](https://travis-ci.org/WorkingScholar/workingscholar-alpha.svg)](https://travis-ci.org/WorkingScholar/workingscholar-alpha)

WorkingScholar is a micro-consulting platform that empowers students to
build their professional experience.

> **WARNING**:

>THE CODE IN THIS PROJECT IS OF ALPHA, PROOF-OF-CONCEPT QUALITY.  THIS PROJECT IS NOT INTENDED FOR PRODUCTION USE.

>ALL RIGHTS REMAIN WITH THEIR HOLDERS.

## Features

- Job board
- Rating system
- Searching

## Requirements

We use [PostgreSQL](http://www.postgresql.org/) as our datastore.

On OS X, install PostgreSQL through [Homebrew](http://brew.sh/):

```sh
brew upgrade && brew update && brew cleanup
brew install postgresql
```

Enable PostgreSQL server auto-start on boot:

```sh
cp /usr/local/Cellar/postgresql/VERSION/homebrew.mxcl.postgresql.plist ~/Library/LaunchAgents/
```

where VERSION is the installed version of PostgreSQL.

Manage PogstreSQL (and other launch agents) with [Lunchy](https://github.com/eddiezane/lunchy):

```sh
gem install lunchy
```

Start the PostgreSQL server:

```sh
lunchy start postgres
```

> **Note**: after a machine reboot, Lunchy is no longer required as the
PostgreSQL server will start automatically thanks to its launch agent in
`~/Library/LaunchAgents`.

Create the necessary databases (usually `development`):

```
createdb WorkingScholar_ENVIRONMENT
```

where ENVIRONMENT is one of `development`, `test`, `production`.

> **Note**: the database name __**is**__ case-sensitive.

### Installation & Setup

Install the application dependencies with:

```sh
bundle install --path vendor
```

### Running the Application

Start the application server with:

```sh
bundle exec rails server
```

Navigate to [http://localhost:3000](http://localhost:3000) and start hacking on the code.

## License

Copyright (c) 2015 WorkingScholar.  All rights reserved.
