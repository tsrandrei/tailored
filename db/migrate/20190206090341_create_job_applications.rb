class CreateJobApplications < ActiveRecord::Migration[5.2]
  def change
    create_table :job_applications do |t|
      t.references :job, foreign_key: true
      t.references :candidate, foreign_key: true
      t.string :submission_date

      t.timestamps
    end
  end
end
