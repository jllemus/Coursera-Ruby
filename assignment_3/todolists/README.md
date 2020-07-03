# Assignment for Module #1: Basic Active Record CRUD

The overall goal of this assignment is to assess your ability to implement basic CRUD functionality of Active Record. This includes:

1. Creating Active Record Models using a rails-provided generator (rails g model or rails g scaffold)
2. Creating a DataBase (DB) schema
3. Inserting rows in the DB
4. Updating rows in the DB
5. Querying the DB with exact matching
6. Getting rows from the DB by Primary Key (PK)
7. Deleting rows from the DB
8. Retrieving paginated results from the DB using limit and offset keywords

This does NOT include:
Seeding with seeds.rb
1. Relationships
2. Validations
3. Advanced queries

## Functional requirements

1. Create several Active Record Model classes: User, Profile, TodoList, TodoItem
2. Create a DB Schema for each Model class
3. Demonstrate CRUD access to information in the DB using Active Record Model methods.

#### Getting started

1. Create a new Rails application called todolists.
2. Add the following specification to your Gemfile to enable rspec testing.

```
group :test do
gem 'rspec-rails', '~> 3.0'
end
```

3. Run the bundle command to resolve new gems
4. From the todolists application root directory, initialize the rspec tests using rails generate rspec:install command.


```
[todolists]$ rails generate rspec:install
create .rspec
create spec
create spec/spec_helper.rb
create spec/rails_helper.rb
```
Add the following line to .rspec to add verbose output to test results.

```
--format documentation
```

5. Download and extract the starter set of boostrap files.
```
|-- Gemfile
|-- assignment
| `-- assignment.rb
`-- spec
`-- assignment_spec.rb
```

-overwrite your existing Gemfile with the Gemfile from the bootstrap fileset. They should be nearly identical, but this is done to make sure the gems and versions you use in your solution can be processed by the automated Grader when you submit. Any submission should be tested with this version of the file.

-add the assignment/assignment.rb file provided with the boostrap fileset to a corresponding assignment directory under your application root directory (e.g., application-root-directory/assignment/assignment.rb). (Note: You will need to create the assignment directory if you are copying the file.) The assignment.rb file contains a skeleton of methods for you to implement as part of your assignment.

-add the spec/assignment_spec.rb file provided with the bootstrap fileset to the corresponding spec directory that already exists under your application root directory (e.g., application-root- directory/spec/assignment_spec.rb). This assignment_spec.rb file contains tests that will help determine whether you have completed the assignment.

6. Run the rspec test(s) to receive feedback. rspec must be run from the root directory of your application. All tests will (obviously) fail until you complete the specified solution.

```
$ rspec
...
Finished in 0.02069 seconds (files took 1.63 seconds to load)
52 examples, 1 failure, 50 pending
```
To focus test feedback on a specific step of the requirements, add "-e rq##" to the rspec command line to only
evaluate that requirement. Pad all step numbers to two digits.
```

$ rspec -e rq01
Run options: include {:full_description=>/rq01/}
Assignment
rq01
Generate Rails application
must have top level structure of a rails application
Finished in 0.00465 seconds (files took 1.56 seconds to load)
1 example, 0 failures

```
7. Implement your Model and assignment.rb solution and use the rspec tests to help verify your completed solution.
8. Submit your Rails app solution for grading.

## Technical Requirements

Can be found in assignment/assignment.rb file. Each implemented method has the individual technical requirement. Also this can be checked in this link :

[https://drive.google.com/file/d/0Bwvt4e6DQqn4dGRBdWU3ZkxLeEU/view]
