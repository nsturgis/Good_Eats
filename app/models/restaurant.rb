class Restaurant < ActiveRecord::Base
has_many :ratings

validates :name, presence: true
validates :address, presence: true
validates :city, presence: true
validates :state, presence: true
validates :zip_code, presence: true
end
