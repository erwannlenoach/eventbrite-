class Event < ApplicationRecord
    belongs_to :admin, class_name: "User"
    validates :start_date, presence: true
    validates :duration, presence: true, numericality: { greater_than: 0 }
    validates :title, presence: true, length: 5..140
    validates :description, presence: true, length: 20..1000
    validates :price, presence: true, inclusion: { in: 1..1000}
    validates :location, presence: true
    
  
end
