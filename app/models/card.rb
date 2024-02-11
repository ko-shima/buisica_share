class Card < ApplicationRecord
  belongs_to :user
  has_one_attached :image
  has_many :comments

  with_options presence: true do
    validates :client_last_name
    validates :client_first_name
    validates :company_name
    validates :client_email
    validates :client_department
    validates :client_phone_number
    validates :user_id
    validates :image
  end

  def self.search(search)
    if search != ""
      Card.where('client_last_name LIKE ? OR company_name LIKE ?', "%#{search}%", "%#{search}%")
    else
      Card.all
    end
  end
end
