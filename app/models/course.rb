class Course < ActiveRecord::Base
    
   has_many :users
   
   validates_presence_of :name
   validates_presence_of :coursecode
   validates_presence_of :description
   
   def self.search(params)
       courses = courses.where("name like? or description like?", "%#{params[:search]}") if params[:search].present?
   end
    
end