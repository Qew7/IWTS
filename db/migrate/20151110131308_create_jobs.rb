class CreateJobs < ActiveRecord::Migration
  def change
    create_table :jobs do |t|
      t.string :job_title
      t.references :worker, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
