class User < ApplicationRecord
  validates :email, presence: true, length: {maximum: 50}
  before_save :downcase_email

  private

  # Downcase email before being saved
  def downcase_email
    self.email = email.downcase
  end
end
