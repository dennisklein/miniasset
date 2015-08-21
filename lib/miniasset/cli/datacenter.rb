require 'thor'
require 'miniasset'

module Miniasset::Cli
  class Datacenter < Thor
    desc 'list', 'List datacenters'
    method_option 'table_header', aliases: '-t', desc: 'Control printing of the table header', type: :boolean, default: true
    def list
      datacenters = Miniasset::Application.new.datacenters
      table = []
      cols = [:id, :name]

      table << cols.map { |col| col.to_s.upcase } if options['table_header']
      datacenters.each do |datacenter|
        table << cols.map { |col| datacenter.send(col) }
      end

      print_table table
    rescue StandardError => e
      raise Thor::Error.new set_color(e.to_s, :red, :bold)
    end

    desc 'columns', 'List available columns on the datacenter model'
    def columns
      Miniasset::Model::Datacenter.properties.sort.each do |property|
        say property
      end
    end
  end
end
