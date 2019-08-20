class ConfirmationMailer < ApplicationMailer
  def send_confirmation(params)
    @params = params
    mail(to: params[:email], subject: 'Confirmación de inscripción')
  end
end
