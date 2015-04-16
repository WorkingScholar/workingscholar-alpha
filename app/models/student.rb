require "gravatar-ultimate"

class Student < ActiveRecord::Base
  extend FriendlyId
  friendly_id :username

  validates :username, presence: true, uniqueness: { case_sensitive: false }
  validates :first_name, presence: true
  validates :last_name, presence: true

  has_one :account
  delegate :email, to: :account, prefix: true

  belongs_to :school, counter_cache: true
  delegate :name, to: :school, prefix: true, allow_nil: true

  belongs_to :major, counter_cache: true
  delegate :name, to: :major, prefix: true, allow_nil: true

  def full_name
    "#{first_name} #{last_name}"
  end

  def avatar_url
    Gravatar.new(account_email).image_url(s: 100)
  end
end