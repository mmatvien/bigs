//Application initializer. this gets included in index.html
$(function(){
  TES.start({
    current_associate : sessionStorage.getItem("current_associate")
  });
});
$(document).foundation();
