# frozen_string_literal: true

json.array! @funds, partial: 'funds/fund', as: :fund
