# Specifications for the Rails with jQuery Assessment

Specs:
- [x] Uses jQuery for implementing new requirements

- [x] Includes a index/list resource rendered using jQuery and JSON backend.
    * from factions show page, render all its planets (for that faction)

- [x] Includes an show/item resource rendered using jQuery and JSON backend.
    * from players search page, render the searched player (with their characters and corresponding faction)

- [x] Includes at least one has_many relationship in information rendered via JSON and appended to the DOM.
    * from factions show page, render all planets (Faction has_many planets)
    * from player show page, render all characters (Player has_many characters)

- [x] Uses your Rails API and a form to create a resource and render the response without a page refresh.
   * from players show page, appends a new character (with name and faction) to a players character collection

- [x] Translates JSON responses into js model objects.

- [x] A js model object has at least one function added to the prototype.
    * JS Player (name, characters) and Character (player, name, faction) models

- [x] Contains at least 4 model specs, 2 request specs and one system test that reasonably tests your public api.
    * Model specs:
        character
        faction
        planet
        player
      Request specs:
        character_management
        planet_management
      System test:
        character_system

Confirm
- [x] You have a large number of small Git commits
- [x] Your commit messages are meaningful
- [x] You made the changes in a commit that relate to the commit message
- [x] You don't include changes in a commit that aren't related to the commit message
- [x] Makes use of ES6 features as much as possible (e.g Arrow functions, Let & Const, Class, constructor functions)
- [x] Application is pretty DRY.
