# Miniasset CLI

This gem provides the command-line interface `miniasset` which is a client for the Miniasset Datacenter Asset Management API.

## Installation

    $ bin/setup
    $ bundle exec rake install

## Usage

Run `miniasset -h` in a shell to retrieve usage information.

## Tested

* Debian Jessie, MRI Ruby 2.1.5

## Acknowledgements

Miniasset CLI is built using these awesome gems and their dependencies:
* [thor](https://github.com/erikhuda/thor)
* [rocket_pants](https://github.com/Sutto/rocket_pants)

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/dennisklein/miniasset. Everyone interacting in Miniasset CLI and its sub-project's codebases, issue trackers, chat rooms, and mailing lists is expected to follow this [code of conduct](/CODE_OF_CONDUCT.md).

## License

Miniasset CLI is released under the [MIT License](/LICENSE)
