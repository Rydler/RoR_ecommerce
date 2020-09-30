class CreateCoupons < ActiveRecord::Migration[5.2]
  def change
    create_table :coupons do |t|
      t.string :kind
      t.string :code
      t.integer :amount
      t.string :discount
      t.reference :user
      t.integer :count

      t.timestamps
    end
  end
end
