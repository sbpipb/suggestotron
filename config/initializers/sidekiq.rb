Sidekiq.configure_server do |config|
  # config.redis = { url: 'redis://payswitch-queue.azabam.0001.apse1.cache.amazonaws.com:6379/12' }
  # config.redis = { url: 'redis://switch-redis.a6rsor.0001.apse1.cache.amazonaws.com:6379/12' }
end

Sidekiq.configure_client do |config|
  # config.redis = { url: 'redis://payswitch-queue.azabam.0001.apse1.cache.amazonaws.com:6379/12' }
  # config.redis = { url: 'redis://switch-redis.a6rsor.0001.apse1.cache.amazonaws.com:6379/12' }
end
