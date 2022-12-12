# frozen_string_literal: true

# Projects for Funds and Applicants to apply for funding for
class Project < ApplicationRecord
  validates :title, presence: true, uniqueness: true
  validates :payment_date, presence: true

  has_many :approved_applicants, -> { approved }, class_name: 'Applicant', inverse_of: project, dependent: :destroy
  belongs_to :fund

  scope :payment_date_in_future, -> { where('payment_date >= ?', Date.current) }
end
