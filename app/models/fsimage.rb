class Fsimage < ActiveRecord::Base
                   
  has_attached_file :fsimage,
                    :url => "/filmstrips/:id/:style/:basename.:extension",
                    :styles => { :normal => '568x294#', :thumb => '193x100#' }

  validates_attachment_presence     :fsimage
  validates_attachment_content_type :fsimage, :content_type => ['image/jpeg', 'image/gif', 'image/png']

  
  def self.find_by_position
    find(:all, :order => "position")
  end

end