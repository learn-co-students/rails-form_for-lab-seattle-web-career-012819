class SchoolClass < ActiveRecord::Base
  def to_s
    self.title + " in " + self.room
  end
end
