class Profile < ApplicationRecord
  has_many :contacts
  has_many :extras
end
