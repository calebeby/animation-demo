---
title: Transitions, Animations, and Parallax Effects
layout: layout
---

# Transitions, Animations, and Parallax Effects
# Transitions, Animations, and Parallax Effects
## CSS Transitions

CSS transitions let you change from one state to another, smoothly:

<p data-height="380" data-theme-id="20340" data-slug-hash="qNxwoy" data-default-tab="css,result" data-user="calebeby" data-embed-version="2" class="codepen">See the Pen <a href="http://codepen.io/calebeby/pen/qNxwoy/">CSS Transitions</a> by Caleb (<a href="http://codepen.io/calebeby">@calebeby</a>) on <a href="http://codepen.io">CodePen</a>.</p>

You can transition many CSS properties. [A full list of animatable properties is on MDN](https://developer.mozilla.org/en-US/docs/Web/CSS/CSS_animated_properties)
CSS Transitions have very good performance in the browser, and are easy to use, but they do not have advanced features.

## CSS Animations

CSS Animations let you do more advanced animations that do not have to be attatched to an event (like hover). They can be run infinitely, or a certain number of times. You can also add more 'stops'. With transitions, you must always have two stops: start and end. With CSS Animations, you can have as many stops as you want. They also have good performance.

You should definitely check out [Daniel Eden's Animate.css library](https://daneden.github.io/animate.css/). It has a bunch of pre-built animations that you can easily use in projects. [CSS-Tricks has a great article on CSS Animations](https://css-tricks.com/almanac/properties/a/animation/). I have one of their demos below:

<p data-height="500" data-theme-id="20340" data-slug-hash="dXdLLA" data-default-tab="css,result" data-user="calebeby" data-embed-version="2" class="codepen">See the Pen <a href="http://codepen.io/calebeby/pen/dXdLLA/">CSS Animations</a> by Caleb (<a href="http://codepen.io/calebeby">@calebeby</a>) on <a href="http://codepen.io">CodePen</a>.</p>

## GreenSock Animation Platform (GSAP)

[GSAP](http://greensock.com/gsap) is a very powerful JavaScript Animation library that has great browser support and performs very well. GSAP is free, but they have some very useful plugins for paid members. Because it uses JavaScript, it is harder to use, but it has many more options.

<p data-height="570" data-theme-id="20340" data-slug-hash="ZOAkgA" data-default-tab="js,result" data-user="calebeby" data-embed-version="2" class="codepen">See the Pen <a href="http://codepen.io/calebeby/pen/ZOAkgA/">GreenSock Animation Platform</a> by Caleb (<a href="http://codepen.io/calebeby">@calebeby</a>) on <a href="http://codepen.io">CodePen</a>.</p>

Petr Tichy has some great GreenSock resources. [His blog posts are very helpful](https://ihatetomatoes.net/?s=greensock&post_type=post), as well as his [GreenSock Cheatsheet](https://ihatetomatoes.net/wp-content/uploads/2016/07/GreenSock-Cheatsheet-4.pdf).

## ScrollMagic

[ScrollMagic](http://scrollmagic.io/) is a really cool parallax scrolling JS library. It allows you to attatch [GreenSock](http://greensock.com/gsap) and [Velocity](http://velocityjs.org/) animations to the scroll of the page. See the demo below:

<p data-height="500" data-theme-id="20340" data-slug-hash="oLERNO" data-default-tab="js,result" data-user="calebeby" data-embed-version="2" class="codepen">See the Pen <a href="http://codepen.io/calebeby/pen/oLERNO/">ScrollMagic</a> by Caleb (<a href="http://codepen.io/calebeby">@calebeby</a>) on <a href="http://codepen.io">CodePen</a>.</p>

Again, Petr Tichy explains ScrollMagic really well in his [blog posts](https://ihatetomatoes.net/?s=scrollmagic&post_type=post) and [ScrollMagic Cheatsheet](https://ihatetomatoes.net/wp-content/uploads/2016/07/ScrollMagic-CheatsheetV1.pdf).

## Three.js

[Three.js](http://threejs.org/) is a really cool 3D animation library for JS. It is rather complicated, but [people have done really cool stuff with it](http://threejs.org/).

<p data-height="500" data-theme-id="20340" data-slug-hash="AXyOpZ" data-default-tab="js,result" data-user="calebeby" data-embed-version="2" class="codepen">See the Pen <a href="http://codepen.io/calebeby/pen/AXyOpZ/">three.js</a> by Caleb (<a href="http://codepen.io/calebeby">@calebeby</a>) on <a href="http://codepen.io">CodePen</a>.</p>

[Lee Stemkoski has put together a ton of cool examples](https://stemkoski.github.io/Three.js/).

