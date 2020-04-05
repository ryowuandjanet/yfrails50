// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

require("@rails/ujs").start()
require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")
require('bootstrap');
require("cocoon");

 
// require('controllers');

import "@fortawesome/fontawesome-free/js/all";



(function() {
  $(function() {
    var filter_township, township;
    filter_township = function() {
      var country, escaped_country, options;
      country = $('#yfcase_country_id :selected').text();
      escaped_country = country.replace(/([ #;&,.+*~\':"!^$[\]()=>|\/@])/g, '\\$1');
      options = $(township).filter("optgroup[label='" + escaped_country + "']").html();
      if (options) {
        $('#yfcase_township_id').html(options);
        return $('#yfcase_township_id').parent().show();
      } else {
        $('#yfcase_township_id').empty();
        $('#yfcase_township_id').html('<option value=""></option>');
        return $('#yfcase_township_id').parent().hide();
      }
    };
    $('#yfcase_township_id').parent().hide();
    township = $('#yfcase_township_id').html();
    if ($('#yfcase_country_id').val() !== '') {
      filter_township();
    }
    return $('#yfcase_country_id').change(function() {
      return filter_township();
    });
  });

}).call(this);

