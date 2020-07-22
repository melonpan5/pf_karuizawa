# Preview all emails at http://localhost:3000/rails/mailers/contact_admin_mailer
class ContactAdminMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/contact_admin_mailer/contact_admin_mail
  def contact_admin_mail
    ContactAdminMailer.contact_admin_mail
  end

end
