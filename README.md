# ruby-rails-Starcraft Command Center

This is a Ruby app using the [Rails](http://rubyonrails.org) framework.

## Description

This app generates a simple player dashboard inspired by the popular science fiction video game from Blizzard Entertainment, Starcraft.
A player creates a profile consisting of an Account Name and Password which grants them access to their dynamic player dashboard.

Once logged in, a player can generate heroes assigned to a name and one of three factions (Terran / Protoss / Zerg).
A player's heroes will populate their dashboard upon creation and can be viewed for a description of their faction.
A player can also create planets for faction colonization and control.

Lastly, a friend search allows players to search for other account names in the applications database. This allows you to see other players heroes from an uneditable view of their dashboard.

## Installation Guide

Make sure you have [Ruby](https://www.ruby-lang.org) and [Bundler](http://bundler.io) installed.

```
git clone git@github.com:darrendc/Starcraft.git # or clone your own fork
cd Starcraft
```
Run bundler to install gems, migrate the database and seed data:
```
bundle install
rake db:migrate
rake db:seed
```

Start a rails server from the applications's root directory:

```
rails server
```

You will run the application on your web browser at [localhost:3000](http://localhost:3000/).

Thanks for checking this out!
