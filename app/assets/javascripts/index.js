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
  function buildHeaderCount(battles){
    var htmlHeader = `<div class="header">
                        ${battles.count}
                      </div>`
    console.log(5);
    return htmlHeader;
  }
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
      var htmlHeader = buildHeaderCount(data)
      $('.messages').append(html);
      $('#making').val('');
      $('.submit-btn').prop('disabled', false);

    })
    .fail(function(){
      alert('error');
    });

  })
});