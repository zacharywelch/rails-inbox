class CreateEmails < ActiveRecord::Migration[8.0]
  def change
    create_table :emails do |t|
      t.string :from, null: false
      t.text :subject, null: false
      t.text :body, null: false
      t.datetime :received_at, null: false, default: -> { 'CURRENT_TIMESTAMP' }
      t.boolean :read, null: false, default: false
      t.boolean :starred, null: false, default: false
      t.text :labels, array: true, default: []

      t.timestamps
    end

    add_index :emails, :received_at
    add_index :emails, :read
    add_index :emails, :starred
    add_index :emails, [:read, :received_at]
    add_index :emails, :labels, using: :gin
  end
end
