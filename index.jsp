<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <script src="https://code.jquery.com/jquery-3.6.4.js" integrity="sha256-a9jBBRygX1Bh5lt8GZjXDzyOB+bWve9EiO7tROUtj/E=" crossorigin="anonymous"></script>

		<button id='export' class='excelBtn svbtncls btn btn-primary mr-2 '
		onclick='exportToExcel("giveget10", "GiveGet10Details")'>Export to Excel</button>
		
		
		<div style='display:flex;justify-content:center'><div class='delRoutesum'><table id='giveget10' align='center' border='1' class='sortable'> </table><h1 style='text-align: center;' id='noData'></h1></div></div>



<script>
			var appendata="";
			
			var data=[
				
			    {
			        "orderid": 6755254767088198,
			        "routeno": 1,
			        "orderPriority": 13,
			        "g10g10code": "naina496",
			        "fname": "naina",
			        "lname": "agarwal",
			        "deliverydate": "04-06-2023"
			    },
			    {
			        "orderid": 6755254767088276,
			        "routeno": 2,
			        "orderPriority": 43,
			        "g10g10code": "himanshu602",
			        "fname": "himanshu",
			        "lname": "patel",
			        "deliverydate": "04-06-2023"
			    },
			    {
			        "orderid": 6755254767088252,
			        "routeno": 6,
			        "orderPriority": 162,
			        "g10g10code": "erum583",
			        "fname": "erum",
			        "lname": "ali",
			        "deliverydate": "04-06-2023"
			    },
			    {
			        "orderid": 6755254767088201,
			        "routeno": 9,
			        "orderPriority": 247,
			        "g10g10code": "sara931",
			        "fname": "sara",
			        "lname": "apland",
			        "deliverydate": "04-06-2023"
			    },
			    {
			        "orderid": 6755254767088182,
			        "routeno": 9,
			        "orderPriority": 253,
			        "g10g10code": "patricia522",
			        "fname": "patricia",
			        "lname": "butkus",
			        "deliverydate": "04-06-2023"
			    },
			    {
			        "orderid": 6755254767087918,
			        "routeno": 12,
			        "orderPriority": 347,
			        "g10g10code": "al456",
			        "fname": "al",
			        "lname": "hardy",
			        "deliverydate": "04-06-2023"
			    },
			    {
			        "orderid": 6755254767088299,
			        "routeno": 14,
			        "orderPriority": 396,
			        "g10g10code": "joel377",
			        "fname": "joel",
			        "lname": "solomon",
			        "deliverydate": "04-06-2023"
			    },
			    {
			        "orderid": 6755254767088173,
			        "routeno": 15,
			        "orderPriority": 422,
			        "g10g10code": "nathan865",
			        "fname": "nathan",
			        "lname": "boddu",
			        "deliverydate": "04-06-2023"
			    },
			    {
			        "orderid": 6755254767088188,
			        "routeno": 15,
			        "orderPriority": 428,
			        "g10g10code": "vishu330",
			        "fname": "vishu",
			        "lname": "namburi",
			        "deliverydate": "04-06-2023"
			    },
			    {
			        "orderid": 6755254767088085,
			        "routeno": 15,
			        "orderPriority": 432,
			        "g10g10code": "taruna998",
			        "fname": "taruna",
			        "lname": "gupta",
			        "deliverydate": "04-06-2023"
			    }
			
				]
			  
			
			
			appendata+= '<thead><tr>'+
			'<th><b>First Delivery Date</b></th><th><b>First Name</b></th><th><b>Last Name</b></th><th><b>Give Get 10 Code</b></th><th><b>Order Id</b></th><th><b>Route No</b></th></thead>';
				if (data.length > 0) {
            	
					for (var i =0; i< data.length; i++) {
	            		
	            					
										appendata+= '<tr>'+
										'<td>'+data[i].deliverydate+'</td>'+
										'<td>'+data[i].fname+'</td>'+
										'<td>'+data[i].lname+'</td>'+
										'<td>'+data[i].g10g10code+'</td>'+
										'<td>'+data[i].orderid+'</td>'+
										'<td>'+data[i].routeno+'</td>'+
										'</tr>';
	            			
	            	 	
					}
            	
            	  jQuery('#giveget10').append("");
            	  jQuery('#giveget10').append(appendata); 
            	  jQuery('#noData').html("");
				}    		 
				else{
						jQuery('#giveget10').append("");
						jQuery('#giveget10').append(appendata);
						jQuery('#noData').html("For selected date records not avaliable");
				} 
              
		 



	
	function exportToExcel(tableID, filename = ''){
	    var downloadurl;
	    var dataFileType = 'application/vnd.ms-excel';
	    var tableSelect = document.getElementById(tableID);
	    var tableHTMLData = tableSelect.outerHTML.replace(/ /g, '%20');
	    tableHTMLData= tableHTMLData.replaceAll("#", '%20');
	    
	    // Specify file name
	    filename = filename?filename+'.xls':'GiveGet10Details.xls';
	    
	    // Create download link element
	    downloadurl = document.createElement("a");
	    
	    document.body.appendChild(downloadurl);
	    
	    if(navigator.msSaveOrOpenBlob){
	        var blob = new Blob(['\ufeff', tableHTMLData], {
	            type: dataFileType
	        });
	        navigator.msSaveOrOpenBlob( blob, filename);
	    }else{
	        // Create a link to the file
	        downloadurl.href = 'data:' + dataFileType + ', ' + tableHTMLData;
	    
	        // Setting the file name
	        downloadurl.download = filename;
	        
	        //triggering the function
	        downloadurl.click();
	    }
	}

</script>
</html>
</body>
</html>