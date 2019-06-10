class Message < ApplicationRecord
  belongs_to :user
  has_many :animals
end
