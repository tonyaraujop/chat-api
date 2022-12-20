# frozen_string_literal: true

module Users
  class Creator
    def perform(name:, email:, password:)
      User.create!(
        name:,
        email:,
        password:
      )
    end
  end
end
