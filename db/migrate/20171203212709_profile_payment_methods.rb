class ProfilePaymentMethods < ActiveRecord::Migration
  def change
    create_join_table :profiles, :payment_methods do |t|
      t.index :profile_id
      t.index :payment_method_id
    end
  end
end
