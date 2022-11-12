class User < ApplicationRecord
  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :validatable
  
  has_many :myevents

  has_many :tickets
  has_many :events, through: :tickets
  
end
