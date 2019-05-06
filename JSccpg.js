//alert("toto");

function fixDiv() {
    var $cache = $('#getFixed');
    if ($(window).scrollTop() > 100)
        $cache.css({ 'position': 'fixed', 'top': '10px', 'z-index': '1', 'float': 'center' });
    else
        $cache.css({ 'position': 'relative', 'top': 'auto', 'z-index': '1', 'float': 'center' });
}
$(window).scroll(fixDiv);
fixDiv();

function troll() {
    alert("se bouton ne fonctionne pas j'ai pas trouver comment faire ^^ desoler ")
}

function onclick(event) {
    scrollLent();
}



function openCity(evt, cityName) {

    var i, tabcontent, tablinks;
    tabcontent = document.getElementsByClassName("tabcontent");
    for (i = 0; i < tabcontent.length; i++) {
        tabcontent[i].style.display = "none";
    }
    tablinks = document.getElementsByClassName("tablinks");
    for (i = 0; i < tablinks.length; i++) {
        tablinks[i].className = tablinks[i].className.replace(" active", "");
    }
    document.getElementById(cityName).style.display = "block";
    evt.currentTarget.className += " active";
}


/*var carrousel = {
	
	nbSlide : 0,
	nbCurrent : 1,
	elemCurrent : null,
	elem : null,
	timer : null,
	
	/*init:function(elem){
		this.nbSlide = elem.find(".slide").length;
		
		//Créer la pagination
		
	/*	elem.append('<div class="navigation"></div>');
		for(var i = 1; i<=this.nbSlide; i++){
			elem.find(".navigation").append("<span>"+i+"</span>");
		}
		
	/*	elem.find(".navigation span").click(function(){carrousel.gotoSlide($(this).text());})
		
		//Initialiser le carrousel
	/*	this.elem=elem;
		elem.find(".slide").hide();
		elem.find(".slide:first").show();
		this.elemCurrent = elem.find(".slide:first");
		this.elem.find(".navigation span:first").addClass("active");
		
		// on cré le timer
		//this.timer = window.setInterval("carrousel.next()",5000);
	/*	carrousel.play();
		
		//stop quand on passe dessus
		
	/*	elem.mouseover(carrousel.stop);
		elem.mouseout(carrousel.play);
		
	},
	gotoSlide : function(num){
		if(num==this.nbCurrent){return false;}
		
		/* Animation en fadeIn/fadeOut
		this.elemCurrent.fadeOut();
		//this.elem.find(".slide:eq("+num-1+")");
		this.elem.find("#slide"+num).fadeIn();*/

/*Animation en slide
var sens = 1;
if(num<this.nbCurrent){
    sens = -1;
}
var cssDep = {"left":sens*this.elem.width()};
var cssFin = {"left":-sens*this.elem.width()};
this.elem.find("#slide"+num).show().css(cssDep);*/
/*	
    this.elemCurrent.find(".visu").fadeOut();
    this.elem.find("#slide"+num).show();
    this.elem.find("#slide"+num+".visu").hide().fadeIn();
	
    var titleHeight = this.elemCurrent.find(".title").height();
	
    this.elemCurrent.find(".visu.title").animate({"bottom": - titleHeight},5000);
    this.elem.find("#slide"+num+".title").css("bottom",-titleHeight).animate({"bottom":0},5000);
	
	
    /*this.elem.find("#slide"+num).animate({"top":0,"left":0},500)
    this.elemCurrent.animate(cssFin,500);*/

/*	this.elem.find(".navigation span").removeClass("active");
    this.elem.find(".navigation span:eq("+(num-1)+")").addClass("active");
    this.nbCurrent = num;
    this.elemCurrent = this.elem.find("#slide"+num);
},	
	
next : function(){
    var num = this.nbCurrent+1;
    if(num>this.nbSlide){
        num = 1;
    }
    this.gotoSlide(num);
},
prev : function(){
    var num = this.nbCurrent-1;
    if(num<1){
        num = this.nbSlide;
    }
    this.gotoSlide(num);
},
	
stop : function(){
    window.clearInterval(carrousel.timer);
},
play : function(){
    window.clearInterval(carrousel.timer);
    this.timer = window.setInterval("carrousel.next()",5000);
}
}
$(function(){
 carrousel.init($("#carrousel"));
});*/



var carrousel = {

    nbSlide: 0,
    nbCurrent: 1,
    elemCurrent: null,
    elem: null,
    timer: null,

    init: function (elem) {
        this.nbSlide = elem.find(".slide").length;

        // Créer les boutton





        // Créer la pagination
        elem.append('<div class="navigation"></div>')
        for (var i = 1; i <= this.nbSlide; i++) {
            elem.find(".navigation").append("<span>" + i + "</span>")
        }
        elem.find(".navigation span").click(function () { carrousel.gotoSlide($(this).text()); })

        // Initialisation du carrousel
        this.elem = elem;
        elem.find(".slide").hide();
        elem.find(".slide:first").show();
        this.elemCurrent = elem.find(".slide:first");
        this.elem.find(".navigation span:first").addClass("active");

        //On cré le timer
        /*carrousel.play();*/
        this.timer = window.setInterval("carrousel.next()", 5000);

        // stop quand on passe dessus.
		/*elem.mouseover(carrousel.stop);
		elem.mouseout(carrousel.play);*/
    },


    gotoSlide: function (num) {
        if (num === this.nbCurrent) {
            return false;
        }
		/*// Animation en fadeIn/fadeOut
		this.elemCurrent.fadeOut();
		//this.elem.find(".slide:eq("+num-1+")").fadeIn();
		this.elem.find("#slide"+num).fadeIn();
		*/
		/*//Animation en slide
		var sens = 1;
		if(num<this.nbCurrent){sens = -1;}
		var cssDeb = {"left":sens*this.elem.width()};
		var cssFin = {"left":-sens*this.elem.width()};
		this.elem.find("#slide"+num).show().css(cssDeb);
		this.elem.find("#slide"+num).animate({"top":0,"left":0},500);
		this.elemCurrent.animate(cssFin,500);*/

        this.elemCurrent.find(".visu").fadeOut();
        this.elem.find("#slide" + num).show();
        this.elem.find("#slide" + num + ".visu").hide().faceIn();

        var titleHeight = this.elemCurrent.find(".title").height();

        this.elemCurrent.find(".visu .title").animate({ "bottom": - titleHeight }, 500);
        this.elem.find("#slide" + num + ".title").css("bottom", -titleHeight).animate({ "bottom": 0 }, 500);



        this.elem.find(".navigation span").removeClass("active");
        this.elem.find(".navigation span:eq(" + (num - 1) + ")").addClass("active");
        this.nbCurrent = num;
        this.elemCurrent = this.elem.find("#slide" + num);

    },

    next: function () {
        var num = this.nbCurrent + 1;
        if (num > this.nbSlide) {
            num = 1;
        }
        this.gotoSlide(num);
    },

    prev: function () {
        var num = this.nbCurrent - 1;
        if (num < 1) {
            num = this.nbSlide;
        }
        this.gotoSlide(this.nbCurrent);
    },

	/*stop : function(){
		window.clearInterval(carrousel.timer);
	},
	
	play : function(){
		window.clearInterval(carrousel.timer);
		this.timer = window.setInterval("carrousel.next()",5000);
	}*/





}

$(function () {
    carrousel.init($("#carrousel"));

});


