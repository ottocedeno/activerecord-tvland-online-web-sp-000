class Actor < ActiveRecord::Base
  #An actor should have many characters and many shows through characters.
  has_many :characters
  has_many :shows, through: :characters

  def full_name
    "#{self.first_name} #{self.last_name}"
  end

  def list_roles
    Array.new.tap do |roles|
      self.characters.each do |character|
        character.name
        roles << "#{character.name} - #{character.show.name}"
      end
    end

    self.characters.map do |character|
      "#{character.name} - #{character.show.name}"
    end
  end
end
