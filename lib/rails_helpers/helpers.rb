require 'active_support/concern'
require 'rails_helpers/helpers/bootstrap'
require 'rails_helpers/helpers/body_classes'

module RailsHelpers
  module Helpers
    extend ActiveSupport::Concern

    include Bootstrap
    include BodyClasses
  end
end
