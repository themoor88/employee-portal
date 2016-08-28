# frozen_string_literal: true
class PayrollController < ApplicationController
  def index
    @pay_stubs = current_user&.pay_stubs
    @t4_slip = current_user&.t4_slips
    @record_of_employment = current_user&.record_of_employments
  end
end
