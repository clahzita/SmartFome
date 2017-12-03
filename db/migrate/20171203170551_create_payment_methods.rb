class CreatePaymentMethods < ActiveRecord::Migration
  def change
    create_table :payment_methods do |t|
      t.string :name

      t.timestamps null: false
      t.belongs_to :profile, index: true
    end
  end
end
