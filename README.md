# Rails 7 template

- active admin
- pg
- devise
- pundit
- bootstrap 5
- sidekiq
- rspec, capybara, selenium
- simple form
- sentry
- slim

## Setup
```
bundle exec rails db:create
bundle exec rails db:migrate
bundle exec rails db:seed
```

## Start
```
bundle exec foreman start -f Procfile.dev
```

## Tests
```
bundle exec rspec spec
```

## Lint
```
bundle exec rubocop
```

## Deploy

TODO:
- dokerize
- dokku staging
- dokku prod
