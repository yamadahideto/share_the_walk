class Room < ApplicationRecord

  has_many :messages
  has_many :users, through: :user_rooms
  has_many :user_rooms
end
