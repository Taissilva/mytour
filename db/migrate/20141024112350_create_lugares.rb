class CreateLugares < ActiveRecord::Migration
  def change
    create_table :lugares do |t|
      t.string :nome
      t.string :tipo
      t.references :cidade, index: true

      t.timestamps
    end
  end
end
