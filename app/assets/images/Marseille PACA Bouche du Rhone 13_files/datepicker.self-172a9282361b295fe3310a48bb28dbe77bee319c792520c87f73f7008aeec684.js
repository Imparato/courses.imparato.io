'use strict';

(function ($) {

  $(document).on('focus', 'input.datepicker:not(.hasDatepicker)', function () {
    var input = $(this);

    // Only create datepickers in compatible browsers
    if (input[0].type === 'date') {
      return;
    }

    var defaults = { dateFormat: 'yy-mm-dd' };
    var options = input.data('datepicker-options');

    input.datepicker($.extend(defaults, options));
  });
})(jQuery);
