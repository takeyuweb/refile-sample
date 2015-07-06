class Upload < ActiveRecord::Base
  include Confirmable
  attachment :file, type: :image
end
