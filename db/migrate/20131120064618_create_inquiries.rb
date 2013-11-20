class CreateInquiries < ActiveRecord::Migration
  def change
    create_table :inquiries do |t|
      t.integer :age
      t.string :sex
      t.float :weight
      t.float :height

      t.timestamps
    end
  end
end
