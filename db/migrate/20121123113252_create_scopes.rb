class CreateScopes < ActiveRecord::Migration
  def change
    create_table :scopes do |t|
      t.string :name
      t.references :audit

      t.timestamps
    end
    add_index :scopes, :audit_id
  end
end
