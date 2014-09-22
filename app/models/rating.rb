class Rating < ActiveRecord::Base
belongs_to :restaurant

validates :rating, presence: true, :inclusion => 1..5
validates :body, presence: true

end
