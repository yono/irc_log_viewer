class Log < ActiveRecord::Base
  set_table_name "log"
  belongs_to :channel
  belongs_to :nick
end
