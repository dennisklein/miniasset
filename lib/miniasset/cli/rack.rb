require 'thor'
require 'thor/error'
require 'miniasset'

module Miniasset::Cli
  class Rack < Thor
    desc 'list', 'List racks'
    method_option 'table_header', aliases: '-t', desc: 'Control printing of the table header', type: :boolean, default: true
    method_option 'simple', aliases: '-s', desc: 'Print a simple list of rack names, implies --no-table-header', type: :boolean, default: false
    def list
      racks = Miniasset::Application.new.racks
      header = '%2s %s'
      body = '%2d %s'

      say header % ['ID', 'NAME'] if !options['table_header'] || !options['simple']

      racks.each do |rack|
        if options['simple']
          say rack.name
        else
          say body % [rack.id, rack.name]
        end
      end
    rescue StandardError => e
      raise Thor::Error.new set_color(e.to_s, :red, :bold)
    end
  end
end
