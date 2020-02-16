class Actor < ActiveRecord::Base
  #An actor should have many characters and many shows through characters.
  has_many :characters
  has_many :shows, through: :characters

  def full_name
    "#{self.first_name}"
  end
end
