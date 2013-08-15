/**
 * 指定要素のhref属性のターゲット要素の開閉を行うプラグイン
 *
 */
;
(function($){
  $.fn.slidedesc = function(options) {
    var defaults = {
      speed: 600
    },
    setting = $.extend(defaults, options || {});

    return this.each(function(i){
      var $trigger = $(this).find("> a"),
          href = $trigger.attr("href"),
          $target = $(href);

      // なければ次の要素へ
      if($target.size() <= 0) {
        return true;
      }

      $trigger.bind("click", function(evt){
        evt.preventDefault();
        if(!$target.is(":animated")) {
          $target.slideToggle();
        }
      });
    });
  };
})(jQuery);

jQuery(function($){
  $("#show-description").slidedesc();
});
