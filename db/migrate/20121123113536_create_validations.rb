class CreateValidations < ActiveRecord::Migration
  def change
    create_table :validations do |t|
      t.string :name
      t.references :scope
      t.text :description
      t.integer :auditee_id
      t.string :status

      t.timestamps
    end
    add_index :validations, :scope_id
  end
end
