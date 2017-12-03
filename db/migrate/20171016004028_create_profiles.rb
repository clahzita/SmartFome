class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.string  :business_name
      t.text    :description
      t.string  :category
      t.string  :address
      t.string  :phone
      t.integer :popularity

      t.timestamps null: false
      t.belongs_to :user, index: true
    end
  end
end
