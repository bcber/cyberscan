class Report < ActiveRecord::Base
  attr_accessible :target_id, :tool, :tool_output
  belongs_to :target
end
