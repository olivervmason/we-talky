class Profile < ApplicationRecord
  belongs_to :user
  validates :name, :native_language, :nationality, :profile_description, presence: true
  has_one_attached :picture
end
