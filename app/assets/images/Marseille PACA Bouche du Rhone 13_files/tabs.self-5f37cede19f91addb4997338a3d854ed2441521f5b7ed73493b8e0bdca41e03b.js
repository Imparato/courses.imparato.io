'use strict';

var onDOMReady = function onDOMReady() {
  return $('#active_admin_content .tabs').tabs();
};

$(document).ready(onDOMReady).on('page:load turbolinks:load', onDOMReady);
