class EnquiryMailer < ApplicationMailer

  default from: "pete@thecoderfactory.com"
  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.enquiry_mailer.response.subject
  #
  def response(enquiry_id)
    # @enquiry = enquiry -- This is not right.
    @enquiry = Enquiry.find(enquiry_id)
    mail(to: @enquiry.email, subject: "Your enquiry has been received")
  end

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.enquiry_mailer.received.subject
  #
  def received(enquiry_id)
    @enquiry = Enquiry.find(enquiry_id)
    mail(to: "techcarolinegao@gmail.com", subject: "An enquiry has been received.")
    #@greeting = "Hi"

    #mail to: "to@example.org"
  end
end
