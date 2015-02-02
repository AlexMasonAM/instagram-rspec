class User < ActiveRecord::Base
  validates :username, presence: true

  has_many :posts

  def is_underage?
    date_of_birth > 21.years.ago
  end

end
