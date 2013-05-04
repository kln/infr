class CreateEquips < ActiveRecord::Migration
  def change
    create_table :equips do |t|
        t.text :location_equip
     	t.text :model_equip, null:false
        t.text :type_equip
        t.belongs_to :user, null: false
		t.timestamps
    end
  end
end
