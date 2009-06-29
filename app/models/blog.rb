class Blog < ActiveRecord::Base
  validates_presence_of :body, :title, :author
  has_many :comments
  belongs_to :page
  belongs_to :parent
  
  def self.search(search, page)
    paginate :per_page => 5, :page => page, :conditions => ['body like ?', "%#{search}%"], :order => 'title'
  end

end
