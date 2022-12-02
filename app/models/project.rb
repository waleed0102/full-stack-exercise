# frozen_string_literal: true

class Project < ApplicationRecord
  validates :title, presence: true, uniqueness: true

  belongs_to :fund
end
