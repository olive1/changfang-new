  
  var bigbig = document.getElementById("bigImg-big");
  var gg = bigbig.getElementsByTagName("img");
  var ei = document.getElementById("enlarge_images");
  for(i=0; i<gg.length; i++){
   var ts = gg[i];
   ts.onmousemove = function(event){
    event = event || window.event;
    ei.style.display = "block";
	//alert(this.src);
    ei.innerHTML = '<img src="' + this.src + '" />';
    ei.style.top  = document.body.scrollTop + event.clientY + 10 + "px";
    ei.style.left = document.body.scrollLeft + event.clientX + 10 + "px";
	
   }
   ts.onmouseout = function(){
    ei.innerHTML = "";
    ei.style.display = "none";
   }
   ts.onclick = function(){
    window.open( this.src );
   }
  }

