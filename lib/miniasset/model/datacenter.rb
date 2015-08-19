require 'api_smith'

module Miniasset::Model
  class Datacenter < ::APISmith::Smash
    property :id
    property :name
    property :description
  end
end
