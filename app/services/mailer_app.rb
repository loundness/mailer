
require 'dotenv'
require 'mail'
require 'mailjet'

Mailjet.configure do |config|
  config.api_key = ENV['MJ_APIKEY_PUBLIC']
  config.secret_key = ENV['MJ_APIKEY_PRIVATE']  
  config.api_version = "v3.1"
end
variable = Mailjet::Send.create(messages: [{
    'From'=> {
        'Email'=> 'pilot@mailjet.com',
        'Name'=> 'Mailjet Pilot'
    },
    'To'=> [
        {
            'Email'=> 'passenger1@mailjet.com',
            'Name'=> 'passenger 1'
        }
    ],
    'Subject'=> 'Your email flight plan!',
    'TextPart'=> 'Dear passenger 1, welcome to Mailjet! May the delivery force be with you!',
    'HTMLPart'=> '<h3>Dear passenger 1, welcome to Mailjet!</h3><br />May the delivery force be with you!'
}]
)
p variable.attributes['Messages']