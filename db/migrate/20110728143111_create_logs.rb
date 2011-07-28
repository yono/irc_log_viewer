class CreateLogs < ActiveRecord::Migration
  def self.up
    create_table :logs do |t|
      t.string :log
      t.integer :channel_id
      t.integer :nick_id
      t.boolean :is_privmsg

      t.timestamps
    end
  end

  def self.down
    drop_table :logs
  end
end
