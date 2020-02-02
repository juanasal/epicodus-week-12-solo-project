require 'active_support/concern'
require 'response'

module ExceptionHandlers
  extend ActiveSupport::Concern
  included do
    rescue_from ActiveRecord::RecordNotFound do |exception|
      json_response({ message: exception.message }, :not_found)
    end
  end

end
