'use strict';

var _createClass = (function () { function defineProperties(target, props) { for (var i = 0; i < props.length; i++) { var descriptor = props[i]; descriptor.enumerable = descriptor.enumerable || false; descriptor.configurable = true; if ('value' in descriptor) descriptor.writable = true; Object.defineProperty(target, descriptor.key, descriptor); } } return function (Constructor, protoProps, staticProps) { if (protoProps) defineProperties(Constructor.prototype, protoProps); if (staticProps) defineProperties(Constructor, staticProps); return Constructor; }; })();

function _classCallCheck(instance, Constructor) { if (!(instance instanceof Constructor)) { throw new TypeError('Cannot call a class as a function'); } }

(function ($, ActiveAdmin) {
  var PerPage = (function () {
    function PerPage(element) {
      _classCallCheck(this, PerPage);

      this.element = element;
    }

    _createClass(PerPage, [{
      key: 'update',
      value: function update() {
        var params = ActiveAdmin.queryStringToParams().filter(function (_ref) {
          var name = _ref.name;
          return name != 'per_page' || name != 'page';
        });

        params.push({ name: 'per_page', value: this.element.value });

        if (ActiveAdmin.turbolinks) {
          ActiveAdmin.turbolinksVisit(params);
        } else {
          window.location.search = ActiveAdmin.toQueryString(params);
        }
      }
    }], [{
      key: '_jQueryInterface',
      value: function _jQueryInterface(config) {
        return this.each(function () {
          var $this = $(this);
          var data = $this.data('perPage');

          if (!data) {
            data = new PerPage(this);
            $this.data('perPage', data);
          }

          if (config === 'update') {
            data[config]();
          }
        });
      }
    }]);

    return PerPage;
  })();

  ;

  $(document).on('change', '.pagination_per_page > select', function (event) {
    PerPage._jQueryInterface.call($(this), 'update');
  });

  $.fn['perPage'] = PerPage._jQueryInterface;
  $.fn['perPage'].Constructor = PerPage;
})(jQuery, window.activeadmin);
