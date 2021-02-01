---
title: CharactersRemaining
status: Experimental
source: https://github.com/primer/view_components/tree/main/app/components/primer/characters_remaining_component.rb
---

<!-- Warning: AUTO-GENERATED file, do not edit. Add code comments to your Ruby instead <3 -->

CharactersRemaining will render text that updates dynamically as the user types in an input.

## Examples

### Basic

<iframe style="width: 100%; border: 0px; height: 50px;" srcdoc="<html><head><link href='https://unpkg.com/@primer/css/dist/primer.css' rel='stylesheet'><script src='/static/index.js'></script></head><body><input type='text' id='the_input' maxlength='10'/><characters-remaining for='the_input'>  %d characters remaining</characters-remaining></body></html>"></iframe>

```erb
<input type="text" id="the_input" maxlength="10"/>
<%= render(Primer::CharactersRemainingComponent.new(input_name: "the_input")) do %>
  %d characters remaining
<% end %>
```

## Arguments

| Name | Type | Default | Description |
| :- | :- | :- | :- |
| `system_arguments` | `Hash` | N/A | [System arguments](/system-arguments) |
