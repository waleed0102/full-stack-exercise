# frozen_string_literal: true

class Fund < ApplicationRecord
  validates :title, presence: true
  validates :total, numericality: { only_integer: true }
end
