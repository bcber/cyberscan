# app/workers/hard_worker.rb

# Usage: ScanWorker.perform_async('bob', 5)

class ScanWorker
  include Sidekiq::Worker

  def perform(name, count)
    puts 'Doing hard work'
  end
end
