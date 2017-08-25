class InitialSchema < ActiveRecord::Migration
  def change
    
    create_table :courses do |t|
      
      t.string :name
      t.string :coursecode
      t.string :description
      end
      
      create_table :attendance do |t|
        t.integer :counter
      end
      
      
    
    
    
  end
end
