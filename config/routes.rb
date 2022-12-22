# frozen_string_literal: true

Rails.application.routes.draw do
  resources :users, defaults: { format: :json }, except: %i[index create show update destroy] do
    collection do
      post :sign_up
      get :sign_in
      delete :sign_out
      patch :update_info
    end
  end
end
