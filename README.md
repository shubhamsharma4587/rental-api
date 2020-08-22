##### Prerequisites

The setups steps expect following tools installed on the system.

- Github
- Ruby [2.4.9](https://github.com/organization/project-name/blob/master/.ruby-version#L1)
- Rails [5.2.4](https://github.com/organization/project-name/blob/master/Gemfile#L12)

##### 1. Check out the repository

```bash
git clone https://github.com/shubhamsharma4587/rental-api.git
```

##### 2. Create database.yml file

Edit the database configuration as required such as database username, password

```bash
cp config/database.yml config/database.yml
```

##### 3. Create and setup the database

Run the following commands to create and setup the database.

```ruby
rails db:create
rails db:migrate 
```

##### 4. Remove Gemfile.lock if present and install bundle

```ruby
rm Gemfile.lock
bundle install
```

##### 5. Start the Rails server

You can start the rails server using the command given below.

```ruby
rails s -p 4000
```

And now you can visit the site with the URL http://localhost:4000