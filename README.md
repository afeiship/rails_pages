# rails_pages
> Static pages.

## installation
> Add this line to your application's Gemfile:

```ruby
# Gemfile in github:
gem 'rails_pages', git: 'https://github.com/afeiship/rails_pages'

# Debug in local:
gem 'rails_pages', path: '/Users/feizheng/github/rails_pages'
```

## generate
```shell
./bin/rails rails_pages:initializer
./bin/rails rails_pages:install
./bin/rails rails_pages:page
```

## destroy
```shell
./bin/rails d rails_pages:initializer
./bin/rails d rails_pages:install
```

## option
> ./bin/rails rails_pages:install --full
> ./bin/rails rails_pages:page pagename

| option   | type    | description             |
| -------- | ------- | ----------------------- |
| full     | boolean | mount to root route     |
| pagename | string  | your generate page name |

<!-- true -->
| Prefix Verb URI Pattern     | Controller#Action       |
| --------------------------- | ----------------------- |
| page1 GET  /page1(.:format) | rails_pages/pages#page1 |
| page2 GET  /page2(.:format) | rails_pages/pages#page2 |
| page2 GET  /page3(.:format) | rails_pages/pages#page3 |

## resources
- https://medium.com/@dineshpanda92/how-i-created-engines-from-monolithic-ruby-on-rails-application-698574565698
- https://guides.rubyonrails.org/engines.html