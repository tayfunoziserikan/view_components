# frozen_string_literal: true

module Primer
  # CharactersRemaining will render text that updates dynamically as the user types in an input.
  class CharactersRemainingComponent < Primer::Component
    # @example 50|Basic
    #   <input type="text" id="the_input" maxlength="10"/>
    #   <%= render(Primer::CharactersRemainingComponent.new(input_name: "the_input")) do %>
    #     %d characters remaining
    #   <% end %>
    #
    # @param system_arguments [Hash] <%= link_to_system_arguments_docs %>
    def initialize(input_name:, **system_arguments)
      @system_arguments = system_arguments
      @system_arguments[:tag] = :"characters-remaining"
      @system_arguments[:for] = input_name
    end

    def call
      render(Primer::BaseComponent.new(**@system_arguments)) { content }
    end
  end
end
