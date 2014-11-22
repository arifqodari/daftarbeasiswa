class CreateScholarships < ActiveRecord::Migration
  def change
    create_table :scholarships do |t|
      t.string :title
      t.text :description
      t.datetime :opening_date
      t.datetime :closing_date
      t.string :category # Category : Luar Negeri / Dalam Negeri
      t.string :major # Major : S1 / S2 / S3
      t.boolean :verified, default: false
      t.boolean :active, default: true
      t.timestamps
    end
  end
end
