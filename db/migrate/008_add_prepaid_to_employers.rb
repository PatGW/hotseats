class AddPrepaidToEmployers < ActiveRecord::Migration
  def change

  	add_column :employers, :prepaid, :integer
  end
end
