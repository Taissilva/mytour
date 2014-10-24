class CreateAvaliacoes < ActiveRecord::Migration
  def change
    create_table :avaliacoes do |t|
      t.string :positiva
      t.string :negativa
      t.references :usuario, index: true
      t.references :cidade, index: true
      t.references :lugar, index: true

      t.timestamps
    end
  end
end
