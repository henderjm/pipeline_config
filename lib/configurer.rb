require 'redis'
# Docs
class Configurer
  attr_reader :redis
  def initialize
  end

  def open_db
    @redis = Redis.new(
      host: 'fake_endpoint',
      port: '17969',
      password: 'fake_password'
    )
  end

  def add(key, value)

  end

  def ensure_database_is_clean
    
  end
end
