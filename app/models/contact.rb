class Contact < ApplicationRecord
  belongs_to :profile
  belongs_to :contact_type
  delegate :title, to: :contact_type
end
