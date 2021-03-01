window.addEventListener('load', function(){
const pullDownButton = document.getElementById("lists")
const pullDownParents = document.getElementById("pull-down")

pullDownButton.addEventListener('mouseover', function(){
  pullDownButton.setAttribute("style", "background-color:#FFBEDA;")
})
pullDownButton.addEventListener('mouseout', function(){
  pullDownButton.removeAttribute("style", "background-color:#FFBEDA;")
})
pullDownButton.addEventListener('click', function() {
  if (pullDownParents.getAttribute("style") == "display:block;") {
    pullDownParents.removeAttribute("style", "display:block;")
  } else {
    pullDownParents.setAttribute("style", "display:block;")
  }
})

const pullDownButtonNew = document.getElementById("new-lists")
const pullDownParentsNew = document.getElementById("new-pull-down")

pullDownButtonNew.addEventListener('mouseover', function(){
  pullDownButtonNew.setAttribute("style", "background-color:#FFBEDA;")
})
pullDownButtonNew.addEventListener('mouseout', function(){
  pullDownButtonNew.removeAttribute("style", "background-color:#FFBEDA;")
})
pullDownButtonNew.addEventListener('click', function() {
  if (pullDownParentsNew.getAttribute("style") == "display:block;") {
    pullDownParentsNew.removeAttribute("style", "display:block;")
  } else {
    pullDownParentsNew.setAttribute("style", "display:block;")
  }
})
})