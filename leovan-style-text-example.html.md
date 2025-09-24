---
title: "Quarto Style Text Extension Example"
abstract: "This is an example document of quarto style text extension."
filters:
  - style-text
format:
  html:
    keep-md: true
    embed-resources: true
  pdf:
    keep-tex: true
---

## Parameters


::: {.cell}

```{.r .cell-code}
color <- '#00ff00'
opacity <- 0.8
font <- 'Times New Roman'
font_size <- 2
font_weight <- 'bold'
font_style <- 'italic'
box_background_color <- '#d9d9d9'
box_background_opacity <- 1.0
box_border_color <- '#000000'
box_border_opacity <- 1.0
box_border_style <- 'dashed'
box_border_width <- 0.1
box_padding <- 0.4
box_radius <- 0.4
box_shadow_color <- '#bfbfbf'
box_shadow_opacity <- 1.0
box_shadow_x_offset <- 0.2
box_shadow_y_offset <- 0.2
box_shadow_blur_radius <- 0.2
box_shadow_spread_radius <- 0.1
text_decoration_line <- 'underline'
text_decoration_style <- 'dashed'
text_decoration_color <- '#00ff00'
text_decoration_thickness <- 0.1
text_shadow_color <- '#bfbfbf'
text_shadow_opacity <- 1.0
text_shadow_x_offset <- 0.1
text_shadow_y_offset <- 0.1
text_shadow_blur_radius <- 0.1
```
:::


## Inline

### Color

Here is [a text]{.style-text color="\#00ff00"}, [an equation $E = m c^2$]{.style-text color="\#00ff00"} and [a code `ls -al`]{.style-text color="\#00ff00"}.

### Opacity

Hear is [a text]{.style-text opacity="0.8"}, [an equation $E = m c^2$]{.style-text opacity="0.8"} and [a code `ls -al`]{.style-text opacity="0.8"}.

### Font

Hear is [a text]{.style-text font="Times New Roman"}, [an equation $E = m c^2$]{.style-text font="Times New Roman"} and [a code `ls -al`]{.style-text font="Times New Roman"}.

### Font size

Hear is [a text]{.style-text font-size="2"}, [an equation $E = m c^2$]{.style-text font-size="2"} and [a code `ls -al`]{.style-text font-size="2"}.

### Font weight

Hear is [a text]{.style-text font-weight="bold"}, [an equation $E = m c^2$]{.style-text font-weight="bold"} and [a code `ls -al`]{.style-text font-weight="bold"}.

### Font style

Hear is [a text]{.style-text font-style="italic"}, [an equation $E = m c^2$]{.style-text font-style="italic"} and [a code `ls -al`]{.style-text font-style="italic"}.

### Box

Hear is [a text]{.style-text  box-background-color="\#d9d9d9" box-background-opacity="1" box-border-color="\#000000"box-border-opacity="1" box-border-style="dashed" box-border-width="0.1" box-padding="0.4" box-radius="0.4" box-shadow-color="\#bfbfbf" box-shadow-opacity="1" box-shadow-x-offset="0.2" box-shadow-y-offset="0.2" box-shadow-blur-radius="0.2" box-shadow-spread-radius="0.1"}, [an equation $E = m c^2$]{.style-text  box-background-color="\#d9d9d9" box-background-opacity="1" box-border-color="\#000000"box-border-opacity="1" box-border-style="dashed" box-border-width="0.1" box-padding="0.4" box-radius="0.4" box-shadow-color="\#bfbfbf" box-shadow-opacity="1" box-shadow-x-offset="0.2" box-shadow-y-offset="0.2" box-shadow-blur-radius="0.2" box-shadow-spread-radius="0.1"} and [a code `ls -al`]{.style-text  box-background-color="\#d9d9d9" box-background-opacity="1" box-border-color="\#000000"box-border-opacity="1" box-border-style="dashed" box-border-width="0.1" box-padding="0.4" box-radius="0.4" box-shadow-color="\#bfbfbf" box-shadow-opacity="1" box-shadow-x-offset="0.2" box-shadow-y-offset="0.2" box-shadow-blur-radius="0.2" box-shadow-spread-radius="0.1"}.

