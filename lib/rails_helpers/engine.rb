require 'rails_helpers/helpers'

module RailsHelpers
  class Engine < ::Rails::Engine

    initializer "rails_helpers.view_helpers" do
      ActiveSupport.on_load(:action_view) do
        include RailsHelpers::Helpers
      end
    end
  end
end
