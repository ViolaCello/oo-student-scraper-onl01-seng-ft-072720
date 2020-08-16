class Student

  attr_accessor :name, :location, :twitter, :linkedin, :github, :blog, :profile_quote, :bio, :profile_url 

  @@all = []

  def initialize(student_hash)
    student_hash.each do |key, value|
      @name = student_hash[:name]
      @location = student_hash[:location]
      @twitter = student_hash[:twitter]
      @linkedin = student_hash[:linkedin]
      @github = student_hash[:github]
      @blog = student_hash[:blog]
      @profile_quote = [:profile_quote]
      @bio = [:bio]
      @profile_url = [:profile_url]
      @@all.push(self)
      
    end
   # binding.pry
  end

  def self.create_from_collection(students_array)
students_array.each do |i|
  Student.new(i)
end
  end

  def add_student_attributes(attributes_hash)
  #  binding.pry
  end

  def self.all
    @@all
  end
end

