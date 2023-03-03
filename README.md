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

bundle exec rails secret
bundle exec rails credentials:edit -e development

secret_key_base: xxxxxx
support_email: xxx@xxx.xxx

sentry:
  dsn: xxx

mail:
  sender_name: xxx
  sender_email: xxx@xxx.xxx
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
