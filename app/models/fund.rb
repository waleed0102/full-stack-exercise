# frozen_string_literal: true

class Fund < ApplicationRecord
  validates :title, presence: true, uniqueness: true
  validates :total, numericality: { only_integer: true }

  has_many :projects, inverse_of: :fund, dependent: :restrict_with_error
end
