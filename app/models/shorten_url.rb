class ShortenUrl < ApplicationRecord
  validates :body, presence: true

  before_create :generate_short, :generate_complete_short

  private
    def generate_short
      self.short_link = SecureRandom.hex(3)

      while ShortenUrl.exists?(short_link: self.short_link)
        self.short_link = SecureRandom.hex(3)
      end
    end

    def generate_complete_short
      self.complete_short = "#{self.base_url}/#{short_link}"
    end
end
