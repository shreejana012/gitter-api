$(function(){
  $.ajax({
    url: 'https://api.gitter.im/v1/rooms/595b6ceed73408ce4f6b7f1f/chatMessages?access_token=1ca09f042cfd33aa5ba0683add3c92f1e444d349',
    data: {"text": "text"}
  })
  .done(function(data){
    console.log(data);
  });
})
