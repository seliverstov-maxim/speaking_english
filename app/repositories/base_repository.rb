module BaseRepository
  extend ActiveSupport::Concern
  include StateMachineRepository
  included do
  end
end