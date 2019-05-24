class Adapter
  class << self
    def google
      Rails.application.config.google_adapter
    end
  end
end
