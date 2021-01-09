class User < ApplicationRecord
  has_many :studylogs, dependent: :destroy
  validates :name, presence: true, length: { maximum: 30 },
                   uniqueness: true
  has_secure_password
  validates :password, presence: true, length: { minimum: 5 }, allow_nil: true

  def feed
    Studylog.where("user_id = ?", id)
  end
end
