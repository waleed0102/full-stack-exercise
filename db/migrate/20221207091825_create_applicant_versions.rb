# frozen_string_literal: true

class CreateApplicantVersions < ActiveRecord::Migration[7.0]
  TEXT_BYTES = 1_073_741_823

  def change # rubocop:disable Metrics/MethodLength
    create_table :applicant_versions do |t|
      t.string   :item_type, null: false
      t.integer  :item_id,   null: false, limit: 8
      t.string   :event,     null: false
      t.string   :whodunnit
      t.text     :object, limit: TEXT_BYTES
      t.string :name
      t.string :status
      t.string :comment
      t.timestamps
    end
  end
end
