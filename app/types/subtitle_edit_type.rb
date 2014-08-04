class SubtitleEditType < Subtitle
  include ApplicationType

  permit :lang, :state_event, :source, :video_id
end