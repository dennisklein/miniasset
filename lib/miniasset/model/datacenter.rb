require 'api_smith'

module Miniasset::Model
  class Datacenter < ::APISmith::Smash
    property :id
    property :name
    property :description
    property :rack_prefix
  end
end
