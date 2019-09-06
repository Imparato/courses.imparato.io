'use strict';

ActiveAdmin.modal_dialog = function (message, inputs, callback) {
  var html = '<form id="dialog_confirm" title="' + message + '"><ul>';
  for (var _name in inputs) {
    var elem, opts, wrapper;
    var type = inputs[_name];
    if (/^(datepicker|checkbox|text|number)$/.test(type)) {
      wrapper = 'input';
    } else if (type === 'textarea') {
      wrapper = 'textarea';
    } else if ($.isArray(type)) {
      var _ref = ['select', 'option', type, ''];
      wrapper = _ref[0];
      elem = _ref[1];
      opts = _ref[2];
      type = _ref[3];
    } else {
      throw new Error('Unsupported input type: {' + _name + ': ' + type + '}');
    }

    var klass = type === 'datepicker' ? type : '';
    html += '<li>\n      <label>' + (_name.charAt(0).toUpperCase() + _name.slice(1)) + '</label>\n      <' + wrapper + ' name="' + _name + '" class="' + klass + '" type="' + type + '">' + (opts ? (function () {
      var result = [];

      opts.forEach(function (v) {
        var $elem = $('<' + elem + '/>');
        if ($.isArray(v)) {
          $elem.text(v[0]).val(v[1]);
        } else {
          $elem.text(v);
        }
        result.push($elem.wrap('<div>').parent().html());
      });

      return result;
    })().join('') : '') + ('</' + wrapper + '>') + "</li>";
    // unset any temporary variables
    var _ref2 = [];
    wrapper = _ref2[0];
    elem = _ref2[1];
    opts = _ref2[2];
    type = _ref2[3];
    klass = _ref2[4];
  }

  html += "</ul></form>";

  var form = $(html).appendTo('body');
  $('body').trigger('modal_dialog:before_open', [form]);

  form.dialog({
    modal: true,
    open: function open(event, ui) {
      $('body').trigger('modal_dialog:after_open', [form]);
    },
    dialogClass: 'active_admin_dialog',
    buttons: {
      OK: function OK() {
        callback($(this).serializeObject());
        $(this).dialog('close');
      },
      Cancel: function Cancel() {
        $(this).dialog('close').remove();
      }
    }
  });
};
