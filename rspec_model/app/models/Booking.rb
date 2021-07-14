class Booking < ApplicationRecord
    belongs_to :user
    validates :booking_from, presence :true
end