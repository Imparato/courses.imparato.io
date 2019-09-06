'use strict';

var _createClass = (function () { function defineProperties(target, props) { for (var i = 0; i < props.length; i++) { var descriptor = props[i]; descriptor.enumerable = descriptor.enumerable || false; descriptor.configurable = true; if ('value' in descriptor) descriptor.writable = true; Object.defineProperty(target, descriptor.key, descriptor); } } return function (Constructor, protoProps, staticProps) { if (protoProps) defineProperties(Constructor.prototype, protoProps); if (staticProps) defineProperties(Constructor, staticProps); return Constructor; }; })();

function _classCallCheck(instance, Constructor) { if (!(instance instanceof Constructor)) { throw new TypeError('Cannot call a class as a function'); } }

ActiveAdmin.CheckboxToggler = (function () {
  function CheckboxToggler(options, container) {
    _classCallCheck(this, CheckboxToggler);

    this.options = options;
    this.container = container;
    this._init();
    this._bind();
  }

  _createClass(CheckboxToggler, [{
    key: 'option',
    value: function option(key, value) {}
  }, {
    key: '_init',
    value: function _init() {
      if (!this.container) {
        throw new Error('Container element not found');
      } else {
        this.$container = $(this.container);
      }

      if (!this.$container.find('.toggle_all').length) {
        throw new Error('"toggle all" checkbox not found');
      } else {
        this.toggle_all_checkbox = this.$container.find('.toggle_all');
      }

      this.checkboxes = this.$container.find(':checkbox').not(this.toggle_all_checkbox);
    }
  }, {
    key: '_bind',
    value: function _bind() {
      var _this = this;

      this.checkboxes.change(function (event) {
        return _this._didChangeCheckbox(event.target);
      });
      this.toggle_all_checkbox.change(function () {
        return _this._didChangeToggleAllCheckbox();
      });
    }
  }, {
    key: '_didChangeCheckbox',
    value: function _didChangeCheckbox(checkbox) {
      var numChecked = this.checkboxes.filter(':checked').length;

      var allChecked = numChecked === this.checkboxes.length;
      var someChecked = numChecked > 0 && numChecked < this.checkboxes.length;

      this.toggle_all_checkbox.prop({ checked: allChecked, indeterminate: someChecked });
    }
  }, {
    key: '_didChangeToggleAllCheckbox',
    value: function _didChangeToggleAllCheckbox() {
      var setting = this.toggle_all_checkbox.prop('checked');
      this.checkboxes.prop({ checked: setting });
      return setting;
    }
  }]);

  return CheckboxToggler;
})();

$.widget.bridge('checkboxToggler', ActiveAdmin.CheckboxToggler);
