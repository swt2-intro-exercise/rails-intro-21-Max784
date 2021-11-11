class CreateJoinTableAuthorPapers < ActiveRecord::Migration[6.0]
  def change
    create_table :join_table_author_papers do |t|
      t.references :author, null: false, foreign_key: true
      t.references :paper, null: false, foreign_key: true

      t.timestamps
    end
  end
end
