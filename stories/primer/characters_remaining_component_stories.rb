# frozen_string_literal: true

class Primer::CharactersRemainingStories < ViewComponent::Storybook::Stories
  layout "storybook_preview"

  story(:characters_remaining) do
    content do
      "%d characters remaining."
    end
  end
end
