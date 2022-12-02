# frozen_string_literal: true

json.extract! fund, :id, :title, :total, :created_at, :updated_at
json.url fund_url(fund, format: :json)
