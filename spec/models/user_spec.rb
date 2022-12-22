# frozen_string_literal: true

require 'rails_helper'

RSpec.describe User do
  describe 'validations' do
    subject { described_class.new(name: 'John Doe', email: 'email@test.com', password: '12345678') }

    it { is_expected.to validate_presence_of(:name) }
    it { is_expected.to validate_presence_of(:email) }
    it { is_expected.to validate_uniqueness_of(:email) }
    it { is_expected.to validate_presence_of(:password) }
    it { is_expected.to validate_length_of(:password_digest).is_at_least(8) }
  end
end
