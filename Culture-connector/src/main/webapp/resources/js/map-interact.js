function isTouchEnabled() {
  return (("ontouchstart" in window)
    || (navigator.MaxTouchPoints > 0)
    || (navigator.msMaxTouchPoints > 0));
}
jQuery(function () {
  jQuery("path[id^=krjs]").each(function (i, e) {
    kraddEvent( jQuery(e).attr("id"));
  });
});
function kraddEvent(id,relationId) {
  var _obj = jQuery("#" + id);
  var arr = id.split("");
  var _Textobj = jQuery("#" + id + "," + "#krjsvn" + arr.slice(4).join(""));
  jQuery("#" + ["visnames"]).attr({"fill":krjsconfig.general.visibleNames});
  _obj.attr({"fill":krjsconfig[id].upColor, "stroke":krjsconfig.general.borderColor});
  _Textobj.attr({"cursor": "default"});
  if (krjsconfig[id].active === true) {
    _Textobj.attr({"cursor": "pointer"});
    _Textobj.hover(function () {
      jQuery("#krjstip").show().html(krjsconfig[id].hover);
      _obj.css({"fill":krjsconfig[id].overColor});
    }, function () {
      jQuery("#krjstip").hide();
      jQuery("#" + id).css({"fill":krjsconfig[id].upColor});
    });
    if (krjsconfig[id].target !== "none") {
      _Textobj.mousedown(function () {
        jQuery("#" + id).css({"fill":krjsconfig[id].downColor});
      });
    }
    _Textobj.mouseup(function () {
      jQuery("#" + id).css({"fill":krjsconfig[id].overColor});
      if (krjsconfig[id].target === "new_window") {
        window.open(krjsconfig[id].url);	
      } else if (krjsconfig[id].target === "same_window") {
        window.parent.location.href = krjsconfig[id].url;
      } else if (krjsconfig[id].target === "modal") {
        jQuery(krjsconfig[id].url).modal("show");
      }
    });
    _Textobj.mousemove(function (e) {
      var x = e.pageX + 10, y = e.pageY + 15;
      var tipw =jQuery("#krjstip").outerWidth(), tiph =jQuery("#krjstip").outerHeight(),
      x = (x + tipw >jQuery(document).scrollLeft() +jQuery(window).width())? x - tipw - (20 * 2) : x ;
      y = (y + tiph >jQuery(document).scrollTop() +jQuery(window).height())? jQuery(document).scrollTop() +jQuery(window).height() - tiph - 10 : y ;
      jQuery("#krjstip").css({left: x, top: y});
    });
    if (isTouchEnabled()) {
      _Textobj.on("touchstart", function (e) {
        var touch = e.originalEvent.touches[0];
        var x = touch.pageX + 10, y = touch.pageY + 15;
        var tipw =jQuery("#krjstip").outerWidth(), tiph =jQuery("#krjstip").outerHeight(),
        x = (x + tipw >jQuery(document).scrollLeft() +jQuery(window).width())? x - tipw -(20 * 2) : x ;
        y =(y + tiph >jQuery(document).scrollTop() +jQuery(window).height())? jQuery(document).scrollTop() +jQuery(window).height() -tiph - 10 : y ;
        jQuery("#" + id).css({"fill":krjsconfig[id].downColor});
        jQuery("#krjstip").show().html(krjsconfig[id].hover);
        jQuery("#krjstip").css({left: x, top: y});
      });
      _Textobj.on("touchend", function () {
        jQuery("#" + id).css({"fill":krjsconfig[id].upColor});
        if (krjsconfig[id].target === "new_window") {
          window.open(krjsconfig[id].url);
        } else if (krjsconfig[id].target === "same_window") {
          window.parent.location.href = krjsconfig[id].url;
        } else if (krjsconfig[id].target === "modal") {
          jQuery(krjsconfig[id].url).modal("show");
        }
      });
    }
	}
}