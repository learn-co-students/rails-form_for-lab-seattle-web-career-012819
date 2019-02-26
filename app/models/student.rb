class Student < ActiveRecord::Base
  def to_s
    self.first_name + " " + self.last_name
  end

  def self.count
    self.all.length
  end
end