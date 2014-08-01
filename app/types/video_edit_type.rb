class VideoEditType < Video
  include ApplicationType

  permit :title, :state_event, :slug, :description, :sourcecode
end