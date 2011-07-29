class Channel < ActiveRecord::Base
  set_table_name "channel"
  has_many :logs
end
