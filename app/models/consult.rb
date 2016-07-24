class Consult < ApplicationRecord
  has_many :comments
  belongs_to :user

  enum question_type: [ :法律咨询, :立案咨询, :司法确认, :案件流程查询, :举报投诉, :信访申诉 ]
  mount_uploader :attachment, AttachmentUploader
end
