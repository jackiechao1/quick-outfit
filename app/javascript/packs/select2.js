import "bootstrap";
// import "select2/dist/css/select2.css"
;import $ from "jquery";
import "select2";

console.log('hello from select2')





$(document).ready(function() {

  function formatState (state) {
    if (!state.id) {
      return state.text;
    }
    // creating the style for the div
    const styleDiv = `width:14px;
    height:14px;
    border:1px solid gray;
    border-radius:50%;
    background-color:${state.text}`
    const $state = $(
      '<div class="dropdown-color"><div style="' + styleDiv + '"></div><span>' + state.text + '</span></div>'
    );

    return $state;
  };



 $("#item_color").select2({
  templateResult: formatState
 });

  $("#item_style").select2({
 });

    $("#item_category").select2({
 });


});
