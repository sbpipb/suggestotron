# app/workers/hard_worker.rb
class CoolWorker
    include Sidekiq::Worker
    sidekiq_options :queue => :critical

    def perform(name, count)
        puts 'my name is ' + name + 'I\'m Doing hard work' + count.to_s
    end

    def send_email(topic)
        @topic = topic
        UserMailer.topic_email(@topic)
    end

end
