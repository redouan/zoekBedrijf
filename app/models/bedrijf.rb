class Bedrijf < ActiveRecord::Base
  belongs_to :category
  has_many :contacts
  accepts_nested_attributes_for :contacts, :allow_destroy => :true , :reject_if => proc { |attrs| attrs.all? { |k, v| v.blank? } }


  def self.search(search)
  if search
    find(:all, :conditions => ['naam LIKE ?', "%#{search}%"])
  else
    find(:all)
  end
  end
end
