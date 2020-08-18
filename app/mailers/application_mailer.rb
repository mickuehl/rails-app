class ApplicationMailer < ActionMailer::Base
  default from: "#{Rails.application.credentials.email_from_name} <#{Rails.application.credentials.email_from}>"
  layout 'mailer'
end
