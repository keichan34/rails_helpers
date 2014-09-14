module RailsHelpers::Helpers
  module Bootstrap
    extend ActiveSupport::Concern

    DEVISE_TO_BOOTSTRAP_DIV_CLASS = {
      alert: :danger,
      notice: :success
    }.freeze

    def flash_messages
      buffer = ''
      flash.each do |name, msg|
        the_class = DEVISE_TO_BOOTSTRAP_DIV_CLASS[name.to_sym] || name

        buffer << content_tag(:div, class: ['alert', "alert-#{the_class}"]) do
          msg
        end
      end
      buffer.html_safe
    end
  end
end
