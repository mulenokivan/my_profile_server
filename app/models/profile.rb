class Profile < ApplicationRecord
  has_many :contacts
  has_many :extras
  has_one_attached :avatar
end
