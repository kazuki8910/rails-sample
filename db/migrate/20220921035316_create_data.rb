class CreateData < ActiveRecord::Migration[7.0]
  def change
    create_table :data do |t|
      t.string :name
      t.integer :age
      t.string :media

      t.timestamps
    end
  end
end
