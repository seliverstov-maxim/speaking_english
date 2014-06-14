class Video < ActiveRecord::Base
  has_many :subtitle

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
