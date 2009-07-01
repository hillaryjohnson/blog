class Blog < ActiveRecord::Base
  validates_presence_of :body, :title, :author
  has_many :comments
  
  
  def self.search(search, page)
    paginate :per_page => 5, :page => page, :conditions => ['body like ?', "%#{search}%"], :order => 'title'
  end

end
