# frozen_string_literal: true

class Primer::TimeAgoComponentStories < ViewComponent::Storybook::Stories
  layout "storybook_preview"

  story(:timeago) do
    controls do
      text(:time, "")
    end
  end
end
