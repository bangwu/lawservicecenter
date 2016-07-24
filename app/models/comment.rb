class Comment < ApplicationRecord
  belongs_to :consult
  belongs_to :user
  mount_uploader :attachment, AttachmentUploader
end
