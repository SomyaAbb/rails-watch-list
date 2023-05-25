class AddForeignKey < ActiveRecord::Migration[7.0]
  def change
    add_reference :movies, :bookmark, foreign_key: true
    add_reference :lists, :bookmark, foreign_key: true
    add_reference :lists, :movie, foreign_key: true
  end
end
