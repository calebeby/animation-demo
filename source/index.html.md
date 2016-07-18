---
title: Transitions, Animations, and Parallax Effects
layout: layout
---

# Transitions, Animations, and Parallax Effects

## CSS Transitions

CSS transitions let you change from one state to another, smoothly:

<div class='box'>Hover</div>

```html
<div class='box'>Hover</div>
```

```css
.box {
  text-align: center;
  padding: 20px;
  margin: 20px;
  background-color: red;
  transition: background-color 2s ease; /* Without this it would jump between states */
}
.box:hover {
  background-color: green;
  padding: 10px;
}
```

You can transition many CSS properties. [A full list of animatable properties is on MDN](https://developer.mozilla.org/en-US/docs/Web/CSS/CSS_animated_properties)
CSS Transitions have very good performance in the browser, and are easy to use, but they do not have advanced features.

## CSS Animations

CSS Animations let you do more advanced animations that do not have to be attatched to an event (like hover). They can be run infinitely, or a certain number of times. You can also add more 'stops'. With transitions, you must always have two stops: start and end. With CSS Animations, you can have as many stops as you want. They also have good performance because they are built in to CSS.

You should definitely check out [Daniel Eden's Animate.css library](https://daneden.github.io/animate.css/). It has a bunch of pre-built animations that you can easily use. [CSS-Tricks has a great article on CSS Animations](https://css-tricks.com/almanac/properties/a/animation/). I have one of their demos below:

<div class="box2"></div>

```html
<div class="box2"></div>
```

```css
.box2 {
  width: 100%;
  height: 50px;
  animation: pulse 5s infinite;
}

@keyframes pulse {
  0% {
    background-color: #001F3F;
  }
  10% {
    background-color: green;
  }
  100% {
    background-color: #FF4136;
  }
}
```

## GreenSock Animation Platform (GSAP)

GSAP is a very powerful JavaScript Animation library that has great browser support and performs very well. GSAP is free, but they have some very useful plugins for paid members. Because it uses JavaScript, it is harder to use, but it has many more options.

<div class='container'>
  <div class='box3'></div>
</div>

```html
<div class='container'>
  <div class='box3'></div>
</div>
<!-- Load the script -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/gsap/1.18.5/TweenMax.min.js"></script>
```

```css
.container {
  width: 100%;
  height: 500px;
}

.container .box3 {
  width: 50px;
  height: 50px;
  background-color: green;
  position: absolute;
}
```

CoffeeScript is like JavaScript, except easier to read and write. The computer turns it into JavaScript. You can see the generated JavaScript below the CoffeeScript.

```coffee
box = document.querySelectorAll '.container .box3'

timeline = new TimelineMax (
  repeat: -1 # repeat infinitely
  yoyo: true # play forwards, reverse instead of forwards, forwards
)

#        Element duration
#            |   |
#            V   V
timeline.to box, 4, (
  right: 0              # <- Properties to change
  ease: Power0.easeNone # <- Ease
), 0 # <- When to start it

timeline.to box, 3, (
  y: 400
  ease: Bounce.easeOut
), 1

timeline.to box, 3, (
  rotation: 180
  borderRadius: '50%' # change to circle
  backgroundColor: 'red'
), 1
```

```js
var box, timeline;

box = document.querySelectorAll('.container .box3');

timeline = new TimelineMax({
  repeat: -1,
  yoyo: true
});

timeline.to(box, 4, {
  right: 0,
  ease: Power0.easeNone
}, 0);

timeline.to(box, 3, {
  y: 400,
  ease: Bounce.easeOut
}, 1);

timeline.to(box, 3, {
  rotation: 180,
  borderRadius: '50%',
  backgroundColor: 'red'
}, 1);
```

## ScrollMagic

<div class='container'>
  <div class='box4'></div>
</div>

```html
<!-- get TweenMax -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/gsap/1.18.5/TweenMax.min.js"></script>
<!-- get ScrollMagic -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/ScrollMagic/2.0.5/ScrollMagic.min.js"></script>
<!-- get TweenMax plugin for ScrollMagic -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/ScrollMagic/2.0.5/plugins/animation.gsap.min.js"></script>
```

```css
.container {
  width: 100%;
  height: 500px;
}

.container .box3 {
  width: 50px;
  height: 50px;
  background-color: green;
  position: absolute;
}
```

```coffee
# Get elements
scrollBox = document.querySelectorAll('.container .box4')[0]

container = scrollBox.parentNode

# Setup TimelineMax
scrollTimeline = new TimelineMax()

# Create animations
# Same as before
scrollTimeline.to scrollBox, 4, (
  right: 0
  ease: Power0.easeNone
), 0

scrollTimeline.to scrollBox, 3, (
  y: 400
  ease: Bounce.easeOut
), 1

scrollTimeline.to scrollBox, 3, (
  rotation: 180
  borderRadius: '50%'
  backgroundColor: 'red'
), 1

# Setup controller
controller = new ScrollMagic.Controller()

# Setup scene
scene = new ScrollMagic.Scene (
  triggerElement: container # When the container
  triggerHook: 'onLeave'    # Gets to the top of the screen, start the animation.
  duration: 500             # Which lasts for 500px
)
  .addTo controller         # Connect  it to the controller
  .setTween scrollTimeline  # Add the animation to it
  .setPin container         # Pin the container in place when you scroll to it
```

```js
var container, controller, scene, scrollBox, scrollTimeline;

scrollBox = document.querySelectorAll('.container .box4')[0];

container = scrollBox.parentNode;

scrollTimeline = new TimelineMax();

scrollTimeline.to(scrollBox, 4, {
  right: 0,
  ease: Power0.easeNone
}, 0);

scrollTimeline.to(scrollBox, 3, {
  y: 400,
  ease: Bounce.easeOut
}, 1);

scrollTimeline.to(scrollBox, 3, {
  rotation: 180,
  borderRadius: '50%',
  backgroundColor: 'red'
}, 1);

controller = new ScrollMagic.Controller();

scene = new ScrollMagic.Scene({
  triggerElement: container,
  duration: 500,
  triggerHook: 'onLeave'
}).addTo(controller).setTween(scrollTimeline).setPin(container);

```

