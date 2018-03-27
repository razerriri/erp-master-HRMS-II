var sidebar = {
		syscon : function(){
			$("#syscon").last().addClass("active");  
 			$("#sbhr").last().addClass("active");  
		},
		
		hra : function(){
			$("#hr").last().addClass("active");
 			$("#pa").last().addClass("active");
 			$("#hra").last().addClass("active");
		},
		
		payroll : function(){
			$("#hr").last().addClass("active");
			$("#pr").last().addClass("active");
			$("#prr").last().addClass("active");
		},
		
		cpa : function(){
			$("#hr").last().addClass("active");
			$("#pr").last().addClass("active");
			$("#cpa").last().addClass("active");
		},
		
		cpat : function(){
			$("#hr").last().addClass("active");
			$("#pr").last().addClass("active");
			$("#cpa").last().addClass("active");
			$("#tr").last().addClass("active");
		}
}