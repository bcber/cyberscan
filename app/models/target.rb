class Target < ActiveRecord::Base
  attr_accessible :ip_address, :name, :report_id, :status
end
