class CreateFees < ActiveRecord::Migration
  def change
    create_table :fees do |t|
      t.date :fdate
      t.string :amount

      t.timestamps null: false
    end
  end
end
