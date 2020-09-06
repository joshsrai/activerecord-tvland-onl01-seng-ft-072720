class Show < ActiveRecord::Base
  has_many :characters
  has_many :actors, through: :characters
  belongs_to :network
  
  #   def full_name
  #   "#{self.first_name} #{self.last_name}"
  # end
  
  # def list_roles
  #   self.characters.collect do |c|
  #     "#{c.name} - #{c.show.name}"
  #   end
  # end
  
  def actors_list
    self.actors.collect do |a|
      "#{a.first_name} #{last_name} - #{a.self.name}"
    end
  end
      
  
  
end