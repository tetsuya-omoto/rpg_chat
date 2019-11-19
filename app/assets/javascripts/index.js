$(function(){
  function buildHTML(battle){
    var html = `<div class="body">  
                  <div class="battle-message">
                  <a class="message-delete" rel="nofollow" data-method="delete" href="/battles/14">
                    <i class="fas fa-trash-alt"></i>
                  </a>
                    <div class="message-text">
                      <div class="message-text__text">
                        Q.
                        ${battle.text}
                      </div>
                      <div class="message-text__answer">
                      A.
                      ${battle.answer}
                      </div>
                    </div>
                  </div>
                </div>`
    return html;
    
  }
  
  bubbly({
    colorStart: "#dddddd", // default is blue-ish
    colorStop: "#dddddd",// default is blue-ish
    blur: 1
  });
  $('.message-answer').on('click', function(){
    $(this).css({
      opacity: "1"
    });
  });
  $('.message-text').on('click', function(){
    $(this).css({
      "color":"#FF3333"
    });
  });
  
  $('#making').on('submit', function(e){
    e.preventDefault();
    var formData = new FormData(this);
    var url = $(this).attr('action');
    console.log("OK");

    $.ajax({
      url: url,
      type: "POST",
      data: formData,
      dataType: 'json',
      processData: false,
      contentType: false
    })
    .done(function(data){
      var html = buildHTML(data);
      $('.messages').append(html);
      $('#making').val('');
      $('.submit-btn').prop('disabled', false);
      $('.messages').animate({scrollTop: $('.messages')[0].scrollHeight}, 'fast');
      $('.submit-btn').removeAttr("disabled");

    })
    .fail(function(){
      alert('error');
    });

  })
});