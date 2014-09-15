module RailsHelpers::Helpers
  module BodyClasses
    extend ActiveSupport::Concern

    def body_classes(other_classes=[])
      controller_names = controller.controller_path.split '/'
      controller_name = controller_names.join '__'
      controller_names.pop

      other_classes + controller_names + [controller_name, "#{controller_name}-#{controller.action_name}"]
    end
  end
end
