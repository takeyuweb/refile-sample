class Upload < ActiveRecord::Base
  include Confirmable
  attachment :file
end
