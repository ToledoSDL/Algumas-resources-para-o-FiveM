

$(document).ready(function(){

    window.addEventListener( 'message', function( event ) {
           var item = event.data;
   
                if ( item.infos == true ) {
                $('.container').css('display','block');
            } else if ( item.infos == false ) {
                $('.container').css("display","none");
            }
       });

    $("#andar1").click(function(){
        $.post('http://xpk_elevador/andar1', JSON.stringify({}));2
    });
    $("#andar2").click(function(){
        $.post('http://xpk_elevador/andar2', JSON.stringify({}));2
    });
    $("#andar3").click(function(){
        $.post('http://xpk_elevador/andar3', JSON.stringify({}));2
    });
    $("#andar4").click(function(){
        $.post('http://xpk_elevador/andar4', JSON.stringify({}));2
    });
    $("#andar5").click(function(){
        $.post('http://xpk_elevador/andar5', JSON.stringify({}));2
    });
    $("#andar6").click(function(){
        $.post('http://xpk_elevador/andar6', JSON.stringify({}));2
    });
    $("#andar-1").click(function(){
        $.post('http://xpk_elevador/andar-1', JSON.stringify({}));2
    });
    $("#andar-2").click(function(){
        $.post('http://xpk_elevador/andar-2', JSON.stringify({}));2
    });
    $("#andar-3").click(function(){
        $.post('http://xpk_elevador/andar-3', JSON.stringify({}));2
    });








    $("#close").click(function(){
        $.post('http://xpk_elevador/close', JSON.stringify({}));2
    });
   
   })