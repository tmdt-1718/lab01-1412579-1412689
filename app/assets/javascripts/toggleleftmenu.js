$(document).ready(function(){
    $('#offcanvasleft').click(function(){
        if ( $('#left').hasClass('active') ){
            $('#left').removeClass('active');
        }
        else{
            $('#left').addClass('active');
        }
        if ( $('#right').hasClass('active') ){
            $('#right').removeClass('active');
        }
        else{
            $('#right').addClass('active');
        }
    });
});