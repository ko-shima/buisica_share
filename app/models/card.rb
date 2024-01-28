class Card < ApplicationRecord
  belongs_to :user

  with_options presence: true do
    validates :client_last_name
    validates :client_first_name
    validates :company_name
    validates :client_email
    validates :client_department
    validates :client_phone_number
    validates :user_id
  end
end
