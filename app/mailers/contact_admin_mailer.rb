class ContactAdminMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.contact_admin_mailer.contact_admin_mail.subject
  #
  def contact_admin_mail(contact)
    @contact = contact  
    mail to: ENV['YOUR_EMAIL_ADDRESS'], subject: "【管理者宛】軽井沢deウェディング.com 問い合わせがありました"
  end
end


