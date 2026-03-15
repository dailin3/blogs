+++
title = "Example Post"
date = "2026-03-15"
updated = "2022-05-01"
path = "example/"
authors = ["Dailin"]
description = "this is description for example post" 
weight = 2

[taxonomies]
tags=["example"]

[extra]
comment = true
repo_view = true
hidden = true
+++

above is meta data.

<style>
.hplink {
    color: blue;
}
</style>

<div>
    <a class="hplink" href="/blogs">this is a test for html</a>
    <p>this is a test for html</p>
    <button>this is a test for html</button>
</div>

this is character shortcode template, you can use it to create your own character shortcodes.

{{ character(name="hooded", body="Whaaaaaaaaaaaaaaaaaaat, that's almost 70 years ago???") }}

{% character(name="hooded") %}
There's also a more modern version which is a bit easier to read:
```
program helloWorld
   print *, "Hello World!"
end program helloWorld
```
{% end %}

Good to know, thanks buddy!

{{ character(body=":)", position="left") }}

![Markdown Logo](https://markdown-here.com/img/icon256.png)


<details>
    <summary>Title 1</summary>
    <p>IT'S A SECRET TO EVERYBODY.</p>
</details>


# Inline Math

- $(a+b)^2$ = $a^2 + 2ab + b^2$
- A polynomial P of degree d over $\mathbb{F}_p$ is an expression of the form
  $P(s) = a_0 + a_1 . s + a_2 . s^2 + ... + a_d . s^d$ for some
  $a_0,..,a_d \in \mathbb{F}_p$

# Displayed Math

$$
p := (\sum_{k∈I}{c_k.v_k} + \delta_v.t(x))·(\sum_{k∈I}{c_k.w_k} + \delta_w.t(x)) − (\sum_{k∈I}{c_k.y_k} + \delta_y.t(x))
$$

This Theme supports [mermaid](https://mermaid.js.org/) markdown diagram rendering.

{% mermaid() %}
graph LR
    A[Start] --> B[Initialize]
    B --> C[Processing]
    C --> D[Complete]
    D --> E[Success]

    style A fill:#f9f,stroke:#333
    style E fill:#9f9,stroke:#333
{% end %}


this is note block:

{{ note(center=true ,clickable=true, hidden = true, header="Quiz!", body="The answer to the quiz!") }}


{% note(clickable=true, header="Quiz!") %}

<h1> This is a html header in note block </h1>

# Hello this is markdown inside a note shortcode

\`\`\`rust
fn main() {
    println!("Hello World");
}
\`\`\`

We can't call another shortcode inside a shortcode, but this is good enough.

{% end %}