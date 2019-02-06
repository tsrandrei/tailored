# frozen_string_literal: true

class ImportsController < ApplicationController
  def index
    @candidates = Candidate.all
  end
end
