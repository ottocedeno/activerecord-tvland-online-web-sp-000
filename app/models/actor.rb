class Actor < ActiveRecord::Base
  #An actor should have many characters and many shows through characters.
  has_many :character
end
