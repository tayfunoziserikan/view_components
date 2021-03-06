---
title: Label
status: Alpha
source: https://github.com/primer/view_components/tree/main/app/components/primer/label_component.rb
---

<!-- Warning: AUTO-GENERATED file, do not edit. Add code comments to your Ruby instead <3 -->

Use labels to add contextual metadata to a design.

## Examples

### Schemes

<iframe onLoad={(e) => e.target.style.height = e.target.contentWindow.document.body.scrollHeight + 34 + 'px'} style="width: 100%; border: 0px;" srcdoc="<html class='Box height-full p-3'><head><link href='https://unpkg.com/@primer/css-next@canary/dist/primer.css' rel='stylesheet'></head><body><span title='Label: Label' class='Label bg-blue'>default</span><span title='Label: Label' class='Label Label--gray '>gray</span><span title='Label: Label' class='Label Label--gray-darker '>dark_gray</span><span title='Label: Label' class='Label Label--yellow '>yellow</span><span title='Label: Label' class='Label Label--green '>green</span><span title='Label: Label' class='Label Label--purple '>purple</span></body></html>"></iframe>

```erb
<%= render(Primer::LabelComponent.new(title: "Label: Label")) { "default" } %>
<%= render(Primer::LabelComponent.new(title: "Label: Label", scheme: :gray)) { "gray" } %>
<%= render(Primer::LabelComponent.new(title: "Label: Label", scheme: :dark_gray)) { "dark_gray" } %>
<%= render(Primer::LabelComponent.new(title: "Label: Label", scheme: :yellow)) { "yellow" } %>
<%= render(Primer::LabelComponent.new(title: "Label: Label", scheme: :green)) { "green" } %>
<%= render(Primer::LabelComponent.new(title: "Label: Label", scheme: :purple)) { "purple" } %>
```

### Variants

<iframe onLoad={(e) => e.target.style.height = e.target.contentWindow.document.body.scrollHeight + 34 + 'px'} style="width: 100%; border: 0px;" srcdoc="<html class='Box height-full p-3'><head><link href='https://unpkg.com/@primer/css-next@canary/dist/primer.css' rel='stylesheet'></head><body><span title='Label: Label' class='Label bg-blue'>Default</span><span title='Label: Label' class='Label Label--large bg-blue'>Large</span></body></html>"></iframe>

```erb
<%= render(Primer::LabelComponent.new(title: "Label: Label")) { "Default" } %>
<%= render(Primer::LabelComponent.new(title: "Label: Label", variant: :large)) { "Large" } %>
```

## Arguments

| Name | Type | Default | Description |
| :- | :- | :- | :- |
| `title` | `String` | N/A | `title` attribute for the component element. |
| `scheme` | `Symbol` | `nil` | One of `:gray`, `:dark_gray`, `:yellow`, `:orange`, `:red`, `:green`, `:blue`, `:purple`, `:pink`, `:outline`, or `:green_outline`. |
| `variant` | `Symbol` | `nil` | One of `:large`, `:inline`, or `nil`. |
| `system_arguments` | `Hash` | N/A | [System arguments](/system-arguments) |
