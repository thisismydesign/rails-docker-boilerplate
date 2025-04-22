# Rails Docker boilerplate

#### A boilerplate that sets the ground for Rails development with Docker

## Usage

```sh
# Edit .railsrc to customize the rails app
# Create new rails app
docker compose run --rm web bundle
docker compose run --rm web rails new . --force --rc=.railsrc

# Run app
docker compose up
```

Reset (start over) via
```sh
git reset --hard HEAD
git clean -fdx
```

## License

The project is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
