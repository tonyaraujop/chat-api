# frozen_string_literal: true

class ApplicationError < StandardError
  def initialize(message)
    @message = message

    super(@message)
  end
end
