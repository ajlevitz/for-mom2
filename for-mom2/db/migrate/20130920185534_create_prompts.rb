class CreatePrompts < ActiveRecord::Migration
  def change
    create_table :prompts do |t|
      t.string :question
      t.references :school, index: true

      t.timestamps
    end
  end
end
