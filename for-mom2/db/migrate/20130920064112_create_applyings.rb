class CreateApplyings < ActiveRecord::Migration
  def change
    create_table :applyings do |t|
      t.references :school, index: true
      t.references :user, index: true

      t.timestamps
    end
  end
end
