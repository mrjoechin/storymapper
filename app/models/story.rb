class Story < ActiveRecord::Base
  belongs_to :storymap

  enum story_type: {backbone: 0, userstory: 1}
end
