/*
**********************************************************************
** Copyright (c) 1988-2022 $organization$     
** 
** This software is provided by the author and contributors ``as is'' 
** and any express or implied warranties, including, but not limited to, 
** the implied warranties of merchantability and fitness for a particular 
** purpose are disclaimed. In no event shall the author or contributors 
** be liable for any direct, indirect, incidental, special, exemplary, 
** or consequential damages (including, but not limited to, procurement 
** of substitute goods or services; loss of use, data, or profits; or 
** business interruption) however caused and on any theory of liability, 
** whether in contract, strict liability, or tort (including negligence 
** or otherwise) arising in any way out of the use of this software, 
** even if advised of the possibility of such damage.
** 
**   File: Ulucidity-slideshow.js
** 
** Author: $author$           
**   Date: 6/5/2022
**********************************************************************
*/

/*
**********************************************************************
** function ...Slide...
**********************************************************************
*/
var slideIndex = 1;
function plusSlides(n) {
  showSlides(slideIndex += n);
}
function currentSlide(n) {
  showSlides(slideIndex = n);
}
function showSlides(n) {
  var i;
  var slides = document.getElementsByClassName("mySlides");
  var dots = document.getElementsByClassName("dot");
  if (n > slides.length) {
    slideIndex = 1
  } 
  if (n < 1) {
    slideIndex = slides.length
  }
  for (i = 0; i < slides.length; i++) {
      slides[i].style.display = "none"; 
  }
  for (i = 0; i < dots.length; i++) {
      dots[i].className = dots[i].className.replace(" activeDot", "");
  }
  slides[slideIndex-1].style.display = "block"; 
  dots[slideIndex-1].className += " activeDot";
}

/*
**********************************************************************
** function ...Click...
**********************************************************************
*/
function myDropdownClick() {
 var x = document.getElementById("myDropdown");
 if (x) {
 if (x.style.display !== "block") {
  x.style.display = "block";
 } else {
  x.style.display = "none";
 }
 }
}
function myPopdownClick() {
 var x = document.getElementById("myPopdown");
 if (x) {
 if (x.style.display !== "block") {
  x.style.display = "block";
 } else {
  x.style.display = "none";
 }
 }
}
window.onclick = function(event) {
  if ((!event.target.matches('.dropdown')) && (!event.target.matches('.dropdown-item'))) {
    var x = document.getElementById("myDropdown");
    if (x.style.display === "block") {
      x.style.display = "none";
    }
  }
  if ((!event.target.matches('.popdown')) && (!event.target.matches('.popdown-items')) && (!event.target.matches('.popdown-item'))) {
    var x = document.getElementById("myPopdown");
    if (x.style.display === "block") {
      x.style.display = "none";
    }
  }
}

/*
**********************************************************************
** function include...
**********************************************************************
*/
/*
**
** function includeHTML
** 
*/
function includeHTML(elementId, fileAttribute, notFound, requestFailed) {

    if (!elementId) { elementId = 'include'; }
    if (!fileAttribute) { fileAttribute = 'include'; }
    if (!notFound) { notFound = ''; }
    if (!requestFailed) { notFound = ''; }

    if (elementId) {
        var element = document.getElementById(elementId);

        if (element) {
            var file = element.getAttribute(fileAttribute);

            if (file) {
                var xhttp = new XMLHttpRequest();

                xhttp.onreadystatechange = function() {
                    if (this.readyState == 4) {
                        if (this.status == 200) { element.innerHTML = this.responseText; }
                        else {
                            if (this.status == 404) { element.innerHTML = notFound; }
                            else {
                                element.innerHTML = requestFailed;
                            }
                        }
                    }
                }
                xhttp.open('GET', file, true);
                xhttp.send();
            }
        }
    }
}
