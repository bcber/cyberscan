class Target < ActiveRecord::Base
  attr_accessible :ip_address, :name, :report_id, :status
  has_one :report

  def print_status
    if self.status == 'scanning'
      "<font size='3' color='red'>#{self.status.titleize}</font>"
    elsif self.status == 'scanned'
      "<font size='3' color='green'>#{self.status.titleize}</font>"
    end
  end

end
