# frozen_string_literal: true

class UsersController < ApplicationController
  def sign_up
    @user = Users::Creator.new.perform(users_params)

    render :create, status: :created
  end

  private

  def users_params
    params.permit(
      :name,
      :email,
      :password
    ).to_h.symbolize_keys
  end
end
