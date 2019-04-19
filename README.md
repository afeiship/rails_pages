# rails_pages
> Static pages.

## usage
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
## destroy
```shell
./bin/rails d rails_pages:initializer
./bin/rails d rails_pages:install
```

## option
| option | type    | description         |
| ------ | ------- | ------------------- |
| full   | boolean | mount to root route |

~~~
<!-- true -->
| Prefix Verb URI Pattern     | Controller#Action       |
| --------------------------- | ----------------------- |
| page1 GET  /page1(.:format) | rails_pages/pages#page1 |
| page2 GET  /page2(.:format) | rails_pages/pages#page2 |
| page2 GET  /page3(.:format) | rails_pages/pages#page3 |
~~~
## installation
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