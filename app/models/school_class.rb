class SchoolClass < ActiveRecord::Base
  def self.count
    self.all.length
  end
end