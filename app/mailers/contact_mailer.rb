class ContactMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.contact_mailer.contact_mail.subject
  #
  def contact_mail(contact)
    @contact = contact  
    mail to: ENV['YOUR_EMAIL_ADDRESS'], subject: "軽井沢deウェディング.com お問い合わせ内容"
  end
end
