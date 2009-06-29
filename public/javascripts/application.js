// Place your application-specific JavaScript functions and classes here
// This file is automatically included by javascript_include_tag :defaults
/* This script and many more are available free online at
The JavaScript Source :: http://javascript.internet.com
Created by: Ultimater, Mr J :: http://www.webdeveloper.com/forum/showthread.php?t=77389 */

function toggleMe(a){
  var e=document.getElementById(a);
  if(!e)return true;
  if(e.style.display=="none"){
    e.style.display="block"
  } else {
    e.style.display="none"
  }
  return true;
}