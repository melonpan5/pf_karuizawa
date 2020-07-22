require 'test_helper'

class ContactAdminMailerTest < ActionMailer::TestCase
  test "contact_admin_mail" do
    mail = ContactAdminMailer.contact_admin_mail
    assert_equal "Contact admin mail", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
