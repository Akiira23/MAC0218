class Subject < ApplicationRecord
  has_many :posts
  validates :title, presence: true
  resourcify

  extend FriendlyId
  friendly_id :title, use: [:slugged, :finders]

  def should_generate_new_friendly_id?
    title_changed?
  end

end
