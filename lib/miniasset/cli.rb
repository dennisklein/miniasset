require 'thor'
require 'miniasset'
require 'miniasset/cli/datacenter'

module Miniasset
  module Cli
    class Main < Thor
      desc 'datacenter', 'Datacenter interface'
      subcommand 'datacenter', Miniasset::Cli::Datacenter

      desc 'version', 'Print the version of this program'
      def version
        puts Miniasset::VERSION
      end
    end
  end
end
