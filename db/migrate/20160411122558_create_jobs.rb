class CreateJobs < ActiveRecord::Migration
  def change
    create_table :jobs do |t|
    	t.string :company
    	t.string :position
    	t.string :link
    	t.string :status
    	t.text :notes
    end
  end
end
