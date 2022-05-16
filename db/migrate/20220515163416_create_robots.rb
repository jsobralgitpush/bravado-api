class CreateRobots < ActiveRecord::Migration[6.1]
  def change
    create_table :robots do |t|
      t.string :name
      t.string :email
      t.string :title
      t.string :city
      t.string :address
      t.text :avatar

      t.timestamps
    end
  end
end
