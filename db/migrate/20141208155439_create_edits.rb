class CreateEdits < ActiveRecord::Migration
  def change
    create_table :edits do |t|
      t.references :by, index: true, polymorphic: true
      t.references :item, index: true, polymorphic: true
      t.integer :action
      t.text :custom
      t.string :ip_address

      t.timestamps
    end
  end
end
