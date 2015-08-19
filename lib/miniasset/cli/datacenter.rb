require 'thor'
require 'miniasset'

module Miniasset::Cli
  class Datacenter < Thor
    desc 'list', 'List datacenters'
    def list
      app = Miniasset::Application.new
      header = '%2s %s'
      body = '%2d %s'

      puts header % ['ID', 'NAME']

      app.datacenters.each do |datacenter|
        puts body % [datacenter.id, datacenter.name]
      end
    end
  end
end
