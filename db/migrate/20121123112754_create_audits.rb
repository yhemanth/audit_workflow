class CreateAudits < ActiveRecord::Migration
  def change
    create_table :audits do |t|
      t.string :name
      t.string :store
      t.integer :auditor_id
      t.timestamp :due_date

      t.timestamps
    end
  end
end
