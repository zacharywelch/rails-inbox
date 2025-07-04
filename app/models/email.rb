class Email < ApplicationRecord
  validates :from, presence: true, length: { maximum: 255 }
  validates :subject, presence: true
  validates :body, presence: true
  validates :received_at, presence: true

  scope :unread, -> { where(read: false) }
  scope :starred, -> { where(starred: true) }
  scope :recent, -> { order(received_at: :desc) }

  def read!
    update(read: true)
  end
end
