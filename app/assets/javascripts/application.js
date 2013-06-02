// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
// WARNING: THE FIRST BLANK LINE MARKS THE END OF WHAT'S TO BE PROCESSED, ANY BLANK LINE SHOULD
// GO AFTER THE REQUIRES BELOW.
//
//= require jquery
//= require jquery_ujs
//= require twitter/bootstrap
//= require_tree .

$(document).ready( function() {

  $("div#modal-category a").click(function(){
    $("span#link-modal-category-name").text($(this).text());
    $("span#link-modal-genre-name").text("詳しく選ぶ");
    $("a#a-modal-genre").attr("href", "#modal-genres" + $(this).attr("genre-id") );
    $("#modal-category").modal("hide");
  });

  $("[id^='modal-genre'] a").click(function(){
    $("span#link-modal-genre-name").text($(this).text());
    $("[id^='modal-genre']").modal("hide");
  });

  $("div#modal-location a").click(function(){
    $("span#link-modal-location-name").text($(this).text());
    $("#modal-location").modal("hide");
  });

  $("div#modal-situation a").click(function(){
    $("span#link-modal-situation-name").text($(this).text());
    $("#modal-situation").modal("hide");
  });

  $("div#modal-situation-seat a").click(function(){
  	$("#link-modal-situation-name").text("");

  	var name = $("select#date_year").val() + "年";
  	name = name + $("select#date_month").val() + "月";
  	name = name + $("select#date_day").val() + "日";
  	name = name + $("select#date_hour").val() + "時";
  	name = name + $("select#date_minute").val() + "分";
    $("#link-modal-situation-name").append(name);

  	$("#link-modal-situation-name").append("<br />");
  	var name = $("select#seat_number option:selected").text() + "人";
    $("#link-modal-situation-name").append(name);

    $("#modal-situation-seat").modal("hide");
  });

});