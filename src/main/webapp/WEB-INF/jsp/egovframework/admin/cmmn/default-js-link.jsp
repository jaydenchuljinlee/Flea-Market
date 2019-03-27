<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!-- Javascript files -->

<!-- 추가한 left.js -->
<script src="admin/js/left.js"></script>

<!-- Bootstrap JS -->
<script src="admin/js/bootstrap.min.js"></script>
<!-- jQuery UI -->
<script src="admin/js/jquery-ui.min.js"></script> 
<!-- jQuery Flot -->
<script src="admin/js/excanvas.min.js"></script>
<script src="admin/js/jquery.flot.js"></script>
<script src="admin/js/jquery.flot.resize.js"></script>
<script src="admin/js/jquery.flot.pie.js"></script>
<script src="admin/js/jquery.flot.stack.js"></script>
<!-- Sparklines -->
<script src="admin/js/sparklines.js"></script> 
<!-- Respond JS for IE8 -->
<script src="admin/js/respond.min.js"></script>
<!-- HTML5 Support for IE -->
<script src="admin/js/html5shiv.js"></script>
		
<!-- Script for this page -->
<script src="admin/js/sparkline-index.js"></script>

<!-- content 별로 필요한 javascript import를 위한 분기 -->	
<c:choose> 
	<c:when test="${param.pageHeadName eq 'main'}"> <!-- main(dashboard)일 경우 -->  
		<script type="text/javascript">
			$(function () {
	
				/* Bar Chart starts */
	
				var d1 = [];
				for (var i = 0; i <= 30; i += 1)
					d1.push([i, parseInt(Math.random() * 30)]);
	
				var d2 = [];
				for (var i = 0; i <= 30; i += 1)
					d2.push([i, parseInt(Math.random() * 30)]);
	
	
				var stack = 0, bars = true, lines = false, steps = false;
				
				function plotWithOptions() {
					$.plot($("#bar-chart"), [ d1, d2 ], {
						series: {
							stack: stack,
							lines: { show: lines, fill: true, steps: steps },
							bars: { show: bars, barWidth: 0.8 }
						},
						grid: {
							borderWidth: 0, hoverable: true, color: "#777"
						},
						colors: ["#52b9e9", "#0aa4eb"],
						bars: {
							  show: true,
							  lineWidth: 0,
							  fill: true,
							  fillColor: { colors: [ { opacity: 0.9 }, { opacity: 0.8 } ] }
						}
					});
				}
	
				plotWithOptions();
				
				$(".stackControls input").click(function (e) {
					e.preventDefault();
					stack = $(this).val() == "With stacking" ? true : null;
					plotWithOptions();
				});
				$(".graphControls input").click(function (e) {
					e.preventDefault();
					bars = $(this).val().indexOf("Bars") != -1;
					lines = $(this).val().indexOf("Lines") != -1;
					steps = $(this).val().indexOf("steps") != -1;
					plotWithOptions();
				});
	
				/* Bar chart ends */
	
			});
	
	
			/* Curve chart starts */
	
			$(function () {
				var sin = [], cos = [];
				for (var i = 0; i < 14; i += 0.5) {
					sin.push([i, Math.sin(i)]);
					cos.push([i, Math.cos(i)]);
				}
	
				var plot = $.plot($("#curve-chart"),
					   [ { data: sin, label: "sin(x)"}, { data: cos, label: "cos(x)" } ], {
						   series: {
							   lines: { show: true, 
										fill: true,
										fillColor: {
										  colors: [{
											opacity: 0.05
										  }, {
											opacity: 0.01
										  }]
									  }
							  },
							   points: { show: true }
						   },
						   grid: { hoverable: true, clickable: true, borderWidth:0 },
						   yaxis: { min: -1.2, max: 1.2 },
						   colors: ["#fa3031", "#43c83c"]
						 });
	
	
				function showTooltip(x, y, contents) {
					$('<div id="tooltip">' + contents + '</div>').css( {
						position: 'absolute',
						display: 'none',
						top: y + 5,
						width: 100,
						left: x + 5,
						border: '1px solid #000',
						padding: '2px 8px',
						color: '#ccc',
						'background-color': '#000',
						opacity: 0.9
					}).appendTo("body").fadeIn(200);
				}
	
				var previousPoint = null;
				$("#curve-chart").bind("plothover", function (event, pos, item) {
					$("#x").text(pos.x.toFixed(2));
					$("#y").text(pos.y.toFixed(2));
	
						if (item) {
							if (previousPoint != item.dataIndex) {
								previousPoint = item.dataIndex;
								
								$("#tooltip").remove();
								var x = item.datapoint[0].toFixed(2),
									y = item.datapoint[1].toFixed(2);
								
								showTooltip(item.pageX, item.pageY, item.series.label + " of " + x + " = " + y);
							}
						}
						else {
							$("#tooltip").remove();
							previousPoint = null;            
						}
				}); 
	
				$("#curve-chart").bind("plotclick", function (event, pos, item) {
					if (item) {
						$("#clickdata").text("You clicked point " + item.dataIndex + " in " + item.series.label + ".");
						plot.highlight(item.series, item.datapoint);
					}
				});
	
			});
	
			/* Curve chart ends */
			
		</script>
	</c:when>
	<c:when test="${param.pageHeadName eq 'charts'}"> <!-- charts일 경우 --> 
		<script type="text/javascript">
		$(function () {

			/* Bar Chart starts */

			var d1 = [];
			for (var i = 0; i <= 30; i += 1)
				d1.push([i, parseInt(Math.random() * 30)]);

			var d2 = [];
			for (var i = 0; i <= 30; i += 1)
				d2.push([i, parseInt(Math.random() * 30)]);


			var stack = 0, bars = true, lines = false, steps = false;
			
			function plotWithOptions() {
				$.plot($("#bar-chart"), [ d1, d2 ], {
					series: {
						stack: stack,
						lines: { show: lines, fill: true, steps: steps },
						bars: { show: bars, barWidth: 0.8 }
					},
					grid: {
						borderWidth: 0, hoverable: true, color: "#777"
					},
					colors: ["#52b9e9", "#0aa4eb"],
					bars: {
						  show: true,
						  lineWidth: 0,
						  fill: true,
						  fillColor: { colors: [ { opacity: 0.9 }, { opacity: 0.8 } ] }
					}
				});
			}

			plotWithOptions();
			
			$(".stackControls input").click(function (e) {
				e.preventDefault();
				stack = $(this).val() == "With stacking" ? true : null;
				plotWithOptions();
			});
			$(".graphControls input").click(function (e) {
				e.preventDefault();
				bars = $(this).val().indexOf("Bars") != -1;
				lines = $(this).val().indexOf("Lines") != -1;
				steps = $(this).val().indexOf("steps") != -1;
				plotWithOptions();
			});

			/* Bar chart ends */

		});


		/* Curve chart starts */

		$(function () {
			var sin = [], cos = [];
			for (var i = 0; i < 14; i += 0.5) {
				sin.push([i, Math.sin(i)]);
				cos.push([i, Math.cos(i)]);
			}

			var plot = $.plot($("#curve-chart"),
				   [ { data: sin, label: "sin(x)"}, { data: cos, label: "cos(x)" } ], {
					   series: {
						   lines: { show: true, 
									fill: true,
									fillColor: {
									  colors: [{
										opacity: 0.05
									  }, {
										opacity: 0.01
									  }]
								  }
						  },
						   points: { show: true }
					   },
					   grid: { hoverable: true, clickable: true, borderWidth:0 },
					   yaxis: { min: -1.2, max: 1.2 },
					   colors: ["#fa3031", "#43c83c"]
					 });


			function showTooltip(x, y, contents) {
				$('<div id="tooltip">' + contents + '</div>').css( {
					position: 'absolute',
					display: 'none',
					top: y + 5,
					width: 100,
					left: x + 5,
					border: '1px solid #000',
					padding: '2px 8px',
					color: '#ccc',
					'background-color': '#000',
					opacity: 0.9
				}).appendTo("body").fadeIn(200);
			}

			var previousPoint = null;
			$("#curve-chart").bind("plothover", function (event, pos, item) {
				$("#x").text(pos.x.toFixed(2));
				$("#y").text(pos.y.toFixed(2));

					if (item) {
						if (previousPoint != item.dataIndex) {
							previousPoint = item.dataIndex;
							
							$("#tooltip").remove();
							var x = item.datapoint[0].toFixed(2),
								y = item.datapoint[1].toFixed(2);
							
							showTooltip(item.pageX, item.pageY, item.series.label + " of " + x + " = " + y);
						}
					}
					else {
						$("#tooltip").remove();
						previousPoint = null;            
					}
			}); 

			$("#curve-chart").bind("plotclick", function (event, pos, item) {
				if (item) {
					$("#clickdata").text("You clicked point " + item.dataIndex + " in " + item.series.label + ".");
					plot.highlight(item.series, item.datapoint);
				}
			});

		});

		/* Curve chart ends */
		
		/* Realtime chart starts */
		
		$(function () {
		    // we use an inline data source in the example, usually data would
		    // be fetched from a server
		    var data = [], totalPoints = 300;
		    function getRandomData() {
		        if (data.length > 0)
		            data = data.slice(1);
		
		        // do a random walk
		        while (data.length < totalPoints) {
		            var prev = data.length > 0 ? data[data.length - 1] : 50;
		            var y = prev + Math.random() * 10 - 5;
		            if (y < 10)
		                y = 10;
		            if (y > 70)
		                y = 70;
		            data.push(y);
		        }
		
		        // zip the generated y values with the x values
		        var res = [];
		        for (var i = 0; i < data.length; ++i)
		            res.push([i, data[i]])
		        return res;
		    }
		
		    // setup control widget
		    var updateInterval = 300;
		    $("#updateInterval").val(updateInterval).change(function () {
		        var v = $(this).val();
		        if (v && !isNaN(+v)) {
		            updateInterval = +v;
		            if (updateInterval < 1)
		                updateInterval = 1;
		            if (updateInterval > 2000)
		                updateInterval = 2000;
		            $(this).val("" + updateInterval);
		        }
		    });
		
		    // setup plot
		    var options = {
		        series: { shadowSize: 0 }, // drawing is faster without shadows
		        lines: {fill: true},
		        grid: {borderWidth:0 },
		        yaxis: { min: 0, max: 100 },
		        colors: ["#ff2424"]
		    };
		    var plot = $.plot($("#live-chart"), [ getRandomData() ], options);
		
		    function update() {
		        plot.setData([ getRandomData() ]);
		        // since the axes don't change, we don't need to call plot.setupGrid()
		        plot.draw();
		        
		        setTimeout(update, updateInterval);
		    }
		
		    update();
		});
		
		/* Realtime charts ends */
		
		/* Pie chart starts */
		
		$(function () {
		
		    var data = [];
		    var series = Math.floor(Math.random()*10)+1;
		    for( var i = 0; i<series; i++)
		    {
		        data[i] = { label: "Series"+(i+1), data: Math.floor(Math.random()*100)+1 }
		    }
		
		    $.plot($("#pie-chart"), data,
		    {
		        series: {
		            pie: {
		                show: true,
		                radius: 1,
		                label: {
		                    show: true,
		                    radius: 3/4,
		                    formatter: function(label, series){
		                        return '<div style="font-size:8pt;text-align:center;padding:2px;color:white;">'+label+'<br/>'+Math.round(series.percent)+'%</div>';
		                    },
		                    background: { opacity: 0 }
		                }
		            }
		        },
		        grid: {hoverable: true},
		        legend: {
		            show: false
		        }
		    }); 
		
		    $.plot($("#pie-chart2"), data,
		    {
		        series: {
		            pie: {
		                show: true
		            }
		        },
		        grid: {hoverable: true}
		    });
		
		
		    $.plot($("#pie-chart3"), data,
		    {
		        series: {
		            pie: {
		                show: true
		            }
		        },
		        grid: {hoverable: true},
		        legend: {
		            show: false
		        }
		    });   
		
		/* Pie chart ends */
		
		});

		</script>
	</c:when>
	<c:when test="${param.pageHeadName eq 'calendars'}"> <!-- calendars일 경우 --> 
		<script src="js/moment.min.js"></script>
		<script src="js/fullcalendar.min.js"></script>
		
		<script type="text/javascript">
			/* Calendar */
			$(document).ready(function() {
			  
				var date = new Date();
				var d = date.getDate();
				var m = date.getMonth();
				var y = date.getFullYear();
				
				$('#calendar').fullCalendar({
				  header: {
					left: 'prev',
					center: 'title',
					right: 'month,agendaWeek,agendaDay,next'
				  },
				  editable: true,
				  events: [
					{
					  title: 'All Day Event',
					  start: new Date(y, m, 1)
					},
					{
					  title: 'Long Event',
					  start: new Date(y, m, d-5),
					  end: new Date(y, m, d-2)
					},
					{
					  id: 999,
					  title: 'Repeating Event',
					  start: new Date(y, m, d-3, 16, 0),
					  allDay: false
					},
					{
					  id: 999,
					  title: 'Repeating Event',
					  start: new Date(y, m, d+4, 16, 0),
					  allDay: false
					},
					{
					  title: 'Meeting',
					  start: new Date(y, m, d, 10, 30),
					  allDay: false
					},
					{
					  title: 'Lunch',
					  start: new Date(y, m, d, 12, 0),
					  end: new Date(y, m, d, 14, 0),
					  allDay: false
					},
					{
					  title: 'Birthday Party',
					  start: new Date(y, m, d+1, 19, 0),
					  end: new Date(y, m, d+1, 22, 30),
					  allDay: false
					},
					{
					  title: 'Click for Google',
					  start: new Date(y, m, 28),
					  end: new Date(y, m, 29),
					  url: 'http://google.com/'
					}
				  ]
				});
			});

		</script>
	</c:when>
</c:choose>

<script>
	
		$(function() {
			var pageName = "<c:out value="${param.pageHeadName}"/>"; // var pageName에는 클릭한 페이지명이 들어간다
			var $pageName = $("#" + pageName); // 클릭한 태그를 jQuery 변수인 $pageName에 넣는다.
			var $has_submenu = $($pageName).closest(".has_submenu"); // 클릭한 태그가 서브 메뉴 유무 확인을 위한 $has_submenu 변수
			
			$(".menu").removeClass("current"); // 단일 메뉴 highlight 제거
			$(".menu").removeClass("active"); // 서브 메뉴 highlight 제거
			
			if($has_submenu.length === 1) { //서브 메뉴를 가지고 있을 경우
				$has_submenu.addClass("open");
				$pageName.addClass("active");
			} else { //서브 메뉴를 가지고 있지 않을 경우
				$pageName.addClass("current"); 
			}
			
			$(".menu").click(function() { // .menu 클래스를 가진 태그들의 이벤트리스너
				var menu = $(this).attr("id"); // 내가 클릭한 태그의 속성중의 id의 값을 빼와서 var menu에 넣는다는 것.
				
				left.pageSubmitFn(menu);
			})
		})

</script>  

