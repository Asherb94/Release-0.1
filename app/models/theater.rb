class Theater < ActiveRecord::Base
     belongs_to :movies
     validates :title_id, length: { minimum: 1 }
     validates :time, length: { minimum: 1 }
     validates :day, numericality: { greater_than: 0 }
     validates :theater_name, length: { minimum: 1 }
          
end
