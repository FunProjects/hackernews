class Story < ActiveRecord::Base
  include Karma

  has_many :comments, as: :commentable
  attr_accessible :title, :url, :created_at

  validates_presence_of :title
  validates_uniqueness_of :title

  def url_domain
    URI(url).host
  end
end
