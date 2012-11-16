/* spion base js */  

$(window).load(function() {
    
    // make external links open in new window
    
    var isExternal = function(href) {
    /*
    isExternal("http://i.liketightpants.net/")
    true
    isExternal("/publications/")
    false
    isExternal("http://spion.me/publications/")
    false
    isExternal("http://localhost:8000/publications/")
    false
    isExternal("http://127.0.0.1:8000/publications/")
    false
    */
        if (href.indexOf("http") === -1 || href.indexOf(document.location.host) !== -1 || href.indexOf("localhost") !== -1 || href.indexOf("127.0.0.1") !== -1 ) {
            return false;
        }
        return true;
    };
    
    $("a[href]").each(
        function() { 
            if (isExternal($(this).attr('href')) ) { 
                $(this).attr('target', '_blank')
            }
        }
    )
    
    // Snap heights:
    
//     var heights = [130, 272, 414, 556, 698, 840, 982, 1124, 1266, 1408, 1550, 1692]
    var heights = new Array();
    var box_height_step = 42;
    var box_vertical_gap = 10;
    for(var i=1; i < 64; i++)
    {
        heights.push((i*box_height_step) + ((i-1)*box_vertical_gap));
    }
    console.log(heights);
    
    $('section').not('.logo').each(function() {
       var old_height = $(this).height();
       for (var i = 0; i < heights.length; i++) {
           if (heights[i] >= old_height) {
               $(this).height(heights[i]); // console.log(old_height, heights[i]);
               break;
           }
       } 
    });
    
    $('.titlebar').each(function(idx, elem){
        var t = $(elem);
        var cl = $('<div class="widget-closer">x</div>');
        t.prepend(cl);
        cl.on('click', function(evt){
            var sec = t.parents('section');
            sec.remove();
            $('body').masonry({
                itemSelector: 'section',
                columnWidth: 100
            })
        });
    });
    
    $('body').masonry({
      itemSelector: 'section',
      columnWidth: 100
    })

      
});
  
function piwik_live_cb(data)
{
    
}

$(document).ready(function()
{
    try {
        var piwikTracker = Piwik.getTracker(PIWIK_URL + "piwik.php", PIWIK_SITE_ID);
        piwikTracker.setCustomVariable( 1, 'DjangoSession', SESSION_KEY, 'visit' );
        piwikTracker.trackPageView();
        piwikTracker.enableLinkTracking();
        
        
    } catch( err ) {
        console.log('Error while loading piwikTracker: '+err);
    }
    
    $.ajax(PIWIK_URL+'?module=API&method=Live.getLastVisitsDetails&idSite='+PIWIK_SITE_ID+'&period=day&date=today&format=JSON&token_auth=anonymous&jsoncallback=piwik_live_cb', 
           {
               dataType:'jsonp',
                jsonp: false, 
                jsonpCallback: "piwik_live_cb"
        });
});