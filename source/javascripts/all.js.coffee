element = document.querySelectorAll '.container .box3'

timeline = new TimelineMax (
  repeat: -1 # repeat infinitely
  yoyo: true
)

timeline.to element, 4, (
  right: 0
  ease: Power0.easeNone
), 0

timeline.to element, 3, (
  y: 400
  ease: Bounce.easeOut
), 1
timeline.to element, 3, (
  rotation: 180
  borderRadius: '50%'
  backgroundColor: 'red'
), 1


scrollBox = document.querySelectorAll('.container .box4')[0]
container = scrollBox.parentNode
scrollTimeline = new TimelineMax()

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
controller = new ScrollMagic.Controller()

scene = new ScrollMagic.Scene (
  triggerElement: container
  duration: 500
  triggerHook: 'onLeave'
)
  .addTo controller
  .setTween scrollTimeline
  .setPin container
