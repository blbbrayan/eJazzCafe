var setActive;setActive=function(){var e,t;return e=goat.getUnder($tag,".link"),t=location.hash||"/",e.forEach(function(e){if(e.hash===t)return e.classList.value.includes(" active")?e.classList.value=e.classList.value.replace(" active",""):e.classList.value+=" active"})},window.addEventListener("hashchange",setActive),window.addEventListener("load",setActive),setActive(),setTimeout(function(){return $(".button-collapse").sideNav()},100);