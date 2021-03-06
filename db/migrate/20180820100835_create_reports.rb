class CreateReports < ActiveRecord::Migration[5.2]
  def change
    create_table :reports do |t|
      t.text :content
      t.references :report_cycle, foreign_key: true
      t.references :set_pupil, foreign_key: true

      t.timestamps
    end
  end
end
