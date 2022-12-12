# frozen_string_literal: true

# Controller for upcoming Payments
class PaymentsController < ApplicationController
  def index
    @projects = Project.payment_date_in_future.order(:payment_date).includes(:approved_applicants)
  end
end
