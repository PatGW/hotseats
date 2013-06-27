class AddDefaultValueToPrepaid < ActiveRecord::Migration
  	def up
	    change_column :employers, :prepaid, :integer, :default => 0
	end

	def down
	    change_column :employers, :prepaid, :integer, :default => nil
	end
end
