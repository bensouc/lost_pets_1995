# REVISION
| Verb HTTP | Controller action | ActiveRecord method |
| --------- | ------------- | -------------|
|GET|index|all|
|GET|show|find(id)|
|GET|new|new|
|POST|create|new(atributs) / save|
|GET|edit|find(id)|
|PATCH|update|update(attributs)|
|DELETE|delete|destroy|

**CRUD REST PATTERN**
|CRUD| HTTP Verb|
|-|-|
|Create|POST|
|Read|GET|
|Update|PATCH/PUT|
|Delete|DELETE|

# MISSION
Realiser une app pour enregistrer les animaux trouvés dans la rue et  <em>comme avec GIT où, quoi, quand</em>.

Les <strong>Features</strong>:
- As a user I can see all found pets
- As a user I can see details about - one found pet (when and where it - was found)
- As a user I can add a pet I found
- As a user I can update a pet
- As a user I can delete a pet
## MODEL
### Data
- location String
- found_on Date
- species String
- name String
### Validations
  - limitation aux species %w(dog cat rabbit snake turtle)
  - name obligatoire
### Behaviours
- retourner le nb de jours depuis leurs découverte

# Simple Form
add `gem "simple_form` to Gemfile

Puis
```
bundle install
rails generate simple_form:install --bootstrap
```
