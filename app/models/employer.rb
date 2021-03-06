class Employer < ActiveRecord::Base
  extend FriendlyId
  friendly_id :username

  has_one :account
  delegate :username, to: :account
  delegate :email, to: :account
  delegate :name, to: :account
  delegate :img_url, to: :account

  has_many :postings, dependent: :destroy
end
