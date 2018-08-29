class AwesomeMailer < ApplicationMailer

  def awesome_mail(user)

    mail(
      to: user.email,
      delivery_method_options: { api_key: 'MJ_APIKEY_PUBLIC', secret_key: 'MJ_APIKEY_PRIVATE' }
    )
  end
end