class SignupOnboardingController < ApplicationController
  include Wicked::Wizard

  steps :confirm_name, :crave_introduction, :confirm_credentials, :training_modules

  def show
    render_wizard
  end
end
