# frozen_string_literal: true

Rails.application.routes.draw do
  get 'imports/index'
  get 'imports/jobsapplication'
  root 'imports#index'
end
