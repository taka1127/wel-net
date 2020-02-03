$(function(){
  // console.log('hello');
  $('#text').hide().fadeIn(3000);

  $('#text').hover(
    function() {
      // 子要素の「.text-contents」の要素を取得し、text-activeクラスをつけてください
      $(this).find('#contents').addClass('text-active');
      
    },
    function() {
      // 子要素の「.text-contents」の要素を取得し、text-activeクラスを外してください
      $(this).find('#contents').removeClass('text-active');
      
    }
  );
});