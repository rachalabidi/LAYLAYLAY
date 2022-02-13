/**
 * 
 */










var buttonResize = document.getElementById("resize-icon");
var contents = document.getElementsByClassName("content");
var titles=document.getElementsByClassName("title");
smallerSidebar = false;

buttonResize.onclick = function() {
	if (smallerSidebar == false) {
		sidemenu.style.width = "50px";
		for (var i = 0; i < contents.length; i++) {
  		contents[i].style.left = "50px";
        titles[i].style.visibility="hidden";
		smallerSidebar = true;
  	}
		
		smallerSidebar = true;
	} else if (smallerSidebar == true) {
		sidemenu.style.width = "200px";
		for (var i = 0; i < contents.length; i++) {
  		contents[i].style.left = "200px";
		titles[i].style.visibility="visible";
		smallerSidebar = false;
  	}s
		smallerSidebar = false;
	}
}
var typing=new Typed(".text", {
       strings: ["", "don't", " forget", " to check  ", "the presence ", "*_* ","  ","  "],
       typeSpeed: 100,
       backSpeed: 40,
       loop: true,
   });

