class Subtitle < ActiveRecord::Base
  belongs_to :video

  state_machine initial: :active do
    state :active
    state :deleted

    event :restore do
      transition all => :active
    end

    event :mark_as_deleted do
      transition all => :deleted
    end
  end
end
