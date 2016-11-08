class CreateActors < ActiveRecord::Migration[5.0]
  def change
    create_table :actors do |t|
    	t.string :first_name
    	t.string :last_name
    	t.string :image
    	t.string :bio
      t.timestamps
    end
  end
end
