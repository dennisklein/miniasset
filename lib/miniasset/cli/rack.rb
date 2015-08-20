require 'thor'
require 'miniasset'

module Miniasset::Cli
  class Rack < Thor
    desc 'list', 'List racks'
    method_option 'table_header', aliases: '-t', desc: 'Control printing of the table header', type: :boolean, default: true
    method_option 'simple', aliases: '-s', desc: 'Print a simple list of rack names, implies --no-table-header', type: :boolean, default: false
    def list
      app = Miniasset::Application.new
      header = '%2s %s'
      body = '%2d %s'

      puts header % ['ID', 'NAME'] if !options['table_header'] || !options['simple']

      app.racks.each do |rack|
        if options['simple']
          puts rack.name
        else
          puts body % [rack.id, rack.name]
        end
      end
    end
  end
end
