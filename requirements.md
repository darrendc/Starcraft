# Specifications for the Rails Assessment

Add notes below each checkbox with how your application has met the requirement

Requirements:
- [x] Uses Ruby on Rails
    -ruby "2.5.1"
    -gem "rails", "~> 5.2.3"
- [x] Includes at least one has_many relationship (e.g. User has_many Recipes)
    -Faction has_many Planets,
    -Player has_many Characters
    -Faction has_many Characters
- [x] Includes at least one belongs_to relationship (e.g. Post belongs_to User)
    -Planet belongs_to Faction
    -Character belongs_to Player
    -Character belongs_to Faction
- [x] Includes at least one has_many through relationship (e.g. Recipe has_many Items through Ingredients)
    -Player has_many Factions, through: Characters
    -Faction has_many Players, through: Characters
- [x] The "through" part of the has_many through includes at least one user submittable attribute (e.g. ingredient#quantity)
    -characters#name: A player can create a character by submitting a name and selecting a faction from a dropdown menu(character#faction_id)
- [x] Includes reasonable validations for simple model objects
    -character, faction, planet, player models
- [x] Includes a class level ActiveRecord scope method
    -player#search: Player can search database for a Player's names and view their show page if the name exists
- [x] Includes signup (e.g. Devise)
    -gem "bcrypt", "~> 3.1.7". players_controller#create. Player model has_secure_password
- [x] Includes login (e.g. Devise)
    -gem "bcrypt", "~> 3.1.7". sessions_controller#create.
- [x] Includes logout (e.g. Devise)
    -sessions_controller#destroy: session.delete :player_id and redirect to root page.
- [x] Includes nested resource show or index (e.g. users/2/recipes)
    -URL: factions/5/planets/14 Planets show page. Planet is under faction control. (factions/faction_id/planets/planet id
- [x] Includes nested resource "new" form (recipes/1/ingredients/new)
    -URL: factions/5/planets/new Planets new page. Create new planet.
- [ ] Includes form display of validation errors
- [ ] Includes Unit tests for at least 2 of your models
- [ ] Conforms to Nitro Ruby linting rules (running `rubocop` returns 0 offenses)
- [x] Includes a `README.md` with an application description and installation guide

Confirm:
- [ ] The application is pretty DRY
- [ ] Limited logic in controllers
- [ ] Views use helper methods if appropriate
- [ ] Views use partials if appropriate

If you've added any additional functionality to your application that you'd like to demonstrate, please describe it below:
