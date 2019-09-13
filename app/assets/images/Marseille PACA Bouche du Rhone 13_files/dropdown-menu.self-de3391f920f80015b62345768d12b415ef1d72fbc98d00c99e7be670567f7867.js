'use strict';

var _createClass = (function () { function defineProperties(target, props) { for (var i = 0; i < props.length; i++) { var descriptor = props[i]; descriptor.enumerable = descriptor.enumerable || false; descriptor.configurable = true; if ('value' in descriptor) descriptor.writable = true; Object.defineProperty(target, descriptor.key, descriptor); } } return function (Constructor, protoProps, staticProps) { if (protoProps) defineProperties(Constructor.prototype, protoProps); if (staticProps) defineProperties(Constructor, staticProps); return Constructor; }; })();

function _classCallCheck(instance, Constructor) { if (!(instance instanceof Constructor)) { throw new TypeError('Cannot call a class as a function'); } }

ActiveAdmin.DropdownMenu = (function () {
  function DropdownMenu(options, element) {
    _classCallCheck(this, DropdownMenu);

    this.options = options;
    this.element = element;
    this.$element = $(this.element);

    var defaults = {
      fadeInDuration: 20,
      fadeOutDuration: 100,
      onClickActionItemCallback: null
    };

    this.options = $.extend(defaults, this.options);
    this.isOpen = false;

    this.$menuButton = this.$element.find('.dropdown_menu_button');
    this.$menuList = this.$element.find('.dropdown_menu_list_wrapper');

    this._buildMenuList();
    this._bind();
  }

  _createClass(DropdownMenu, [{
    key: 'open',
    value: function open() {
      this.isOpen = true;
      this.$menuList.fadeIn(this.options.fadeInDuration);

      this._position();
      return this;
    }
  }, {
    key: 'close',
    value: function close() {
      this.isOpen = false;
      this.$menuList.fadeOut(this.options.fadeOutDuration);
      return this;
    }
  }, {
    key: 'destroy',
    value: function destroy() {
      this.$element = null;
      return this;
    }
  }, {
    key: 'isDisabled',
    value: function isDisabled() {
      return this.$menuButton.hasClass('disabled');
    }
  }, {
    key: 'disable',
    value: function disable() {
      this.$menuButton.addClass('disabled');
    }
  }, {
    key: 'enable',
    value: function enable() {
      this.$menuButton.removeClass('disabled');
    }
  }, {
    key: 'option',
    value: function option(key, value) {
      if ($.isPlainObject(key)) {
        return this.options = $.extend(true, this.options, key);
      } else if (key != null) {
        return this.options[key];
      } else {
        return this.options[key] = value;
      }
    }
  }, {
    key: '_buildMenuList',
    value: function _buildMenuList() {
      this.$nipple = $('<div class="dropdown_menu_nipple"></div>');
      this.$menuList.prepend(this.$nipple);
      this.$menuList.hide();
    }
  }, {
    key: '_bind',
    value: function _bind() {
      var _this = this;

      $('body').click(function () {
        if (_this.isOpen) {
          _this.close();
        }
      });

      this.$menuButton.click(function () {
        if (!_this.isDisabled()) {
          if (_this.isOpen) {
            _this.close();
          } else {
            _this.open();
          }
        }
        return false;
      });
    }
  }, {
    key: '_position',
    value: function _position() {
      this.$menuList.css('top', this.$menuButton.position().top + this.$menuButton.outerHeight() + 10);

      var button_left = this.$menuButton.position().left;
      var button_center = this.$menuButton.outerWidth() / 2;
      var button_right = button_left + button_center * 2;
      var menu_center = this.$menuList.outerWidth() / 2;
      var nipple_center = this.$nipple.outerWidth() / 2;
      var window_right = $(window).width();

      var centered_menu_left = button_left + button_center - menu_center;
      var centered_menu_right = button_left + button_center + menu_center;

      if (centered_menu_left < 0) {
        // Left align with button
        this.$menuList.css('left', button_left);
        this.$nipple.css('left', button_center - nipple_center);
      } else if (centered_menu_right > window_right) {
        // Right align with button
        this.$menuList.css('right', window_right - button_right);
        this.$nipple.css('right', button_center - nipple_center);
      } else {
        // Center align under button
        this.$menuList.css('left', centered_menu_left);
        this.$nipple.css('left', menu_center - nipple_center);
      }
    }
  }]);

  return DropdownMenu;
})();

$.widget.bridge('aaDropdownMenu', ActiveAdmin.DropdownMenu);

var onDOMReady = function onDOMReady() {
  return $('.dropdown_menu').aaDropdownMenu();
};

$(document).ready(onDOMReady).on('page:load turbolinks:load', onDOMReady);
