class Language < ApplicationRecord
    has_many :profiles
#Doubts here!:
    has_many :profile_languages
    has_many :profiles through profile 
end
