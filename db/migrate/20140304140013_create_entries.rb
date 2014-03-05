class CreateEntries < ActiveRecord::Migration
  def change
      create_table :entries do |t| 
      	  #t.refenrences :project
      	  #sirve como el t.integer que viene a continuacion pero mas verboso
	      t.integer	:project_id
	      t.integer	:hours
	      t.integer	:minutes
	      t.text	:comments
	      t.datetime :date
	      t.timestamps
    end
  end
end
