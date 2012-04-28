class User < ActiveRecord::Base
  attr_accessible :name, :twitter_id

  def self.find_or_create_from_twitter_data(twitter_auth_hash)
    User.find_by_twitter_id(twitter_auth_hash["uid"]) || User.create(:twitter_id => twitter_auth_hash["uid"].to_i, :name => twitter_auth_hash["name"])
  end
end
