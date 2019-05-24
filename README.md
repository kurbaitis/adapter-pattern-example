# adapter-pattern-example

## In config/environments/test.rb

```ruby
config.google_adapter = Google::Fake.new
```

## In config/environments/production.rb

```ruby
config.google_adapter = Google::Api.new(ENV.fetch('GOOGLE_CLIENT_ID'), ENV.fetch('GOOGLE_CLIENT_SECRET'))
```

## Usage

```ruby
documents = Adapter.google.get_documents('_USER TOKEN_')

if documents.success == true
  puts 'Here are your documents'
  puts documents.data.inspect
else
  puts 'Error!'
  puts documents.errors.inspect
end
```

## Benefits

1. Possible to use across app test environment just fake adapter and avoid HTTP connection, however need to make sure, that `Api` and `Fake` adapters are in sync with their interface.
2. Isolated testing of the real adapter `Api`
3. Avoid mocking in the tests easier
