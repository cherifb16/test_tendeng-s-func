class AsyncLogJob < ApplicationJob
  queue_as :default

  def perform(message: "hello")
    AsyncLog.create!(message: message)
    # Do something later
  end
end
