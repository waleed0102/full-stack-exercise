# frozen_string_literal: true

# Applications to Projects
class Applicant < ApplicationRecord
  attr_accessor :comment

  attribute :status, :integer, default: 0

  has_paper_trail only: %i[status],
                  on: %i[create update],
                  meta: {
                    name: :name,
                    status: :status,
                    comment: :comment
                  },
                  versions: { class_name: 'ApplicantVersion' }

  validates :name, presence: true, uniqueness: true
  validates :overview, presence: true
  validates :funding, numericality: true, presence: true

  belongs_to :project

  enum status: { applied: 0, initial_review: 1, more_information_required: 2, declined: 3, approved: 4 }

  def project_title
    'Project'
  end
end
