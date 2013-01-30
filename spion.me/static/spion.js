/* spion base js */  


  
function piwik_live_cb(datas)
{
    $('.analytics-wrapper').empty();
    var isYou = false;
//     console.log(datas);
    for(var dx in datas)
    {
        var data = datas[dx];
        if(datas[dx].customVariables['1'].customVariableValue1 === SESSION_KEY)
        {
            isYou = true;
        }
        else
        {
            isYou = false;
        }
        
        var refer = '';
        if(data.referrerName.length > 0)
        {
            refer = 'You come from <a href="'+data.referrerUrl +'">'+ data.referrerName +'</a>';
            if(dat.referrerKeyword.length > 0)
            {
                refer += ', searching with the keywords «'+visit.referrerKeyword+'»';
            }
        }
        
        var actions = 'You visit';
        var act_dict = new Object();
        for(var a in data.actionDetails)
        {
            var action = data.actionDetails[a];
            if(act_dict[action.url] === undefined)
                act_dict[action.url] = {title:action.pageTitle, n:1};
            else
            {
                var n = act_dict[action.url].n;
                act_dict[action.url] = {title:action.pageTitle, n:n+1};
            }
        }
        for(var act in act_dict)
        {
            var action = act_dict[act];
            actions += ' <a href="'+ act +'" title="'+ action.title +'">'+ act.replace(/\//g,"/&shy;") +'</a> '+action.n+' times';
        }
        
        var tpl = { 
            you: '\
                <div class="analytics analytics-self analytics-live" data-sizex="2" data-sort="33">\
                <p><span class="analytics-titlebar"> spion.you </span>On '
                +data.serverDatePrettyFirstAction+' at '
                +data.serverTimePrettyFirstAction +' <span class="you">you</span>, from '
                +data.country +', using '
                +data.browserName+' on '
                +data.operatingSystem+', visit the site for '
                +data.visitDurationPretty+'.</p>\
                <p>\
                Your screen is set to '+ data.resolution +'.\
                </p>\
                <p>You have installed: '+data.plugins+'</p>\
                <p>'+refer+'</p>\
                <p>'+actions+'</p>\
                </div>',
            other:'\
                <div class="analytics analytics-live" data-sizex="2" data-sort="33">\
                <p><span class="analytics-titlebar"> spion.them </span>On '
                +data.serverDatePrettyFirstAction+' at '
                +data.serverTimePrettyFirstAction +' someone from '
                +data.country +', using '
                +data.browserName+' on '
                +data.operatingSystem+', visits the site for '
                +data.visitDurationPretty+'.</p>\
                <p>\
                Their screen is set to '+ data.resolution +'.\
                </p>\
                <p>They have installed: '+data.plugins+'</p>\
                <p>'+refer+'</p>\
                <p>'+actions+'</p>\
                </div>'
        }
        
        
        if ( $('.div.analytics').length === 0 ) {
            $('.analytics-wrapper').append(isYou ? tpl.you : tpl.other);
        } else {
            $($('.div.analytics')[0]).before(isYou ? tpl.you : tpl.other);
        }
    }
}

function self_piwik()
{
    try {
        var piwikTracker = Piwik.getTracker(PIWIK_URL + "piwik.php", PIWIK_SITE_ID);
        piwikTracker.setCustomVariable( 1, 'DjangoSession', SESSION_KEY, 'visit' );
        piwikTracker.trackPageView();
        piwikTracker.enableLinkTracking();
        
        
    } catch( err ) {
        console.log('Error while loading piwikTracker: '+err);
    }
    
//     if($('.analytics-self').length === 0)

    function refresh_piwik()
    {
        if($('.analytics-wrapper').is(':visible'))
        {
            $.ajax(PIWIK_URL+'index.php?module=API&method=Live.getLastVisitsDetails&idSite='+PIWIK_SITE_ID+'&period=day&date=today&format=JSON&token_auth=anonymous&jsoncallback=piwik_live_cb', 
                   {
                       dataType:'jsonp',
                   jsonp: false, 
                   jsonpCallback: "piwik_live_cb"
                   });
        }
    };
    
    var piwik_refresh_handle = window.setInterval(function()
        {
            refresh_piwik();
        }, 10000);
    
    refresh_piwik();
};

function profiles_image()
{
    $('.researcher_name').on('mouseover',function(evt){
        $('.user_picture').attr('src', user_pictures[$(this).attr('id')].src);
    });
}

// resize content wrapper to fit exactly
function fit_content()
{
    var w = $(window);
    var b = $('body');
    var term = $('.analytics-wrapper');
    var ctnt = $('#content-wrapper');
    
    var bm = 2 * parseInt(b.css('marginLeft'));
    var width = w.width() - (term.outerWidth() + bm);
    ctnt.css('width', width + 'px');
    $('#content-wrapper').masonry({
        itemSelector: '.to_mason',
        columnWidth: 100
    });
//     console.log('W: '+ width+ ' => '+ctnt.css('width'));
}

// make external links open in new window
function extern_links()
{
    var isExternal = function(href) {
        /*
         * isExternal("http://i.liketightpants.net/")
         * true
         * isExternal("/publications/")
         * false
         * isExternal("http://spion.me/publications/")
         * false
         * isExternal("http://localhost:8000/publications/")
         * false
         * isExternal("http://127.0.0.1:8000/publications/")
         * false
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
    
}

function toggle_pub_type(evt)
{
    var that = $(this);
    var type_id = that.attr('id').slice('filter_'.length);
    var smr = $('section.'+type_id);
    if(smr.is(':visible'))
    {
        smr.removeClass('to_mason');
        smr.hide();
        that.text('\u2610');
    }
    else
    {
        smr.addClass('to_mason');
        smr.show();
        that.text('\u2612');
    }
    $('#content-wrapper').masonry( 'destroy' );
    fit_content();
}

$(document).ready(function()
{
    fit_content();
    extern_links();
    self_piwik();
    profiles_image();
    
    $(window).on('resize', fit_content);
});

$(window).load(function() {
    var heights = new Array();
    var box_height_step = 42;
    var box_vertical_gap = 10;
    for(var i=1; i < 64; i++)
    {
        heights.push((i*box_height_step) + ((i-1)*box_vertical_gap));
    }
    
    $('.to_mason').each(function() {
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
        var cl = $('<div class="widget-closer">⊗</div>');
        t.prepend(cl);
        cl.on('click', function(evt){
            var sec = t.parents('section');
            sec.remove();
            $('#content-wrapper').masonry({
                itemSelector: '.to_mason',
                columnWidth: 100
            })
        });
    });
    
    $('#content-wrapper').masonry({
        itemSelector: '.to_mason',
        columnWidth: 100
    });
    
    $('.filter_type').on('click', toggle_pub_type);
    
});