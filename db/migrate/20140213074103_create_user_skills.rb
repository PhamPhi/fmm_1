class CreateUserSkills < ActiveRecord::Migration
  def change
    create_table :user_skills do |t|
      t.integer :user_id
      t.integer :skill_id
      t.integer :level, default: 0
      t.integer :used_year_number

      t.timestamps
    end
  end
end
