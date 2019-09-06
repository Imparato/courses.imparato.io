'use strict';

var _createClass = (function () { function defineProperties(target, props) { for (var i = 0; i < props.length; i++) { var descriptor = props[i]; descriptor.enumerable = descriptor.enumerable || false; descriptor.configurable = true; if ('value' in descriptor) descriptor.writable = true; Object.defineProperty(target, descriptor.key, descriptor); } } return function (Constructor, protoProps, staticProps) { if (protoProps) defineProperties(Constructor.prototype, protoProps); if (staticProps) defineProperties(Constructor, staticProps); return Constructor; }; })();

var _get = function get(_x, _x2, _x3) { var _again = true; _function: while (_again) { var object = _x, property = _x2, receiver = _x3; _again = false; if (object === null) object = Function.prototype; var desc = Object.getOwnPropertyDescriptor(object, property); if (desc === undefined) { var parent = Object.getPrototypeOf(object); if (parent === null) { return undefined; } else { _x = parent; _x2 = property; _x3 = receiver; _again = true; desc = parent = undefined; continue _function; } } else if ('value' in desc) { return desc.value; } else { var getter = desc.get; if (getter === undefined) { return undefined; } return getter.call(receiver); } } };

function _classCallCheck(instance, Constructor) { if (!(instance instanceof Constructor)) { throw new TypeError('Cannot call a class as a function'); } }

function _inherits(subClass, superClass) { if (typeof superClass !== 'function' && superClass !== null) { throw new TypeError('Super expression must either be null or a function, not ' + typeof superClass); } subClass.prototype = Object.create(superClass && superClass.prototype, { constructor: { value: subClass, enumerable: false, writable: true, configurable: true } }); if (superClass) Object.setPrototypeOf ? Object.setPrototypeOf(subClass, superClass) : subClass.__proto__ = superClass; }

ActiveAdmin.TableCheckboxToggler = (function (_ActiveAdmin$CheckboxToggler) {
  _inherits(TableCheckboxToggler, _ActiveAdmin$CheckboxToggler);

  function TableCheckboxToggler() {
    _classCallCheck(this, TableCheckboxToggler);

    _get(Object.getPrototypeOf(TableCheckboxToggler.prototype), 'constructor', this).apply(this, arguments);
  }

  _createClass(TableCheckboxToggler, [{
    key: '_bind',
    value: function _bind() {
      var _this = this;

      _get(Object.getPrototypeOf(TableCheckboxToggler.prototype), '_bind', this).apply(this, arguments);

      this.$container.find('tbody td').click(function (event) {
        if (event.target.type !== 'checkbox') {
          _this._didClickCell(event.target);
        }
      });
    }
  }, {
    key: '_didChangeCheckbox',
    value: function _didChangeCheckbox(checkbox) {
      _get(Object.getPrototypeOf(TableCheckboxToggler.prototype), '_didChangeCheckbox', this).apply(this, arguments);

      $(checkbox).parents('tr').toggleClass('selected', checkbox.checked);
    }
  }, {
    key: '_didChangeToggleAllCheckbox',
    value: function _didChangeToggleAllCheckbox() {
      this.$container.find('tbody tr').toggleClass('selected', _get(Object.getPrototypeOf(TableCheckboxToggler.prototype), '_didChangeToggleAllCheckbox', this).apply(this, arguments));
    }
  }, {
    key: '_didClickCell',
    value: function _didClickCell(cell) {
      $(cell).parent('tr').find(':checkbox').click();
    }
  }]);

  return TableCheckboxToggler;
})(ActiveAdmin.CheckboxToggler);

$.widget.bridge('tableCheckboxToggler', ActiveAdmin.TableCheckboxToggler);
