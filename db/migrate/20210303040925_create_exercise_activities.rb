class CreateExerciseActivities < ActiveRecord::Migration[6.0]
  def change
    create_table :exercise_activities do |t|
      t.integer :exercise_id
      t.integer :activity_id

      t.timestamps
    end
  end
end
