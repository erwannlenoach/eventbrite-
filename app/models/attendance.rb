class Attendance < ApplicationRecord
    belongs_to :user
	belongs_to :event
    # validates :name, length: { minimum: 2 }
    # validates :bio, length: { maximum: 500 }
    # validates :password, length: { in: 6..20 }
    # validates :registration_number, length: { is: 6 } 
end
