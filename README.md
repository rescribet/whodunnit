# Whodunnit
 A simple authoring tool to keep track of changes to a model.

## Usage
Install the migration adding the 'Edits' table to your database:
```ruby
    rake whodunnit:install:migrations
```
Then start to keep track of changes:
```ruby
create_edit_entry(item, action = :unknown, custom = nil, by = nil)
```
Where action can be one of the following: `a_unkown`, `a_show`, `a_create`, `a_update`, or `a_destroy`
The gem assumes you have a current_user method which contains the logged in user (a la Devise), this can be overridden by passing the `by` option.

I.e. when an update to an article `@article` has been made:
```ruby
create_edit_entry @article, :a_update
```
Or when you need to save additional data, for say, legal reasons:
```ruby
create_edit_entry @document, :a_update, @document.to_s
```

After creating entries, you can obtain them by a number of helper methods:

- `created_by <object>`, returns the user which initally created the object.
- `last_edit_by <object>`, returns the user which made the last Edit entry on the object.
- `last_edit_at <object>`, returns the timestamp the last Edit entry was created.
- `total_edits_on <object>`, returns the amount of Edit entries on an object.

If the results are empty it will return the translation for `not_found` (`t('not_found')'`)

##Pull requests
Are always welcome :)