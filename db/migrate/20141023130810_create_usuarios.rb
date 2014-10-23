# -*- encoding : utf-8 -*-
class CreateUsuarios < ActiveRecord::Migration
  def change
    create_table :usuarios do |t|
      t.string :login
      t.string :senha
      t.string :nome
      t.references :email, index: true

      t.timestamps
    end
  end
end
