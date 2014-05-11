# app/workers/hard_worker.rb

# Usage: ScanWorker.perform_async('bob', 5)

class ScanWorker
  include Sidekiq::Worker
  require 'open3'

  # To start with just doing a quick test with netstat
  def perform(target_id)
    @target = Target.find_by_id target_id
    puts "RUNNING COMMAND: nmap -vv -Pn -A -sC -sS -T 4 -p- #{@target.ip_address}"

    # -sS not always allowed without root. this scan is therefore using -sT and is not as stealthy as it could be
    cmd = "nmap -vv -Pn -A -sC -sT -T 4 -p- #{@target.ip_address}"
    the_output = ""
    Open3.popen3(cmd) do |stdin, stdout, stderr, wait_thr|
      stdout.read.split("\n").each do |line|
        the_output << "#{line} <BR>"
      end
    end
    the_output = the_output.gsub('\n','<BR>')
    @report = Report.create!(:tool => 'nmap -vv -Pn -A -sC -sT -T 4 -p- ', :tool_output => the_output, :target_id => @target.id)
    @target.update_attribute(:status,'scanned')


  end
end
