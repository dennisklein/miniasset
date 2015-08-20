require 'thor'
require 'miniasset'
require 'miniasset/cli/datacenter'
require 'miniasset/cli/rack'

module Miniasset
  module Cli
    class Main < Thor
      desc 'datacenter', 'Datacenter interface'
      subcommand 'datacenter', Miniasset::Cli::Datacenter

      desc 'rack', 'Rack interface'
      subcommand 'rack', Miniasset::Cli::Rack

      desc 'version', 'Print the version of this program'
      def version
        puts Miniasset::VERSION
      end
    end
  end
end
