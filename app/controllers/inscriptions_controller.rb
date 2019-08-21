class InscriptionsController < ApplicationController
  skip_before_action :verify_authenticity_token, :only => :create

  def create
    Registration.create(registration_params)
    ConfirmationMailer.send_confirmation(registration_params).deliver_now
  end

  private

  def registration_params
    params.require(:registration).permit(
      :first_name,
      :last_name,
      :email,
      :dni,
      :country,
      :province,
      :city,
      :university,
      :category,
      :course
    )
  end
end
