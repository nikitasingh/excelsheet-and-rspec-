class CreateColleagues < ActiveRecord::Migration
  def change
    create_table :colleagues do |t|
      t.string :first_name
      t.string :last_name
      t.string :middle_name

      t.timestamps
    end
  end
end