### Text decoration

Hear is [a text]{.style-text text-decoration-line="underline" text-decoration-style="dashed" text-decoration-color="\#00ff00" text-decoration-thickness="0.1"}, [an equation $E = m c^2$]{.style-text text-decoration-line="underline" text-decoration-style="dashed" text-decoration-color="\#00ff00" text-decoration-thickness="0.1"} and [a code `ls -al`]{.style-text text-decoration-line="underline" text-decoration-style="dashed" text-decoration-color="\#00ff00" text-decoration-thickness="0.1"}.

### Text shadow

Hear is [a text]{.style-text text-shadow-color="\#bfbfbf" text-shadow-opacity="1" text-shadow-x-offset="0.1" text-shadow-y-offset="0.1" text-shadow-blur-radius="0.1"}, [an equation $E = m c^2$]{.style-text text-shadow-color="\#bfbfbf" text-shadow-opacity="1" text-shadow-x-offset="0.1" text-shadow-y-offset="0.1" text-shadow-blur-radius="0.1"} and [a code `ls -al`]{.style-text text-shadow-color="\#bfbfbf" text-shadow-opacity="1" text-shadow-x-offset="0.1" text-shadow-y-offset="0.1" text-shadow-blur-radius="0.1"}.

### Callout

::: {.callout-note}
Here is [a text]{.style-text color="\#00ff00"}, [an equation $E = m c^2$]{.style-text color="\#00ff00"} and [a code `ls -al`]{.style-text color="\#00ff00"}.
:::

## Paragrah

### Color

::: {.style-text color="\#00ff00"}
Hear is a text, an equation:

$$E = m c^2$$

and a code:

```bash
ls -al
```
:::

### Opacity

::: {.style-text opacity="0.8"}
Hear is a text, an equation:

$$E = m c^2$$

and a code:

```bash
ls -al
```
:::

### Font

::: {.style-text font="Times New Roman"}
Hear is a text, an equation:

$$E = m c^2$$

and a code:

```bash
ls -al
```
:::

### Font Size

::: {.style-text font-size="2"}
Hear is a text, an equation:

$$E = m c^2$$

and a code:

```bash
ls -al
```
:::

### Box

::: {.style-text box-background-color="\#d9d9d9" box-background-opacity="1" box-border-color="\#000000"box-border-opacity="1" box-border-style="dashed" box-border-width="0.1" box-padding="0.4" box-radius="0.4" box-shadow-color="\#bfbfbf" box-shadow-opacity="1" box-shadow-x-offset="0.2" box-shadow-y-offset="0.2" box-shadow-blur-radius="0.2" box-shadow-spread-radius="0.1"}
Hear is a text, an equation:

$$E = m c^2$$

and a code:

```bash
ls -al
```
:::

### Text decoration

Only supported in `html` output.

::: {.content-visible when-format="html"}
::: {.style-text text-decoration-line="underline" text-decoration-style="dashed" text-decoration-color="\#00ff00" text-decoration-thickness="0.1"}
Hear is a text, an equation:

$$E = m c^2$$

and a code:

```bash
ls -al
```
:::
:::

### Text shadow

Only supported in `html` output.

::: {.content-visible when-format="html"}
::: {.style-text text-shadow-color="\#bfbfbf" text-shadow-opacity="1" text-shadow-x-offset="0.1" text-shadow-y-offset="0.1" text-shadow-blur-radius="0.1"}
Hear is a text, an equation:

$$E = m c^2$$

and a code:

```bash
ls -al
```
:::
:::

### Callout

::: {.callout-note}
::: {.style-text color="\#00ff00"}
Hear is a text, an equation:

$$E = m c^2$$

and a code:

```bash
ls -al
```
:::
:::
