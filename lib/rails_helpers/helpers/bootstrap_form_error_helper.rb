module RailsHelpers::Helpers
  module BootstrapFormErrorHelper

    def has_error_for?(f, *attributes)
      'has-error' if attributes.detect { |attr| f.object.errors.include?(attr) }
    end

    def error_description_list(f, attribute)
      errors = f.object.errors.full_messages_for(attribute)
      return '' if errors.blank?

      content_tag :ul, class: 'error-description' do
        buffer = ''
        errors.each do |e|
          buffer << (content_tag :li, e)
        end
        buffer.html_safe
      end
    end
  end
end
