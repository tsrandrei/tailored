# frozen_string_literal: true

class Job < ApplicationRecord
  has_many :job_applications
  belongs_to :candidate
end
