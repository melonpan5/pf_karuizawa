class ContactsController < ApplicationController
  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(contact_params)
    if @contact.save
      ContactAdminMailer.contact_admin_mail(@contact).deliver
      ContactMailer.contact_mail(@contact).deliver
      flash[:success] = 'お問い合わせを受け付けました'
      redirect_to root_path
    else
      render :new
      flash[:success] = 'お問い合わせが送信できませんでした。お手数ですが再送信をお願いします。'
    end
  end

  

  private

  def contact_params
    params.require(:contact).permit(:email, :message, :name, :kana_name)
  end
end
