# frozen_string_literal: true

Rails.application.routes.draw do
  get 'imports/index'
  root 'imports#index'
end
