class CreateMenus < ActiveRecord::Migration
  def change
    create_table :menus do |t|

      t.timestamps null: false
      t.belongs_to :profile, index: true
    end
  end
end
