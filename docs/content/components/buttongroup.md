---
title: ButtonGroup
status: Alpha
source: https://github.com/primer/view_components/tree/main/app/components/primer/button_group_component.rb
---

<!-- Warning: AUTO-GENERATED file, do not edit. Add code comments to your Ruby instead <3 -->

Use ButtonGroupComponent to render a series of buttons.

## Examples

### Default

<iframe onLoad={(e) => e.target.style.height = e.target.contentWindow.document.body.scrollHeight + 34 + 'px'} style="width: 100%; border: 0px;" srcdoc="<html class='Box height-full p-3'><head><link href='https://unpkg.com/@primer/css-next@canary/dist/primer.css' rel='stylesheet'></head><body><div class='BtnGroup '>    <button type='button' class='btn BtnGroup-item '>Default</button>    <button type='button' class='btn btn-primary BtnGroup-item '>Primary</button>    <button type='button' class='btn btn-danger BtnGroup-item '>Danger</button>    <button type='button' class='btn btn-outline BtnGroup-item '>Outline</button>    <button type='button' class='btn my-class BtnGroup-item '>Custom class</button></div></body></html>"></iframe>

```erb
<%= render(Primer::ButtonGroupComponent.new) do |component|
  component.button { "Default" }
  component.button(button_type: :primary) { "Primary" }
  component.button(button_type: :danger) { "Danger" }
  component.button(button_type: :outline) { "Outline" }
  component.button(classes: "my-class") { "Custom class" }
end %>
```

## Arguments

| Name | Type | Default | Description |
| :- | :- | :- | :- |
| `system_arguments` | `Hash` | N/A | [System arguments](/system-arguments) |

## Slots

### `Buttons`

Required list of buttons to be rendered.

| Name | Type | Default | Description |
| :- | :- | :- | :- |
| `kwargs` | `Hash` | N/A | The same arguments as [Button](/components/button). |
