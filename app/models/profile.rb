class Profile < ApplicationRecord
  belongs_to :user
  validates :name, :native_language, :target_language, :nationality , presence: true
  has_one_attached :picture
end
