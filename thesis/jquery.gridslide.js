/* 
 * Grid Slide
 * Copyright 2011 Justin Volpato - http://jasuten.com
 * Released under the MIT and GPL licenses.
 * Version 1.01
 */
(function($){

	$.fn.gridslide = function(settings){
		var options = $.extend({
			shown: 8, // How many viewports are created, should be set to less than the number of slides
			direction: 'random', // random shuffles between top, right, bottom, left
			timeout: 2200, // Length of time between animations
			speed: 2000, //Animation Speed
			viewportClass: 'viewport', // You can change the css class of the viewports
			easing: 'linear', // Standard jquery easing setting, use the easing plugin for more effects
			viewHeight: parseInt($(this).children().css('height'),0), // Height of the slides
			viewWidth: parseInt($(this).children().css('width'),0) // Width of the slides
		}, settings);
		
		
		Array.prototype.shuffle = function (){ 
		        for(var rnd, tmp, i=this.length; i; rnd=parseInt(Math.random()*i), tmp=this[--i], this[i]=this[rnd], this[rnd]=tmp);
		};
		
		return this.each(function(){

			// Inital Variables
			var gridchildren = [];
			var gridkey = [];
			var activechildren = [];
			var childcount = $(this).children().length;
			var viewports = [];
			var direction = options.direction === 'random' ? ['left', 'right', 'top', 'bottom'] : [options.direction];
			var i = 0;
			var context = this;
			
			// Save all slides into array
			for (i = 0; i < childcount; i += 1) {
				gridchildren[i] = ($(this).children().eq(i).attr('slide', i).wrap('<div />').parent().html());
				gridkey[i] = i;
			}
			
			// Create viewports array
			for (i = 0; i < options.shown; i += 1) {
				viewports[i] = i;
			}
			
			// Remove old content out of the container
			$(this).empty();
			
			// Shuffle those arrays baby!
			gridkey.shuffle();
			viewports.shuffle();
			
			// Put initial slides into new viewports
			var inithtml = "";
			for (i = 0; i < options.shown; i += 1) {
				inithtml += "<div class='" + options.viewportClass + "'>" + gridchildren[gridkey[i]] + "</div>";
				activechildren[i] = (gridkey[i] + '');
			}
			$(this).html(inithtml);
			
			// Put the rest of the slides into the viewports evenly
			function placeExtra(){
				var v = 0;
				var x;
				// For all slides
				for (x = 0; x < childcount; x += 1) {
				
					if ($.inArray(gridkey[x] + '', activechildren) === -1) {
					
						if (v === (options.shown)) {
							v = 0;
						}
						$('.' + options.viewportClass + ':eq(' + viewports[v] + ')',context).append(gridchildren[gridkey[x]]);
						v += 1;
					}
				}
				animateViews();
			}
			
			function animateSlide(el){
				direction.shuffle();
				var elChilds = el.children();
				var cssProp = {};
				
				var dir = direction[0];
				var viewW = options.viewWidth;
				var viewH = options.viewHeight;
				
				function dirSet(eq){
					switch(dir){
						case 'top':
						cssProp[dir] = (viewH * eq) + "px";
						break;
						case 'bottom':
						cssProp[dir] = (viewH * eq) + "px";
						break;
						default:
						cssProp[dir] = (viewW * eq) + "px";
						break;
					}
					return cssProp;
				}
				//Set the style on the slides not in view
				elChilds.css(dirSet(-1));
				
				//Set the style on the slide being shown
				elChilds.eq(0).css({
					left: 'auto',
					right: 'auto',
					bottom: 'auto',
					top: 'auto'
				});
				elChilds.eq(0).css(dirSet(0));
				
				// Animate the active slide out of the viewport
				elChilds.eq(0).animate(dirSet(1), options.speed, options.easing);
				
				// Activate the next one into the viewport
				elChilds.eq(1).animate(dirSet(0), options.speed, options.easing, function(){
					elChilds.not(':eq(1)').remove();
				});
				
			}
			
			
			function animateViews(){
				activechildren = [];
				for (i = 0; i < options.shown; i += 1) {
					var el = $('.' + options.viewportClass + ':eq(' + i + ')',context);
					
					// If there is more than one slide in a viewport, animate it!!!
					if (el.children().length > 1) {
						animateSlide(el);
						activechildren[i] = (el.children().eq(1).attr('slide'));
					}
					else {
						// This sad unanimated one is still active!
						activechildren[i] = (el.children().eq(0).attr('slide'));
					}
				}
			}
			
			
			function slidearound(){
				placeExtra();
				gridkey.shuffle();
				viewports.shuffle();
				setTimeout(slidearound, (options.timeout+options.speed));
			}
			slidearound();
			
		});
	};
})(jQuery);
