class CreateJobs < ActiveRecord::Migration
  def change
    create_table :jobs do |t|
      t.references :employer, null: false
      t.string :title, null: false
      t.string :location, null: false
      t.string :position_type, null: false, default: "Full-Time"
      t.text :description, null: false
      t.text :info, null: false
      
      
      t.timestamps
    end
  end
end
