class CreateFees < ActiveRecord::Migration
  def change
    create_table :Fees do |t|
      t.date :payment_date
      t.string :amount
      t.references :Student

      t.timestamps null: false
    end
  end
end
