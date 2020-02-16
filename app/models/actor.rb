class Actor < ActiveRecord::Base
  #An actor should have many characters and many shows through characters.
  has_many :characters
  has_many :shows, through: :characters

  def full_name
    "#{self.first_name} #{self.last_name}"
  end

  def list_roles
    binding.pry
  end
end
