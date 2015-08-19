require 'thor'
require 'miniasset'

module Miniasset::Cli
  class Datacenter < Thor
    desc 'list', 'List datacenters'
    method_option 'table_header', aliases: '-t', desc: 'Control printing of the table header', type: :boolean, default: true
    method_option 'simple', aliases: '-s', desc: 'Print a simple list of datacenter names, implies --no-table-header', type: :boolean, default: false
    def list
      app = Miniasset::Application.new
      header = '%2s %s'
      body = '%2d %s'

      puts header % ['ID', 'NAME'] if !options['table_header'] || !options['simple']

      app.datacenters.each do |datacenter|
        if options['simple']
          puts datacenter.name
        else
          puts body % [datacenter.id, datacenter.name]
        end
      end
    end
  end
end
