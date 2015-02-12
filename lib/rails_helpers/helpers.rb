require 'active_support/concern'
require 'rails_helpers/helpers/bootstrap'
require 'rails_helpers/helpers/body_classes'
require 'rails_helpers/helpers/bootstrap_form_error_helper'

module RailsHelpers
  module Helpers
    extend ActiveSupport::Concern

    include Bootstrap
    include BodyClasses
    include BootstrapFormErrorHelper
  end
end
