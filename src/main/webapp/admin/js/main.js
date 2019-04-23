$(function() {
	
	chart.init();
	chart.initFn();
});


var chart = {
	visitorArr 	: null,
	joinArr 	: null,
	leaveArr 	: null,
	sellArr 	: null,
	dateArr		: null,
	$chartBtn	: null,
	
	chartOptions : {
		legend: {
			display: true,
			position: 'top',
			labels: {
				boxWidth: 80,
				fontColor: 'black'
			}
		},
		scales: {
			yAxes: [{
				ticks: {
					beginAtZero:true,
					max: 10
				}
			}]
		}
	},

	init : function() {
		this.visitorArr = [];
		this.dateArr = [];
		
		var date = new Date();
		date.setDate(date.getDate() - 7);
	
		for (var i=0; i<7; i++) {
			date.setDate(date.getDate() + 1);
			this.dateArr.push(date.getMonth() + 1 + "/" + date.getDate());
		}
		
		this.$chartBtn = $(".chartBtn");
	},
	
	initFn : function() {
		this.showVisitorChart();

		var that = this;
		
		
		this.$chartBtn.click(function() {
			var id = $(this).attr("id");
			
			var chart = [];
			
			$.ajax({
			        url			: "admin_chart.do",
			        type		: "post",
			        data 		: JSON.stringify(id), // Stirng, object, array 스트링이 아니면, 쿼리스트링(키 or 값)으로 바꿔줌
			        contentType : "application/json",
			        success		: function(data){
			        	
			        	var jobj 	= JSON.parse(data);
			        	console.log(jobj);
			        	switch(id) {
			        		case "visitor"	:
			        			that.showVisitorChart();
			        			break;
			        		case "client"	:
			        			that.showClientChart(jobj);
			        			break;
			        		case "sell"		:
			        			that.showSellChart(jobj);
			        			break;
			        	}
						
			        },
			        error		: function(error) {
			        	console.log(error);
			        }
			    })
			
		});
	},
	
	getVisitor : function() {
		this.visitorArr = [];
		
		for (var i=0; i<7; i++) {
			this.visitorArr.push(Math.round(Math.random()*100));
		}

		return this.visitorArr;
	},
	
	getJoinArr : function(list) {
		this.joinArr = [];
		
		for (var i =list.length-1; i>-1; i--) {
			this.joinArr.push(list[i].join_quantity);
			console.log(list[i].join_quantity);
		}

		return this.joinArr;
	},
	
	getLeaveArr : function(list) {
		this.leaveArr = [];
		
		for (var i =list.length-1; i>-1; i--) {
			this.leaveArr.push(list[i].withdraw_quantity);
			console.log(list[i].withdraw_quantity);
		}

		return this.leaveArr;
	},
	
	getSellArr : function(list) {
		this.sellArr	= [];
		
		for (var i =list.length-1; i>-1; i--) {
			this.sellArr.push(list[i].quantity);
			console.log(list[i].quantity);
		}

		return this.sellArr;
	},
	
	showVisitorChart : function() {
		$("#mainChartDiv").empty().append('<canvas id="mainChart"></canvas>');
		
		var visitor = {
			label : "방문자",
			data: this.getVisitor(),
		    lineTension: 0,
		    fill: false,
		    borderColor: 'red',
		    backgroundColor: 'transparent',
		    pointBackgroundColor: 'red',
		    pointRadius: 5,
		    pointHoverRadius: 10,
		    pointHitRadius: 10
		}
		
		var dataSets = {
			labels : this.dateArr,
			datasets : [visitor]
		};

		var lineChart = new Chart($("#mainChart"), {
			type: 'line',
			data: dataSets,
			options: this.chartOptions
		});
		
		return lineChart;
	},
	
	showClientChart : function(jobj) {
		$("#mainChartDiv").empty().append('<canvas id="mainChart"></canvas>');
		
		var join = {
			label : "가입자",
			data: this.getJoinArr(jobj.joinChartList),
		    lineTension: 0,
		    fill: false,
		    borderColor: 'red',
		    backgroundColor: 'transparent',
		    pointBackgroundColor: 'red',
		    pointRadius: 5,
		    pointHoverRadius: 10,
		    pointHitRadius: 10
		};
		
		var leave = {
			label : "탈퇴자",
			data: this.getLeaveArr(jobj.withdrawChartList),
		    lineTension: 0,
		    fill: false,
		    borderColor: 'blue',
		    backgroundColor: 'transparent',
		    pointBackgroundColor: 'blue',
		    pointRadius: 5,
		    pointHoverRadius: 10,
		    pointHitRadius: 10
		};
		
		var dataSets = {
			labels : this.dateArr,
			datasets : [join, leave]
		};

		var lineChart = new Chart($("#mainChart"), {
			type: 'line',
			data: dataSets,
			options: this.chartOptions
		});
		
		return lineChart;
	},
	
	showSellChart : function(jobj) {
		$("#mainChartDiv").empty().append('<canvas id="mainChart"></canvas>');
		
		var sell = {
			label : "판매",
			data: this.getSellArr(jobj.sellChartList),
		    lineTension: 0,
		    fill: false,
		    borderColor: 'purple',
		    backgroundColor: 'transparent',
		    pointBackgroundColor: 'purple',
		    pointRadius: 5,
		    pointHoverRadius: 10,
		    pointHitRadius: 10
		};
		
		var dataSets = {
			labels : this.dateArr,
			datasets : [sell]
		};

		var lineChart = new Chart($("#mainChart"), {
			type: 'line',
			data: dataSets,
			options: this.chartOptions
		});
		
		return lineChart;
	}
};
