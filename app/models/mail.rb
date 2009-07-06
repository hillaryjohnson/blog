class Mail < ActionMailer::Base
  def comment_notification(mail)
    recipients "hillary@agilelearninglabs.com"
    from  "xoxiety@gmail.com"
    subject "The comment fairy has a present for you!"
    body  :mail => mail
  end
end
