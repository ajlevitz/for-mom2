class User < ActiveRecord::Base
  has_many :applyings
  has_many :schools, through: :applyings

  def school_list
    self.schools.collect do |school|
      school.name
    end.join(", ")
  end

  def school_list=(schools_string)
    school_names = schools_string.split(",").collect{|s| s.strip.downcase}.uniq
    new_or_found_schools = school_names.collect { |name| School.find_or_create_by(name: name) }
    self.schools = new_or_found_schools
  end

end
