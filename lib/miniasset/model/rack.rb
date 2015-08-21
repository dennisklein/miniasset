require 'api_smith'

module Miniasset::Model
  class Rack < ::APISmith::Smash
    property :id
    property :name
    property :description
    property :custom_prefix
  end
end
