require 'rocket_pants'
require 'miniasset/model'

module Miniasset
  class Application < RocketPants::Client
    version 1
    base_uri 'http://localhost:3000'

    def datacenters
      get 'datacenter', transformer: Miniasset::Model::Datacenter
    end
  end
end
