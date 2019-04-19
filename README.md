# RailsPages
> Static pages.

## Usage
1. initial config
   ```shell
   ./bin/rails rails_pages:initializer
   ```
2. install pages
   ```shell
   ./bin/rails rails_pages:install
   ```
3. test routes
   ```shell
   rake app:routes
   ```

## Installation
> Add this line to your application's Gemfile:

```ruby
# Gemfile in github:
gem 'rails_pages', git: 'https://github.com/afeiship/rails_pages'

# Debug in local:
gem 'rails_pages', path: '/Users/feizheng/github/rails_pages'
```


## resources
- https://medium.com/@dineshpanda92/how-i-created-engines-from-monolithic-ruby-on-rails-application-698574565698
- https://guides.rubyonrails.org/engines.html