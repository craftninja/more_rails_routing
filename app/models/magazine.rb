class Magazine < ActiveRecord::Base
  has_many :ads

  def self.search(query)
    where('name like ?', query)
  end
end
