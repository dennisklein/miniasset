require 'thor'
require 'thor/error'
require 'miniasset'

module Miniasset::Cli
  class Rack < Thor
    desc 'list', 'List racks'
    method_option 'table_header', aliases: '-t', desc: 'Control printing of the table header', type: :boolean, default: true
    def list
      racks = Miniasset::Application.new.racks
      table = []
      cols = [:id, :name, :custom_prefix]

      table << cols.map { |col| col.to_s.upcase } if options['table_header']
      racks.each do |rack|
        table << cols.map { |col| rack.send col }
      end

      print_table table
    rescue StandardError => e
      raise Thor::Error.new set_color(e.to_s, :red, :bold)
    end

    desc 'columns', 'List available columns on the rack model'
    def columns
      Miniasset::Model::Rack.properties.sort.each do |property|
        say property
      end
    end

  end
end
