class JobPosting < ActiveRecord::Base
  belongs_to :user
  validates_presence_of :url

  def position_count
    JobPosting.where(position: self.position).count
  end

  def url_count
    JobPosting.where(url: self.url).count
  end
end
