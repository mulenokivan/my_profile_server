class Contact < ApplicationRecord
  belongs_to :profile
  belongs_to :contact_type
end
