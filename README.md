# Daily Mood Mailer

A simple Rails application for sharing your mood via email.

## Setup

This repo configured with Ruby 3.2.2 and Rails 7.1.2. 

After cloning, follow these steps to run locally:

```
bundle install
rails db:{create,migrate}
rails s
```

Please note: this app is configured to _not_ send emails in development.

### Branches

- `main`: Email will be sent synchronously, starting from `MailersController#create`.

### Notable Technologies / Dependencies

- [Sidekiq](https://github.com/mperham/sidekiq/wiki/Getting-Started)
- [Redis](https://formulae.brew.sh/formula/redis)