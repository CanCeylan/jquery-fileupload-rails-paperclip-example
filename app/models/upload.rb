class Upload < ActiveRecord::Base
  attr_accessible :upload, :position
  has_attached_file :upload,  :styles => {
      :thumb => ["150x172#",:jpg],
      :large => ["100%", :jpg]
  }

  include Rails.application.routes.url_helpers

  has_many :descriptions
  has_many :tags, :through => :descriptions

  validates_attachment :upload, :presence => true,
                       :size => { :in => 0..2000.kilobytes }

  def to_jq_upload
    {
      "name" => read_attribute(:upload_file_name),
      "size" => read_attribute(:upload_file_size),
      "url" => upload.url(:original),
      "delete_url" => upload_path(self),
      "delete_type" => "DELETE" 
    }
  end

end
