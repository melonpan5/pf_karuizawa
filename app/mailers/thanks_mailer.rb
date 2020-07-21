class ThanksMailer < ApplicationMailer
    def send_thanks(customer) #メソッドに対して引数を設定
        @customer = customer#ユーザー情報
        mail to: customer.email, subject: '【軽井沢deウェディング.com】 お問い合わせありがとうございます'
      end
    
end
