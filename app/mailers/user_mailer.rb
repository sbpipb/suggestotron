class UserMailer < ApplicationMailer

  # default from: 'no-reply@suggestotron.me'
  # default template_path: 'def_templ'

  def welcome_email(user)
    @user = user
    @url  = 'http://example.com/login'
    mail(to: @user.email, subject: 'Welcome to My Awesome Site')
  end

  def topic_email(topic)
  	@topic = topic
    begin
      mail(to:'julian@dispostable.com',
          subject: 'New Topic:'+@topic.title+' created',
          template_path: 'topic_mailer',
          template_name: 'topic_email'
        )
    rescue Exception => e
      #
    end

  end

end