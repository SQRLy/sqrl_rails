class CreateSqrlNuts < ActiveRecord::Migration
  def change
    create_table :sqrl_nuts do |t|
      t.integer :expires
      t.string :ip
      t.string :content

      t.timestamps
    end
  end
end
