---
layout: doc
title: "Markdown reference"
description: "This guide introduces you to the elements that can be used to write documentation or blog articles."
image: site_assets/img/social.jpg
only_for_dev: true
order: 500
---

<aside class="note">
  <h3>Only for dev</h3>
  <p>
    This documentation is available only in development and is not published in production.
  </p>
</aside>

This page presents the possibilities offered by the documentation publication system which transform Markdown files to a static web site.

You can use it as a reference when writing documentation. This documentation also allows us to validate the display of all graphic components available.


## Paragraphs, emphasis & links

To create paragraphs, use a blank line to separate one or more lines of text. You should not indent paragraphs with spaces or tabs.

__Code__

    You can add emphasis by making text __bold__ or _italic_. And
    [this is a link](https://unsplash.com/).

__Becomes__

You can add emphasis by making text __bold__ or _italic_. And
[this is a link](https://unsplash.com/).


## Headings

To create a heading, add number signs (`#`) in front of a word or phrase. The number of number signs you use should correspond to the heading level.

<aside class="primary">
  <p>Start with level 2 i.e. (<code>##</code>) in blog post & documentation pages.</p>
  <p>Level 1 i.e. (<code>#</code>) is reserved to post or page title set with markdown metadata.</p>
</aside>

__Code__

    ### Headings (level 3)
    #### Headings (level 4)
    ##### Headings (level 5)
    ###### Headings (level 6)

__Becomes__

### Headings (level 3)
#### Headings (level 4)
##### Headings (level 5)
###### Headings (level 6)


## List

You can organize items into ordered and unordered lists.

### Unordered Lists

To create an unordered list, add dashes, asterisks, or plus signs in front of line items. Indent one or more items to create a nested list.


__Code__

```
* Lorem ipsum dolor sit amet, consectetur adipisicing elit.
* Enim facere ea assumenda saepe labore :
  * Exercitationem ad tempora commodi.
  * Animi voluptatum consequuntur quos.
* Aut quod libero nam perferendis iure blanditiis voluptatibus.
```

__Becomes__

* Lorem ipsum dolor sit amet, consectetur adipisicing elit.
* Enim facere ea assumenda saepe labore :
  * Exercitationem ad tempora commodi.
  * Animi voluptatum consequuntur quos.
* Aut quod libero nam perferendis iure blanditiis voluptatibus.

### Ordered Lists

To create an ordered list, add line items with numbers followed by periods. The numbers don’t have to be in numerical order, but the list should start with the number one.

__Code__

```
1. Lorem ipsum dolor sit amet, consectetur adipisicing elit.
2. Enim facere ea assumenda saepe labore :
    1. Exercitationem ad tempora commodi.
    2. Animi voluptatum consequuntur quos.
3. Aut quod libero nam perferendis iure blanditiis voluptatibus.
```
__Becomes__

1. Lorem ipsum dolor sit amet, consectetur adipisicing elit.
2. Enim facere ea assumenda saepe labore :
    1. Exercitationem ad tempora commodi.
    2. Animi voluptatum consequuntur quos.
3. Aut quod libero nam perferendis iure blanditiis voluptatibus.

## Blockquotes

__Code__

```
> There is only one God, his name is Death. And there is only one
> thing we say to Death : “Not today”.
> <cite>Game of Thrones, Syrio Forel to Arya.</cite>
```

__Becomes__

> There is only one God, his name is Death. And there is only one thing we say
> to Death : “Not today”.
> <cite>Game of Thrones, Syrio Forel to Arya.</cite>


## Images

Images are automatically transformed into a `figure`. If present, image title attribute is used to generate `figcaption`.

__Code__

    ![Aerial view of a beach](img/nature.jpg "Nature is beautiful")

__Becomes__

![Aerial view of a beach](img/nature.jpg "Nature is beautiful")


## Code

### Inline code

To denote a word or phrase as code, enclose it in tick marks.

__Code__

    For example: `this is code`, right?

__Becomes__

For example: `this is code`, right?

### Block code

#### Without highlight

To create code blocks, indent every line of the block by at least four spaces or one tab.

__Code__

```
    {
      "solution": {
        "type": "query",
        "joke": {
          "query": "Anton, do you think I’m a bad mother?",
          "response": "My name is Paul."
        }
      }
    }
```

__Becomes__

    {
      "solution": {
        "type": "query",
        "joke": {
          "query": "Anton, do you think I’m a bad mother?",
          "response": "My name is Paul."
        }
      }
    }


#### With highlight

To set up syntax highlighting use fenced code blocks markup.

__Code__

~~~
```ruby
class Array
  def extract!
    return to_enum(:extract!) { size } unless block_given?
    extracted_elements = []
    reject! do |element|
      extracted_elements << element if yield(element)
    end
    extracted_elements
  end
end
```
~~~

__Becomes__

```ruby
class Array
  def extract!
    return to_enum(:extract!) { size } unless block_given?
    extracted_elements = []
    reject! do |element|
      extracted_elements << element if yield(element)
    end
    extracted_elements
  end
end
```

__Code__

~~~
```json
{
  "solution": {
    "developper": true,
    "name": "Michel"
  }
}
```
~~~

__Becomes__

```json
{
  "solution": {
    "developper": true,
    "name": "Michel"
  }
}
```


## Tables

Since it is possible to write HTML in a markdown document, you can use HTML tables.

__Code__

```html
<table>
  <thead>
    <tr>
      <th>Name</th>
      <th>Attacker king</th>
      <th>Defender king</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>Battle of the Golden Tooth</td>
      <td>Joffrey/Tommen Baratheon</td>
      <td>Robb Stark</td>
    </tr>
    <tr>
      <td>Battle of the Green Fork</td>
      <td>Robb Stark</td>
      <td>Joffrey/Tommen Baratheon</td>
    </tr>
    <tr>
      <td>Battle of Castle Black</td>
      <td>Stannis Baratheon</td>
      <td>Mance Rayder</td>
    </tr>
  </tbody>
</table>
```

__Becomes__

<table>
  <thead>
    <tr>
      <th>Name</th>
      <th>Attacker king</th>
      <th>Defender king</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>Battle of the Golden Tooth</td>
      <td>Joffrey/Tommen Baratheon</td>
      <td>Robb Stark</td>
    </tr>
    <tr>
      <td>Battle of the Green Fork</td>
      <td>Robb Stark</td>
      <td>Joffrey/Tommen Baratheon</td>
    </tr>
    <tr>
      <td>Battle of Castle Black</td>
      <td>Stannis Baratheon</td>
      <td>Mance Rayder</td>
    </tr>
  </tbody>
</table>


## Tag

Small tag labels to insert anywhere with several variants.

__Code__

```html
<span class="tag">Base tag</span>
<span class="tag tag--primary">Primary variant</span>
<span class="tag tag--warning">Warning variant</span>
<span class="tag tag--success">Success variant</span>
```

__Becomes__

<span class="tag">Base tag</span>
<span class="tag tag--primary">Primary variant</span>
<span class="tag tag--warning">Warning variant</span>
<span class="tag tag--success">Success variant</span>

## Aside

HTML block <code>aside</code> are used to display notes. Several variants are available.

### Aside variant: <code>note</code>

__Code__

```html
<aside class="note">
  <h3>Note</h3>
  <p>
    Lorem ipsum dolor sit amet, consectetur adipisicing elit.
  </p>
</aside>

Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dolores unde
facilis aspernatur non, repellendus molestias nesciunt officiis ab
expedita dolorum fugiat debitis nisi distinctio necessitatibus soluta
tenetur et fugit sequi.
```

__Becomes__

<aside class="note">
  <h3>Note</h3>
  <p>
    Lorem ipsum dolor sit amet, consectetur adipisicing elit.
  </p>
</aside>

Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dolores unde
facilis aspernatur non, repellendus molestias nesciunt officiis ab
expedita dolorum fugiat debitis nisi distinctio necessitatibus soluta
tenetur et fugit sequi.


### Aside variant: <code>primary</code>

__Code__

```html
<aside class="primary">
  <p>
    Lorem ipsum dolor sit amet, consectetur adipisicing elit.
    Id quia natus aut. Debitis eligendi iste, accusamus! Molestias
    facilis dolor doloribus sequi, officiis debitis.
  </p>
</aside>
```

__Becomes__

<aside class="primary">
  <p>
    Lorem ipsum dolor sit amet, consectetur adipisicing elit.
    Id quia natus aut. Debitis eligendi iste, accusamus! Molestias
    facilis dolor doloribus sequi, officiis debitis.
  </p>
</aside>

### Aside variant: <code>warning</code>

__Code__

```html
<aside class="warning">
  <p>
    Lorem ipsum dolor sit amet, consectetur adipisicing elit.
    Id quia natus aut. Debitis eligendi iste, accusamus! Molestias
    facilis dolor doloribus sequi, officiis debitis.
  </p>
</aside>
```

__Becomes__

<aside class="warning">
  <p>
    Lorem ipsum dolor sit amet, consectetur adipisicing elit.
    Id quia natus aut. Debitis eligendi iste, accusamus! Molestias
    facilis dolor doloribus sequi, officiis debitis.
  </p>
</aside>

### Aside variant: <code>success</code>

__Code__

```html
<aside class="success">
  <p>
    Lorem ipsum dolor sit amet, consectetur adipisicing elit.
    Id quia natus aut. Debitis eligendi iste, accusamus! Molestias
    facilis dolor doloribus sequi, officiis debitis.
  </p>
</aside>
```

__Becomes__

<aside class="success">
  <p>
    Lorem ipsum dolor sit amet, consectetur adipisicing elit.
    Id quia natus aut. Debitis eligendi iste, accusamus! Molestias
    facilis dolor doloribus sequi, officiis debitis.
  </p>
</aside>


## Emoji

You can, if you wish, use emoji, rather cool, right? :smile:

We use the GitHub-flavored emoji plugin for Jekyll. Please refer to the [Emoji cheat sheet](https://www.webfx.com/tools/emoji-cheat-sheet/). :tropical_drink:

__Code__

```html
Some examples: :facepunch: :heart_eyes_cat: :tropical_drink: :panda_face:
```

__Becomes__

Some examples: :facepunch: :heart_eyes_cat: :tropical_drink: :panda_face:


## Abbreviations

[kramdown](https://kramdown.gettalong.org/syntax.html#abbreviations) provides a syntax to assign the full phrase to an abbreviation. When writing the text, you don’t need to do anything special. However, once you add abbreviation definitions, the abbreviations in the text get marked up automatically. Abbreviations can consist of any character except a closing bracket.

__Code__

```html
This page is build with HTML, CSS and JS code.

*[HTML]: HyperText Markup Language
*[CSS]: Cascading Style Sheets
*[JS]: JavaScript
```


__Becomes__

This page is build with HTML, CSS and JS code.

*[HTML]: HyperText Markup Language
*[CSS]: Cascading Style Sheets
*[JS]: JavaScript


## Footnotes

[kramdown](https://kramdown.gettalong.org/syntax.html#footnotes) also provides a syntax to make footnotes.

__Code__

```html
This is some text.[^1]. Other text[^2].

[^1]: Some *crazy* footnote definition.
[^2]: Another *crazy* footnote definition.

Pretty cool! :beers:
```

__Becomes__


This is some text.[^1]. Other text[^2].

[^1]: Some *crazy* footnote definition.
[^2]: Another *crazy* footnote definition.

Pretty cool! :beers:


## Color reference

### Grey (100-900)

<div class="color color--grey-100"></div>
<div class="color color--grey-200"></div>
<div class="color color--grey-300"></div>
<div class="color color--grey-400"></div>
<div class="color color--grey-500"></div>
<div class="color color--grey-600"></div>
<div class="color color--grey-700"></div>
<div class="color color--grey-800"></div>
<div class="color color--grey-900"></div>
