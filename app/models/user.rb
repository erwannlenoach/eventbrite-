class User < ApplicationRecord
	has_many :attendances  
	has_many :events, through: :attendances
    has_many :events, foreign_key: 'admin_id', class_name: "Event"
    # validates :name, length: { minimum: 2 }
    # validates :bio, length: { maximum: 500 }
    # validates :password, length: { in: 6..20 }
    # validates :registration_number, length: { is: 6 }

    after_create :welcome_send

    def welcome_send 
        UserMailer.welcome_email(self).deliver_now
    end 
    
end
