class AddJobpaidToJobs < ActiveRecord::Migration
  def change

  	add_column :jobs, :jobpaid, :boolean
  end
end
