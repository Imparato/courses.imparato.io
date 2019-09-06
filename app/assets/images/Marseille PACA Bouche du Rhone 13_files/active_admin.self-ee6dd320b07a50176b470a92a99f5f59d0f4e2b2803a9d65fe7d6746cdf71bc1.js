'use strict';

var _slicedToArray = (function () { function sliceIterator(arr, i) { var _arr = []; var _n = true; var _d = false; var _e = undefined; try { for (var _i = arr[Symbol.iterator](), _s; !(_n = (_s = _i.next()).done); _n = true) { _arr.push(_s.value); if (i && _arr.length === i) break; } } catch (err) { _d = true; _e = err; } finally { try { if (!_n && _i['return']) _i['return'](); } finally { if (_d) throw _e; } } return _arr; } return function (arr, i) { if (Array.isArray(arr)) { return arr; } else if (Symbol.iterator in Object(arr)) { return sliceIterator(arr, i); } else { throw new TypeError('Invalid attempt to destructure non-iterable instance'); } }; })();

var _createClass = (function () { function defineProperties(target, props) { for (var i = 0; i < props.length; i++) { var descriptor = props[i]; descriptor.enumerable = descriptor.enumerable || false; descriptor.configurable = true; if ('value' in descriptor) descriptor.writable = true; Object.defineProperty(target, descriptor.key, descriptor); } } return function (Constructor, protoProps, staticProps) { if (protoProps) defineProperties(Constructor.prototype, protoProps); if (staticProps) defineProperties(Constructor, staticProps); return Constructor; }; })();

function _classCallCheck(instance, Constructor) { if (!(instance instanceof Constructor)) { throw new TypeError('Cannot call a class as a function'); } }

(function (window, $) {
  var ActiveAdmin = (function () {
    function ActiveAdmin() {
      _classCallCheck(this, ActiveAdmin);
    }

    _createClass(ActiveAdmin, null, [{
      key: 'turbolinksVisit',
      value: function turbolinksVisit(params) {
        var path = [window.location.pathname, '?', this.toQueryString(params)].join('');
        Turbolinks.visit(path);
      }
    }, {
      key: 'queryString',
      value: function queryString() {
        return (window.location.search || '').replace(/^\?/, '');
      }
    }, {
      key: 'queryStringToParams',
      value: function queryStringToParams() {
        var decode = function decode(value) {
          return decodeURIComponent((value || '').replace(/\+/g, '%20'));
        };

        return this.queryString().split("&").map(function (pair) {
          return pair.split("=");
        }).map(function (_ref) {
          var _ref2 = _slicedToArray(_ref, 2);

          var key = _ref2[0];
          var value = _ref2[1];

          return { name: decode(key), value: decode(value) };
        });
      }
    }, {
      key: 'toQueryString',
      value: function toQueryString(params) {
        var encode = function encode(value) {
          return encodeURIComponent(value || '');
        };

        return params.map(function (_ref3) {
          var name = _ref3.name;
          var value = _ref3.value;
          return [encode(name), encode(value)];
        }).map(function (pair) {
          return pair.join('=');
        }).join('&');
      }
    }, {
      key: 'turbolinks',
      get: function get() {
        return typeof Turbolinks !== 'undefined' && Turbolinks.supported;
      }
    }]);

    return ActiveAdmin;
  })();

  window.activeadmin = ActiveAdmin;
})(window, jQuery);
