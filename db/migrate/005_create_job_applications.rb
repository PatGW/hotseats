class CreateJobApplications < ActiveRecord::Migration
  def change
    create_table :job_applications do |t|
      t.references :job, null: false
      t.references :applicant, null: false
      
      t.text :cover_letter, null: false
      
      t.timestamps
    end
  end
end
