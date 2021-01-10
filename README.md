# Rails Docker boilerplate

#### A boilerplate that sets the ground for Rails development with Docker

## Usage

```sh
# Create new rails app (customize according to your need)
docker-compose run --rm web rails new . --force --api --database=mysql
# Fix issues (e.g. edit config/database.yml) and then
docker-compose up
```

## Conventions

This project follows [C-Hive guides](https://github.com/c-hive/guides) for code style, way of working and other development concerns.

## License

The project is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
