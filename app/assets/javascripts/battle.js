alert('OK');
$(function(){
    console.log("YES");
});

$(function(){
  function buildHTML(battle){
    var html = `<div class="battle-message">
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
                </div>`
    return html;
  }
  $('submit-btn').on('submit', function(e){
    e.preventDefault();
    console.log("OK");
    var formData = new FormData(this);
    var url = $(this).attr('action');
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
      
    })
    .fail(function(){
      alert('error');
    })

  })
});