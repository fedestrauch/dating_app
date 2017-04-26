class DateApp < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :dislikes
  has_many :topics, :through => :dislikes, :source => :topic

  def check_for_matches
    #get the topic I just picked
    last_pick = self.topics.last
    p "/\\/"*40
    p last_pick
    #get all the users that dislike that topic
    users = Dislike.where(topic: last_pick).map do |dislike|
      DateApp.find(dislike.date_app.id)
    end
    #see if they dislike 3 more thngs that I dislike
    users.each do | user |
      #get the users topics
      if (user.topics & self.topics).count >= 4
        return user
      end
      #see if 4 or more topics match mine
      #return that user
    end

  end
end
