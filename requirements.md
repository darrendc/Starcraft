# Specifications for the Rails Assessment

Add notes below each checkbox with how your application has met the requirement

Requirements:
- [x] Uses Ruby on Rails
- [x] Includes at least one has_many relationship (e.g. User has_many Recipes)
  - Faction has many planets
- [x] Includes at least one belongs_to relationship (e.g. Post belongs_to User)
  -Planet belongs to a faction
- [x] Includes at least one has_many through relationship (e.g. Recipe has_many Items through Ingredients)
  - A player has many faction through: characters
- [x] The "through" part of the has_many through includes at least one user submittable attribute (e.g. ingredient#quantity)
  -characters#name
- [ ] Includes reasonable validations for simple model objects
- [ ] Includes a class level ActiveRecord scope method
- [x] Includes signup (e.g. Devise)
- [x] Includes login (e.g. Devise)
  -
- [ ] Includes logout (e.g. Devise)
- [ ] Includes nested resource show or index (e.g. users/2/recipes)
- [ ] Includes nested resource "new" form (recipes/1/ingredients/new)
- [ ] Includes form display of validation errors
- [ ] Includes Unit tests for at least 2 of your models
- [ ] Conforms to Nitro Ruby linting rules (running `rubocop` returns 0 offenses)
- [ ] Includes a `README.md` with an application description and installation guide

Confirm:
- [ ] The application is pretty DRY
- [ ] Limited logic in controllers
- [ ] Views use helper methods if appropriate
- [ ] Views use partials if appropriate

If you've added any additional functionality to your application that you'd like to demonstrate, please describe it below:
