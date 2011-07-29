class Log < ActiveRecord::Base
  set_table_name "log"
  belongs_to :channel
  belongs_to :nick
  default_scope :order => 'created_on DESC'
  paginates_per 30
end
