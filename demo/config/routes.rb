# frozen_string_literal: true

Rails.application.routes.draw do
  root to: "integration_examples#index"

  get :time_ago, to: "integration_examples#time_ago"

end
