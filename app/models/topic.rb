class Topic < ApplicationRecord
  has_many :dislikes
  has_many :date_apps, :through => :dislikes, :source => :date_app
end
