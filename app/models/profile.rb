class Profile < ApplicationRecord
  belongs_to :user
  validates_uniqueness_of :user_id, message: "you can only have one profile"
  validates :name, :native_language, :target_language, :nationality , presence: true
  has_one_attached :picture
  has_one :language
end
