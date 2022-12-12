# frozen_string_literal: true

# Helpers for Projects
module ProjectsHelper
  def approved_applicant_names(project)
    project.approved_applicants.map(&:name).join(', ')
  end
end
