# frozen_string_literal: true

# Model class to store the changes
class ApplicantVersion < PaperTrail::Version
  self.table_name = :applicant_versions
end
