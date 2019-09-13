// `serializeArray` generates => [{ name: 'foo', value: 'bar' }]
// This function remaps it to => { foo: 'bar' }
"use strict";

$.fn.serializeObject = function () {
  return this.serializeArray().reduce(function (obj, item) {
    obj[item.name] = item.value;
    return obj;
  }, {});
};
