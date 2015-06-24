# app/workers/hard_worker.rb
class CoolWorker
    include Sidekiq::Worker
    # sidekiq_options :queue => :critical
    sidekiq_options :retry => 5

    # def perform(name, count)
        # puts 'my name is what ' + name + 'I\'m Doing hard work' + count.to_s
    # end

    # def send_email(topic)
    def perform(topic)
    	# UserMailer.topic_email(@topic)
        @topic = topic
        UserMailer.topic_email(@topic)
        # puts 'start'
    end

end
