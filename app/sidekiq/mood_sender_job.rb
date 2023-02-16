class MoodSenderJob
  include Sidekiq::Job

  def perform(*args)
    UserNotifierMailer.send_mood_email(email, thought).deliver_now
  end
end
