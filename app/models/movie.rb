class Movie < ActiveRecord::Base
    has_many :theaters
    validates :title, length: { minimum: 1 }
      validates :titleid, length: { minimum: 1 }
end
