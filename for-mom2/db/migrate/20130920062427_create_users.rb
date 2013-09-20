class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.integer :grad_year
      t.string :high_school

      t.timestamps
    end
  end
end
