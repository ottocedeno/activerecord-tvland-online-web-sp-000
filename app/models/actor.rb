class Actor < ActiveRecord::Base
  #An actor should have many characters and many shows through characters.
  has_many :characters
  has_many :shows, through: :characters

  def full_name
    "#{self.first_name} #{self.last_name}"
  end

  def list_roles
    roles = Array.new
    self.characters.each do |character|
      character.name
      roles << "#{character.name} - #{character.show.name}"
      binding.pry
    end

    roles
  end
end
