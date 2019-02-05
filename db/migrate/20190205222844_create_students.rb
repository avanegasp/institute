class CreateStudents < ActiveRecord::Migration[5.2]
  def change
    create_table :students do |t|
      t.string :name
      t.string :last_name
      t.string :address
      t.string :neighborhood
      t.string :email
      t.references :school, foreign_key: true
      t.references :course, foreign_key: true
      t.timestamps
    end
  end
end
