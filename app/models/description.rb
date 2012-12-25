class Description < ActiveRecord::Base
  attr_accessible :tag_id, :upload_id
  belongs_to :tag
  belongs_to :upload

end
