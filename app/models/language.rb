class Language < ApplicationRecord
    has_many :profiles
#Doubts here!:
    # has_many :profiles
    # has_many :profiles through: :profile_languages 
end
