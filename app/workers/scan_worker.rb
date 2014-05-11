# app/workers/hard_worker.rb

# Usage: ScanWorker.perform_async('bob', 5)

class ScanWorker
  include Sidekiq::Worker
  require 'open3'

  # To start with just doing a quick test with netstat
  def perform(target_id)
    @target = Target.find_by_id target_id
    puts "Doing stuff with #{@target.ip_address}"

    cmd = "netstat -an"
    the_output = ""
    Open3.popen3(cmd) do |stdin, stdout, stderr, wait_thr|
      stdout.read.split("\n").each do |line|
        the_output << "#{line} <BR>"
      end
    end
    the_output = the_output.gsub('\n','<BR>')
    @report = Report.create!(:tool => 'netstat -an', :tool_output => the_output, :target_id => @target.id)
    @target.update_attribute(:status,'scanned')


  end
end
