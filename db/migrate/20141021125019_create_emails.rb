# -*- encoding : utf-8 -*-
class CreateEmails < ActiveRecord::Migration
  def change
    create_table :emails do |t|
      t.string :emails

      t.timestamps
    end
  end
end
