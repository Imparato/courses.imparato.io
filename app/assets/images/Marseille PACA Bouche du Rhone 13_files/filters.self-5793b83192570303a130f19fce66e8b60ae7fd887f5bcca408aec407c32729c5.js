'use strict';

var _createClass = (function () { function defineProperties(target, props) { for (var i = 0; i < props.length; i++) { var descriptor = props[i]; descriptor.enumerable = descriptor.enumerable || false; descriptor.configurable = true; if ('value' in descriptor) descriptor.writable = true; Object.defineProperty(target, descriptor.key, descriptor); } } return function (Constructor, protoProps, staticProps) { if (protoProps) defineProperties(Constructor.prototype, protoProps); if (staticProps) defineProperties(Constructor, staticProps); return Constructor; }; })();

function _classCallCheck(instance, Constructor) { if (!(instance instanceof Constructor)) { throw new TypeError('Cannot call a class as a function'); } }

(function ($, ActiveAdmin) {
  var Filters = (function () {
    function Filters() {
      _classCallCheck(this, Filters);
    }

    _createClass(Filters, null, [{
      key: '_clearForm',
      value: function _clearForm(event) {
        var regex = /^(q\[|q%5B|q%5b|page|utf8|commit)/;
        var params = ActiveAdmin.queryStringToParams().filter(function (_ref) {
          var name = _ref.name;
          return !name.match(regex);
        });

        event.preventDefault();

        if (ActiveAdmin.turbolinks) {
          ActiveAdmin.turbolinksVisit(params);
        } else {
          window.location.search = ActiveAdmin.toQueryString(params);
        }
      }
    }, {
      key: '_disableEmptyInputFields',
      value: function _disableEmptyInputFields(event) {
        var params = $(this).find(':input').filter(function (i, input) {
          return input.value === '';
        }).prop({ disabled: true }).end().serializeArray();

        if (ActiveAdmin.turbolinks) {
          event.preventDefault();
          ActiveAdmin.turbolinksVisit(params);
        }
      }
    }, {
      key: '_setSearchType',
      value: function _setSearchType() {
        $(this).siblings('input').prop({ name: 'q[' + this.value + ']' });
      }
    }]);

    return Filters;
  })();

  $(document).on('click', '.clear_filters_btn', Filters._clearForm).on('submit', '.filter_form', Filters._disableEmptyInputFields).on('change', '.filter_form_field.select_and_search select', Filters._setSearchType);
})(jQuery, window.activeadmin);
