class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.string :name
      t.text :description
      t.string :address
      t.string :phone

      t.timestamps null: false
      t.belongs_to :user, index: true
    end
  end
end
