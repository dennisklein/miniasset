require 'thor'
require 'miniasset'

module Miniasset::Cli
  class Datacenter < Thor
    desc 'list', 'List datacenters'
    method_option 'table_header', aliases: '-t', desc: 'Control printing of the table header', type: :boolean, default: true
    method_option 'simple', aliases: '-s', desc: 'Print a simple list of datacenter names, implies --no-table-header', type: :boolean, default: false
    def list
      datacenters = Miniasset::Application.new.datacenters
      header = '%2s %s'
      body = '%2d %s'

      say header % ['ID', 'NAME'] if !options['table_header'] || !options['simple']

      datacenters.each do |datacenter|
        if options['simple']
          say datacenter.name
        else
          say body % [datacenter.id, datacenter.name]
        end
      end
    rescue StandardError => e
      raise Thor::Error.new set_color(e.to_s, :red, :bold)
    end
  end
end
