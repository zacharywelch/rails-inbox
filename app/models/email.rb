class Email < ApplicationRecord
  validates :from, presence: true, length: { maximum: 255 }
  validates :subject, presence: true
  validates :body, presence: true
  validates :received_at, presence: true

  validates :from, format: {
    with: /\A[^@\s]+@[^@\s]+\z/,
    message: "must be a valid email address"
  }

  scope :unread, -> { where(read: false) }
  scope :starred, -> { where(starred: true) }
  scope :recent, -> { order(received_at: :desc) }
end
