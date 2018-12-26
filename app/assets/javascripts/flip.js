   $().ready(function(){
        $('[rel="tooltip"]').tooltip();

    });

    function rotateCard(btn){
        var $card = $(btn).closest('.flip-card-container');
        console.log($card);
        if($card.hasClass('hover')){
            $card.removeClass('hover');
        } else {
            $card.addClass('hover');
        }
    }