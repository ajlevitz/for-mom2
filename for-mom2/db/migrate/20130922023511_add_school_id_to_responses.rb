class AddSchoolIdToResponses < ActiveRecord::Migration
  def change
    add_column :responses, :school_id, :integer
  end
end
