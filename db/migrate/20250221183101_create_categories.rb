class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.string :name, null:false
      t.timestamps null:true
    end
  end
end
