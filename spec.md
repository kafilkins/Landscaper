# Specifications for the Rails Project

Specs:
- [ ] Use the Ruby on Rails framework.
- [ ] Include at least one has_many, at least one belongs_to, and at least two has_many :through relationships
- [ ] Include a many-to-many relationship implemented with has_many :through associations. The join table must include a user-submittable attribute — that is to say, some attribute other than its foreign keys that can be submitted by the app's user

- [ ] Your models must include reasonable validations for the simple attributes. You don't need to add every possible validation or duplicates, such as presence and a minimum length, but the models should defend against invalid data.

- [ ] You must include at least one class level ActiveRecord scope method. a. Your scope method must be chainable, meaning that you must use ActiveRecord Query methods within it (such as .where and .order) rather than native ruby methods (such as #find_all or #sort).

- [ ] Your application must provide standard user authentication, including signup, login, logout, and passwords.
- [ ] Your authentication system must also allow login from some other service. Facebook, Twitter, Foursquare, Github, etc...

- [ ] You must include and make use of a nested resource with the appropriate RESTful URLs.
    - You must include a nested new route with form that relates to the parent resource.
    - You must include a nested index or show route.
- [ ] Your forms should correctly display validation errors.
    - Your fields should be enclosed within a fields_with_errors class
    - Error messages describing the validation failures must be present within the view.
- [ ] Your application must be, within reason, a DRY (Do-Not-Repeat-Yourself) rails app.
- [ ] Your README.md includes a short description, install instructions, a contributors guide and a link to the license for your code

Confirm
- [ ] You have a large number of small Git commits
- [ ] Your commit messages are meaningful
- [ ] You made the changes in a commit that relate to the commit message
- [ ] You don't include changes in a commit that aren't related to the commit message