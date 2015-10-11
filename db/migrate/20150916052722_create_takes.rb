class CreateTakes < ActiveRecord::Migration
  def change
    create_table :Takes do |t|
      t.references :class
      t.references :teacher

      t.timestamps null: false
    end
  end
end
