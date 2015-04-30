class CreatePostingApplications < ActiveRecord::Migration
  def change
    create_table :posting_applications do |t|
      t.references :posting, index: true, foreign_key: true
      t.references :student, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
