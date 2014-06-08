<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<script src="./codalib/js/jquery.easing.1.3.js"></script>
<script src="./codalib/js/jquery.coda-slider-3.0.js"></script>
<script>
	$('#slider-id').codaSlider();
</script>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="">

<title>Privacy Policy Builder</title>

<!-- Bootstrap core CSS -->
<link href="css/bootstrap.css" rel="stylesheet">

<!-- Add custom CSS here -->
<link href="css/business-casual.css" rel="stylesheet">


<meta charset='utf-8' />
<meta http-equiv="X-UA-Compatible" content="chrome=1" />
<meta name="description" content="Codaslider : JQuery Slider Plugin" />

<!-- 
      Here is the style sheet for the Coda Slider
      You may want to "minify" this after making edits
      http://www.refresh-sf.com/yui/ 
    -->
<link rel="stylesheet" type="text/css" media="screen"
	href="./css/coda-slider.css">

<!-- This is just styling for the demo to make it a little less crowded at the top -->
<style>
h1 {
	margin: 100px;
}
</style>


<!-- Coda Slider relies on jQuery and easing effects-->
<script
	src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
<script src="./js/jquery.easing.1.3.js"></script>

<!-- This of course is required. The full version (not .min) is also included in the js directory -->
<script src="./js/jquery.coda-slider-3.0.min.js"></script>

<title>Coda Slider 3.0</title>
<script src="jquery.js"></script>

<script> 
    $(function(){
      $("#includedContent").load("b.html"); 
    });
</script>

<script>


	$(function() {

		/* Here is the slider using default settings */
		$('#slider-id').codaSlider();

	});
	
	 
	function myFunction() {
		//$("#coda-nav-right-1 > a").click();

		$("#right-link").click();
	}

	function btQ1Function() {
		var count = 0;
		    var elems = document.getElementsByClassName('q1checkbox'), i;
		    for (i in elems) {
		        if(elems[i].checked) {
		            count = count + 1;
		        }
		    }
		var mystring = document.getElementById('q1-1').value; 
	    if(!mystring.match(/\S/)) {
	        alert ('Empty value of company name is not allowed');
	        return; 
	    } 
	    
		if(count < 5) {
			alert("The number of product or service should be >= 5");
			return; 
		}

		$('.coda-nav-right').trigger('click');
		//$('.tab3').trigger('click');
			
	}
	
	function btQ2Function() {
		var elems = document.getElementsByClassName('q2select');
		var count = 0;
		
		// If user didn't select all values
		for ( var i = 0; i < 7; i++ ) {
		    if(elems[i].value == "-") {
		    	alert("please select all values");
		    	return;
		    }
		}
		
		
		// If user select all Nos, then no opt-out
		var noExists = 1;
		for ( var i = 0; i < 7; i++ ) {
		    if(elems[i].value == "yes") {
		    	noExists = 0;
		    }
		}
		/*
		for ( var i = 0; i < 8; i++ ) {
		    if (document.getElementById('q2-1').value != "yes") {
				alert("disable");
		        $("#q3-"+i).prop('disabled', 'disabled');
		    }
		    else {
		    	$("#q3-"+i).removeAttr("disabled");
		    }
		}
		*/

		for ( var i = 0; i < 7; i++ ) {
			var index = i + 1;
			var q3Element = "#q3-"+String(index);
			var q2Element = 'q2-'+index;
			//alert(q2Element);
		    if (document.getElementById(q2Element).value != "yes") {
				//alert("disable");
		        $(q3Element).prop('disabled', 'disabled');
		    }
		    else {
		    	$(q3Element).removeAttr("disabled");
		    }
		}
		
		alert("please select all values");
		
		$('.coda-nav-right').trigger('click');			
	}
	
	function btQ3Function() {
		//??
		var elems = document.getElementsByClassName('q3select');
		var count = 0;
		for ( var i = 0; i < 7; i++ ) {
		    if(elems[i].value == "-") {
		    	//alert("please select all values");
		    	//return;
		    }
		}

		// If user select all Nos, then no opt-out
		elems = document.getElementsByClassName('q3select');
		var allnos = 1;
		for ( var i = 0; i < 7; i++ ) {
		    if(elems[i].value == "yes") {
		    	alert("yes");
		    	allnos = 0;
		    }
		}
		
		if(allnos == 1) {
			alert("tab5");
			$('.tab5').trigger('click');		
			return;
		}
			
		$('.coda-nav-right').trigger('click');			
	}
	
	function btQ4Function() {
		var telephoneCheckbox = document.getElementById('q4telephonecheck');
		var telephoneText = document.getElementById('q4telephonetext').value; 
	    
		if(telephoneCheckbox.checked && !telephoneText.match(/\S/)) {
			 alert ('Empty value of telephone is not allowed');
		     return;
		}
		
		var emailCheckbox = document.getElementById('q4emailcheck');
		var emailText = document.getElementById('q4emailtext').value; 
	    
		if(emailCheckbox.checked && !emailText.match(/\S/)) {
			 alert ('Empty value of email is not allowed');
		     return;
		}
		
		var mailinCheckbox = document.getElementById('q4mailincheck');
	
		 
		if(mailinCheckbox.checked ) {
			$("#q6check").prop('disabled', 'disabled');
			$("#q6-2-1check").prop('disabled', 'disabled');
			$("#q6-2-2check").prop('disabled', 'disabled');

		}
		
		var noteText = document.getElementById('q4notetext').value; 
	    if(!noteText.match(/\S/)) {
			 alert ('Empty value of note is not allowed');
		     return;
		}

		$('.coda-nav-right').trigger('click');			
	}
	
	
	function btQ5Function() {
		var telephoneCheckbox = document.getElementById('q5telephonecheck');
		var telephoneText = document.getElementById('q5telephonetext').value; 
	    
	
		var emailCheckbox = document.getElementById('q5websitecheck');
		var emailText = document.getElementById('q5websitetext').value; 
	    
		if(!telephoneCheckbox.checked && !emailCheckbox.checked )  {
			 alert ('Please choose what types of customer service contact');
		     return;
		}
		
		if(telephoneCheckbox.checked && !telephoneText.match(/\S/)) {
			 alert ('Empty value of telephone is not allowed');
		     return;
		}
		
		
		if(emailCheckbox.checked && !emailText.match(/\S/)) {
			 alert ('Empty value of email is not allowed');
		     return;
		}
		
		var elems = document.getElementsByClassName('q3select');
		var allnos = 1;
		for ( var i = 0; i < 8; i++ ) {
		    if(elems[i].value == "yes") {
		    	alert("yes");
		    	allnos = 0;
		    }
		}
		
		var mailinCheckbox = document.getElementById('q4mailincheck');
		if(!mailinCheckbox.checked ) {
			$("#q6check").prop('disabled', 'disabled');
			$("#q6-2-1check").prop('disabled', 'disabled');
			$("#q6-2-2check").prop('disabled', 'disabled');

		}
		
		if(allnos == 1 || !mailinCheckbox.checked) {
			alert("tab7");
			//alert(allnos);
			//alert(mailinCheckbox.checked);
			$('.tab7').trigger('click');		
			return;
		}

		$('.coda-nav-right').trigger('click');			
	}
	
	function btQ6Function() {
		

		$('.coda-nav-right').trigger('click');			
	}
	
	
	function btQ7Function() {
		var q71checkbox = document.getElementById('q7-1check');
		var q72checkbox = document.getElementById('q7-2check');
		
		if(!q71checkbox.checked && !q72checkbox.checked) {
			 alert ('Must choose only one notice provider');
		     return;
		}
		
		if(q71checkbox.checked && q72checkbox.checked) {
			 alert ('Must choose only one notice provider');
		     return;
		}
		
		var q72Text = document.getElementById('q7-2text').value; 
	    
		if(q72checkbox.checked && !q72Text.match(/\S/)) {
			 alert ('Please enter insitutions other than you');
		     return;
		}
		
		$('.coda-nav-right').trigger('click');			
	}
	
	function btQ8Function() {
		var q81checkbox = document.getElementById('q8-1check');
		var q81Text = document.getElementById('q8-1text').value; 
	    
		if(q81checkbox.checked && !q81Text.match(/\S/)) {
			 alert ('Please enter additional information relating to safeguards practices(30 words maximum)');
		     return;
		}
		
		var q821checkbox = document.getElementById('q8-2check1');
		var q822checkbox = document.getElementById('q8-2check2');
		
		if(!q821checkbox.checked && !q822checkbox.checked) {
			 alert ('Must choose only one notice provider');
		     return;
		}
		
		if (q821checkbox.checked && q822checkbox.checked) {
			 alert ('Must choose only one notice provider');
		     return;
		}
		
		var q83checkbox = document.getElementById('q8-3check');
		var q83Text = document.getElementById('q8-3text').value; 
	    
		if(q83checkbox.checked && !q83Text.match(/\S/)) {
			 alert ('Please enter state privacy law provisions');
		     return;
		}
		$('.coda-nav-right').trigger('click');			
	}
	
	function btQ9Function() {
		var q911checkbox = document.getElementById('q9-1-1check');
		var q912checkbox = document.getElementById('q9-1-2check');
		var q913checkbox = document.getElementById('q9-1-3check');
		var q9131Text = document.getElementById('q9-1-3-1text').value; 
		var q9132Text = document.getElementById('q9-1-3-2text').value; 

		if(!q911checkbox.checked && !q912checkbox.checked && !q913checkbox.checked ) {
			 alert ('Please choose how to define affiliates');
		     return;
		}
		if(q913checkbox.checked && !q9131Text.match(/\S/) && !q9132Text.match(/\S/)) {
			 alert ('Please enter Affiliates of financial/nonFinancial companies');
		     return;
		}
		
			var count = 0;
		    var elems = document.getElementsByClassName('q92check1'), i;
		    for (i in elems) {
		        if(elems[i].checked) {
		            count = count + 1;
		        }
		    }
			if(count != 1) {
				alert("please select how to define nonaffiliatess");
				alert(count);
				return;
			}
			if(elems[1].checked) {
				count = 0;
				var subelems = document.getElementsByClassName('q92check2'), j;
				    for (j in subelems) {
				        if(subelems[j].checked) {
				            count = count + 1;
				        }
				    }
					if(count != 1) {
						alert("please select categories of nonaffiliated third parities");
						return;
					}
				if(subelems[4].checked) {
					var tmpText = document.getElementById('q9-2text').value; 
					if(!tmpText.match(/\S/) ) {
						alert("please enter other categories of companies");
						return;
					}
				}
			}
			
			
			count = 0;
			  var q3elems = document.getElementsByClassName('q93check'),k;
			    for (k in q3elems) {
			        if(q3elems[k].checked) {
			            count = count + 1;
			        }
			    }
				if(count != 1) {
					alert("please elect how to define joint marketing");
					return;
				}
				if(q3elems[1].checked) {
					tmpText = document.getElementById('q9-3text').value; 
					if(!tmpText.match(/\S/) ) {
						alert("please enter list categories of your joint marketing partners");
						return;
					}
				}


		$('.coda-nav-right').trigger('click');			
	}
	
	function yesnoCheck() {
	    if (document.getElementById('yesCheck').checked) {
	        document.getElementById('ifYes').style.display = 'block';
	    }
	    else document.getElementById('ifYes').style.display = 'none';

	}
	
	function q1_1() {
		document.getElementsByName("q1_1").value = "${quesiton.q1_1}";
		alert("aaaa");
	}
	
	function q1_2() {
		var list = ${quesiton.q1_2};
		var list2 = document.getElementsByName("q1_2");
		for (var i = 0; i < list2.length; i++) {
			for (var j = 0; j < list.length; j++) {
				if (list[i] == list2[j].value) {
					list2[i].checked = true;
				}
			}
		}
	}
	
</script>


</head>

<body>
<form action="GenerateHTML" method="POST">
	<h1>Question</h1>

	<!-- Question 1 -->
	<div data-include="question1.html"></div>
	<div class="coda-slider" id="slider-id" style = "width: 1000 px">
		<div>
			<h2 class="title">Question 1</h2>
			<p style="font-family: arial; color: red; font-size: 10px;">Please
				enter information about your business as accurately as possible.
				Once you are finished, just press submit and the privacy policy will
				be generated for you to review. You will also have the option to
				download a html file containing the policy.</p>
			<p>1.1 What is your company name?</p>
			<input type="text" id="q1-1" name="q1_1"><br> <br>
			<p>1.2 What typess of personal information do you want to collect
				and share depend on the product or service clients have with
				you(include at least five):</p>
			

				<input class="q1checkbox" type="checkbox" name="q1_2"
					value="Social Security Number">Social Security Number<br> <input
					class="q1checkbox" type="checkbox" name="q1_2" value="Income">Income<br>
				<input class="q1checkbox" type="checkbox" name="q1_2"
					value="Account balances">Account balances<br> <input
					class="q1checkbox" type="checkbox" name="q1_2" value="Transaction
				history">Transaction
				history<br> <input class="q1checkbox" type="checkbox"
					name="q1_2" value="Credit history">Credit history<br> <input
					class="q1checkbox" type="checkbox" name="q1_2" value="Payment
				history">Payment
				history<br> <input class="q1checkbox" type="checkbox"
					name="q1_2" value="Credit scores">Credit scores<br> <input
					class="q1checkbox" type="checkbox" name="q1_2" value="Investment
				experience">Investment
				experience<br> <input class="q1checkbox" type="checkbox"
					name="q1_2" value="Medical information">Medical information<br>
		
			<br>
			<button type="button" class="btn btn-primary"
				onclick="btQ1Function()">Next</button>

			<br> <br>

		</div>

		<!-- Question 2 -->
		<div class="q2">
			<h2 class="title">Question 2</h2>
			<p style="font-family: arial; color: red; font-size: 10px;">Please
				enter information about your business as accurately as possible.
				Once you are finished, just press submit and the privacy policy will
				be generated for you to review. You will also have the option to
				download a html file containing the policy.</p>
			<p>2.1 Do you share your customers' personal information for your
				everyday business purposes?</p>

			
				Do you share? <select class="q2select" id="q2-1" name = "q2_1">
					<option value="-">--</option>
					<option value="yes">Yes</option>
					<option value="no">No</option>
				</select>
		
			<br>
			<p>2.2 Do you share your customers' personal information for your
				marketing purposes?</p>

			
				Do you share? <select class="q2select" id="q2-2" name = "q2_2">
					<option value="-">--</option>
					<option value="yes">Yes</option>
					<option value="no">No</option>
				</select>
		
			<br>

			<p>2.3 Do you share your customers' personal information for
				joint marketing with other financial companies</p>

			
				Do you share? <select class="q2select" id="q2-3" name = "q2_3">
					<option value="-">--</option>
					<option value="yes">Yes</option>
					<option value="no">No</option>
				</select>
			
			<br>

			<p>2.4 Do you share your customers' personal information for your
				affiliates’ everyday business purposes — Information about your
				transactions and experiences</p>

		
				Do you share? <select class="q2select" id="q2-4" name = "q2_4">
					<option value="-">--</option>
					<option value="yes">Yes</option>
					<option value="no">No</option>
				</select>
		
			<br>

			<p>2.5 Do you share your customers' personal information for your
				affiliates’ everyday business purposes — Information about your
				creditworthiness</p>

			
				Do you share? <select class="q2select" id="q2-5" name = "q2_5">
					<option value="-">--</option>
					<option value="yes">Yes</option>
					<option value="no">No</option>
				</select>
		
			<br>

			<p>2.6 Do you share your customers' personal information for
				nonaffiliates to market to them?</p>

		
				Do you share? <select class="q2select" id="q2-6" name = "q2_6">
					<option value="-">--</option>
					<option value="yes">Yes</option>
					<option value="no">No</option>
				</select>
	
			<br>

			<p>2.7 For nonaffiliates to market to you — for accounts and
				services endorsed by another organization (e.g., debit card
				co-branded with a baseball team) “Sponsored Accounts”?</p>

				Do you share? <select class="q2select" id="q2-7" name = "q2_7">
					<option value="-">--</option>
					<option value="yes">Yes</option>
					<option value="no">No</option>
				</select>
	
			<br>

			<button type="button" class="btn btn-primary"
				onclick="btQ2Function()">Next</button>

			<br> <br>

		</div>

		<!-- Question 3 -->
		<div class="q3">
			<h2 class="title">Question 3</h2>
			<p style="font-family: arial; color: red; font-size: 10px;">Please
				enter information about your business as accurately as possible.
				Once you are finished, just press submit and the privacy policy will
				be generated for you to review. You will also have the option to
				download a html file containing the policy.</p>
			<p>3.1 For our everyday business purposes — such as to process
				your transactions, maintain your account(s), respond to court orders
				and legal investigations, or report to credit bureaus ?</p>

		
				Can customers limit this sharing? <select class="q3select" id="q3-1" name = "q3_1">
					<option value="-">--</option>
					<option value="yes">Yes</option>
					<option value="no">No</option>
				</select>
					<br>
			<p>3.2 For our marketing purposes — with service providers we use
				to offer our products and services to you (please see below to limit
				the ways we contact you)</p>

		
				Can customers limit this sharing? <select class="q3select" id="q3-2"name = "q3_2">
					<option value="-">--</option>
					<option value="yes">Yes</option>
					<option value="no">No</option>
				</select>
	
			<br>

			<p>3.3 Do you share your customers' personal information for
				joint marketing with other financial companies</p>

	
				Can customers limit this sharing? <select class="q3select" id="q3-3"name = "q3_3">
					<option value="-">--</option>
					<option value="yes">Yes</option>
					<option value="no">No</option>
				</select>

			<br>

			<p>3.4 For joint marketing with other financial companies</p>

		
				Can customers limit this sharing? <select class="q3select" id="q3-4"name = "q3_4">
					<option value="-">--</option>
					<option value="yes">Yes</option>
					<option value="no">No</option>
				</select>

			<br>

			<p>3.5 For our affiliates’ everyday business purposes —
				Information about your transactions and experiences</p>

	
				Can customers limit this sharing? <select class="q3select" id="q3-5"name = "q3_5">
					<option value="-">--</option>
					<option value="yes">Yes</option>
					<option value="no">No</option>
				</select>

			<br>


			<p>3.6 For nonaffiliates to market to you — for all credit card
				accounts?</p>


				Do you share? <select class="q3select" id="q3-6" name = "q3_6">
					<option value="-">--</option>
					<option value="yes">Yes</option>
					<option value="no">No</option>
				</select>

			<br>

			<p>3.7 For nonaffiliates to market to you — for accounts and
				services endorsed by another organization (e.g., debit card
				co-branded with a baseball team) “Sponsored Accounts”?</p>

				Do you share? <select class="q3select" id="q3-7" name = "q3_7">
					<option value="-">--</option>
					<option value="yes">Yes</option>
					<option value="no">No</option>
				</select>
		
			<br>


			<button type="button" class="btn btn-primary"
				onclick="btQ3Function()">Next</button>

			<br> <br>

		</div>


		<!-- Question 4 -->

		<div>
			<h2 class="title">Question 4</h2>


			<p style="font-family: arial; color: red; font-size: 10px;">Please
				enter information about your business as accurately as possible.
				Once you are finished, just press submit and the privacy policy will
				be generated for you to review. You will also have the option to
				download a html file containing the policy.</p>
			<p>4.1 What types of choices do you want to provide to your
				cusmtomers to limit their information sharing?</p>

		
				<input type="checkbox" name="q4telephonecheck" value="Telephone"
					id="q4telephonecheck" name = "q4_1_1"> Telephone
				<p style="font-family: arial; font-size: 10px;">Please enter the
					number you want to provide:</p>
				<input type="text" name="q4telephonetext" id="q4telephonetext" name  = "q4_1_1" value="---"><br>

				<br> <input type="checkbox" name="q4emailcheck" value=""
					id="q4emailcheck" name="q4emailtext" > Website
				<p style="font-family: arial; font-size: 10px;">Please enter the
					url of website you want to provide:</p>
				<input type="text"  name = "q4_1_2"  id="q4emailtext" value="---"><br>
				<br> <input type="checkbox" name="q4mailincheck" value=""
					id="q4mailincheck" name = "q4_1_3"> Mail-in form<br> <br>
				<p>4.2 About limiting the sharing, do you have any additional
					information for the cumsters to note?</p>
				<p style="font-family: arial; color: red; font-size: 10px;">(ex
					:Please note:If you are a new customer, we can begin sharing your
					information xx days from the date we sent this notice. When you are
					no longer our customer, we continue to share your information as
					described in this notice. However, you can contact us at any time
					to limit our sharing.) Greater than 30 words</p>

				<textarea rows="4" cols="50" name="q4notetext" id="q4notetext" name = "q4_2"></textarea>

		


			<button type="button" class="btn btn-primary"
				onclick="btQ4Function()">Next</button>

			<br> <br>

		</div>


		<!-- Question 5 -->
		<div>
			<h2 class="title">Question 5</h2>
			<p style="font-family: arial; color: red; font-size: 10px;">Please
				enter information about your business as accurately as possible.
				Once you are finished, just press submit and the privacy policy will
				be generated for you to review. You will also have the option to
				download a html file containing the policy.</p>
			<p>5.1 What types of customer service contact do you want to
				provide to your customers?</p>
			
				<input type="checkbox" name="q5telephonecheck" id="q5telephonecheck" value="" >
				Telephone
				<p style="font-family: arial; font-size: 10px;">Please enter the
					number you want to provide:</p>
				<input type="text" name="q5telephonetext" id="q5telephonetext" name = "q5_1" value="---" ><br>
				<input type="checkbox" name="q5websitecheck" id="q5websitecheck"
					value=""> Website
				<p style="font-family: arial; font-size: 10px;">Please enter the
					nrl of website you want to provide:</p>
				<input type="text" name="q5websitetext" id="q5websitetext" name = "q5_2" value="---"><br>

		
			<br> <br>
			<button type="button" class="btn btn-primary"
				onclick="btQ5Function()">Next</button>

			<br> <br>

		</div>

		<!-- Question 6 -->
		<div>
			<h2 class="title">Question 6</h2>
			<p style="font-family: arial; color: red; font-size: 10px;">Please
				enter information about your business as accurately as possible.
				Once you are finished, just press submit and the privacy policy will
				be generated for you to review. You will also have the option to
				download a html file containing the policy.</p>
			<p>6.1 For the mail-in opt-out form for customers to limit their
				sharing, do you want your customers to provide their account number?</p>
			<select id="q6check" name = "q6_1">
				<option value="-">--</option>
				<option value="yes">Yes</option>
				<option value="no">No</option>
			</select> <br> <br>
			<br>
			<p>6.2 Please provide your opt-out mail-in address:</p>
			Address Line1: <input type="text" id="q5websitetext" name = "q6_2_1"><br>
			<br>
			Address Line2: <input type="text" id="q5websitetext" name = "q6_2_2"><br>
			<br>
			City: <input type="text" id="q5websitetext" name = "q6_2_3">
			State: <input type="text" id="q5websitetext" name = "q6_2_4">
			Zip: <input type="text" id="q5websitetext" name = "q6_2_5"><br>
			<br>
			<p>6.3 Do you want to include barcode and/or tagline at the
				bottom of the form?</p>
			<input type="checkbox" name="q6_3" value="Barcode" id="q6-2-1check">
			Barcode <br> <input type="checkbox" name="q6_3" value ="Tagline" id="q6-2-2check"
				> Tagline <br>
				<br>
			<button type="button" class="btn btn-primary"
				onclick="btQ6Function()">Next</button>

			<br> <br>
		</div>
		<!-- Question 7 -->
		<div>
			<h2 class="title">Question 7</h2>
			<p style="font-family: arial; color: red; font-size: 13px;">Please
				enter information about your business as accurately as possible.
				Once you are finished, just press submit and the privacy policy will
				be generated for you to review. You will also have the option to
				download a html file containing the policy.</p>
			<p>7.1 Who is providing this notice?</p>
			<input type="checkbox" name="q7-1check" id="q7-1check"> Only
			one institution<br> <input type="checkbox" name="q7-2check"
				id="q7-2check"> Two or more institutions<br> <br>
			Please enter insitutions other than you:<br>

			<textarea rows="4" cols="40" name="q7_1" id="q7-2text"></textarea>
			<br>



			<button type="button" class="btn btn-primary"
				onclick="btQ7Function()">Next</button>

			<br> <br>

		</div>

		<!-- Question 8 -->
		<div>
			<h2 class="title">Question 8</h2>
			<p style="font-family: arial; color: red; font-size: 13px;">Please
				enter information about your business as accurately as possible.
				Once you are finished, just press submit and the privacy policy will
				be generated for you to review. You will also have the option to
				download a html file containing the policy.</p>
			<p>8.1 Do you have additional information pertaining to security methods?</p>
			(E.g. Use of cookies)<br>
			<input type="radio" onclick="javascript:yesnoCheck();" name="q8-1yes" id="yesCheck">Yes<br>
			<input type="radio" onclick="javascript:yesnoCheck();" name="q8-1check" id="noCheck">No<br>
			
			<div id="ifYes" style="display:none">
			<br>
			Please type in the additonal information below:<br>
			<textarea rows="4" cols="50" name="q8_1" id="q8-1text"></textarea>
			</div>

			<p>8.2 How do you collect customer's personal information?</p>
			Please select five (5) or more terms:
			<br>
				<table>
					<tr>
						<td><input type="checkbox" name="q8_2" value="open an account">open an account</td>
						<td><input type="checkbox" name="q8_2" value="deposit money">deposit money</td>
						<td><input type="checkbox" name="q8_2" value="pay your bills">pay customer's bills</td>
						
					</tr>
					
					<tr>
					<td><input type="checkbox" name="q8_2" value="apply for a loan">apply for a loan</td>
						<td><input type="checkbox" name="q8_2" value="use your credit or debit card">
									use customer's credit or debit card</td>
						<td><input type="checkbox" name="q8_2" value="seek financial or tax advice">
									seek financial or tax advice</td>
						
					</tr>
					
					<tr>
					<td><input type="checkbox" name="q8_2" value="apply for insurance">
									apply for insurance</td>
						<td><input type="checkbox" name="q8_2" value="pay insurance premiums">
									pay insurance premiums</td>
						<td><input type="checkbox" name="q8_2" value="file an insurance claim">
									file an insurance claim</td>
						
					</tr>
					
					<tr>
					<td valign="top"><input type="checkbox" name="q8_2" value="seek advice about your investments">
									seek advice about customer's investments</td>
						<td valign="top"><input type="checkbox" name="q8_2" value="buy securities from us">
									buy securities from you</td>
						<td valign="top"><input type="checkbox" name="q8_2" value="sell securities to us">
									sell securities to you</td>
						
					</tr>
					
					<tr>
					<td valign="top"><input type="checkbox" name="q8_2" value="direct us to buy securities">
									direct you to buy securities</td>
						<td valign="top"><input type="checkbox" name="q8_2" value="direct us to sell your securities">
									direct you to sell your securities</td>
						<td valign="top"><input type="checkbox" name="q8_2" value="make deposits or withdrawls from your account">
									make deposits or withdrawls from customer's account</td>
						
					</tr>
					
					<tr>
					<td valign="top"><input type="checkbox" name="q8_2" value="enter into an investment advisory contract">
									enter into an investment advisory contract</td>
						<td valign="top"><input type="checkbox" name="q8_2" value="give us your income information">
									give you customer's income information</td>
						<td valign="top"><input type="checkbox" name="q8_2" value="provide employment information">
									provide employment information</td>
						
					</tr>
					
					<tr>
					<td valign="top"><input type="checkbox" name="q8_2" value="give us your employment history">
									give you customer's employment history</td>
						<td valign="top"><input type="checkbox" name="q8_2" value="tell us about your investment or retirement protfolio">
									tell you about customer's investment or retirement protfolio</td>
						<td valign="top"><input type="checkbox" name="q8_2" value="tell us about your investment or retirement earnings">
									tell you about customer's investment or retirement earnings</td>
						
					</tr>
					
					<tr>
					<td valign="top"><input type="checkbox" name="q8_2" value="apply for financing">
									apply for financing</td>
						<td valign="top"><input type="checkbox" name="q8_2" value="apply for a lease">apply for a lease</td>
						<td valign="top"><input type="checkbox" name="q8_2" value="provide account information">
									provide account information</td>
						
					</tr>
					
					<tr>
					<td valign="top"><input type="checkbox" name="q8_2" value="give us your contact information">
									give you customer's contact information</td>
						<td valign="top"><input type="checkbox" name="q8_2" value="pay us by check">
									pay you by check</td>
						<td valign="top"><input type="checkbox" name="q8_2" value="give us your wage statements">
									give you customer's wage statements</td>
						
				
					</tr>
					
					<tr>
					<td valign="top"><input type="checkbox" name="q8_2" value="provide your mortage information">
									provide customer's mortage information</td>
						<td valign="top"><input type="checkbox" name="q8_2" value="make a wire transfer">
									make a wire transfer</td>
						<td valign="top"><input type="checkbox" name="q8_2" value="tell us who receives the money">
									tell you who receives the money</td>
						
					</tr>
					
					<tr>
					<td valign="top"><input type="checkbox" name="q8_2" value="tell us where to send the money">
									tell you where to send the money</td>
						<td valign="top"><input type="checkbox" name="q8_2" value="show your government-issued ID">
									show customer's government-issued ID</td>
						<td valign="top"><input type="checkbox" name="q8_2" value="show your driver's license">
									show customer's driver's license</td>
					
					</tr>
					<td valign="top"><input type="checkbox" name="q8_2" value="order a commodity futures or option trade">
									order a commodity futures or option trade</td>
					<tr>
					
					</tr>
					
				</table>			
									
			<p>8.3 Do you also collect personal information from your affiliates or credit bureaus?</p>
			<input type="radio" name="q8_3" id="q8-3check" value = "Yes">
			Yes<br>
			<input type="radio" name="q8_3" id="q8-3check" value = "No">
			No<br>
									

			<p>8.4 Do you want to describe state privacy law to explain why customer can't limiting all sharing?</p>
			<input type="checkbox" name="q8-3check" id="q8-3check">
			Yes<br>
			<textarea rows="4" cols="50" name="q8_4" id="q8-3text"></textarea>
			<br>

			<button type="button" class="btn btn-primary"
				onclick="btQ8Function()">Next</button>

			<br> <br>

		</div>

		<!-- Question 9 -->
		<div>
			<h2 class="title">Question 9</h2>
			<p style="font-family: arial; color: red; font-size: 13px;">Please
				enter information about your business as accurately as possible.
				Once you are finished, just press submit and the privacy policy will
				be generated for you to review. You will also have the option to
				download a html file containing the policy.</p>
			<p>9.1 Do you have affiliates?</p>

			&nbsp;&nbsp;&nbsp;&nbsp;<input type="radio" name="q9-1-1check" id="q9-1-1check">Yes<br>
			&nbsp;&nbsp;&nbsp;&nbsp;<input type="radio" name="q9-1-1check" id="q9-1-1check">No<br>
			<br>
			&nbsp;&nbsp;&nbsp;&nbsp;Do you share personal information with your affiliates?<br>
			&nbsp;&nbsp;&nbsp;&nbsp;<input type="radio" name="q9-1-2check" id="q9-1-1check">Yes<br>
			&nbsp;&nbsp;&nbsp;&nbsp;<input type="radio" name="q9-1-2check" id="q9-1-1check">No<br>
			<br>
			&nbsp;&nbsp;&nbsp;&nbsp;Does your affiliates include financial companies?<br>
			&nbsp;&nbsp;&nbsp;&nbsp;<input type="radio" name="q9-3check" id="q8-3check">Yes<br>
			&nbsp;&nbsp;&nbsp;&nbsp;<input type="radio" name="q9-3check" id="q8-3check">No<br>
			<br>
			&nbsp;&nbsp;&nbsp;&nbsp;Please type in the names of financial companies:<br>
			&nbsp;&nbsp;&nbsp;&nbsp;<textarea rows="4" cols="50" name="q9_1_1" id="q9-1-1-1text"></textarea><br> 
			<br>
			&nbsp;&nbsp;&nbsp;&nbsp;Does your affiliates include nonfinancial companies?<br>
			&nbsp;&nbsp;&nbsp;&nbsp;<input type="radio" name="q9-4check" id="q8-3check">Yes<br>
			&nbsp;&nbsp;&nbsp;&nbsp;<input type="radio" name="q9-4check" id="q8-3check">No<br>
			<br>
			&nbsp;&nbsp;&nbsp;&nbsp;Please type in the names of nonfinancial companies:<br>
			&nbsp;&nbsp;&nbsp;&nbsp;<textarea rows="4" cols="50" name="q9_1_2" id="q9-1-1-2text"></textarea><br>


			<p>9.2 Do you share information with any nonaffiliatess third parties?</p>

			&nbsp;&nbsp;&nbsp;&nbsp;<input type="radio" class="q92check1">Yes<br>
			&nbsp;&nbsp;&nbsp;&nbsp;<input type="radio" class="q92check1">No<br> 
			<br>
			&nbsp;&nbsp;&nbsp;&nbsp;Plase select categories of nonaffiliated thirdparities<br> 
			&nbsp;&nbsp;&nbsp;&nbsp;<input type="checkbox" class="q92check2" name="q9_2"> mortgage companies<br>
			&nbsp;&nbsp;&nbsp;&nbsp;<input type="checkbox" class="q92check2" name="q9_2"> insurance companies<br> 
			&nbsp;&nbsp;&nbsp;&nbsp;<input type="checkbox" class="q92check2" name="q9_2"> direct marketing companies<br> 
			&nbsp;&nbsp;&nbsp;&nbsp;<input type="checkbox" class="q92check2" name="q9_2"> nonprofit organizations<br>
			&nbsp;&nbsp;&nbsp;&nbsp;<input type="checkbox" class="q92check2" name="q9_2"> other categories of companies<br>
			<br> 
			&nbsp;&nbsp;&nbsp;&nbsp;Please specify the other categories:<br>
			&nbsp;&nbsp;&nbsp;&nbsp;<textarea rows="4" cols="50" id="q9-2text" name="q9_2"></textarea><br>

			<p>9.3 Do you engage in joint marketing?</p>

			&nbsp;&nbsp;&nbsp;&nbsp;<input type="radio" class="q93check" name = "q9-3">Yes<br> 
			&nbsp;&nbsp;&nbsp;&nbsp;<input type="radio" class="q93check" name = "q9-3">No<br> 
			<br>
			&nbsp;&nbsp;&nbsp;&nbsp;List categories of your joint marketing partners:<br>
			&nbsp;&nbsp;&nbsp;&nbsp;<textarea rows="4" cols="50" id="q9-3text" name = "q9_3"></textarea><br>

			<button type="button" class="btn btn-primary"
				onclick="btQ9Function()">Next</button>

			<br> <br>

		</div>

		<!-- Question 10 -->
		<div>
			<h2 class="title">Question 10</h2>
			<p style="font-family: arial; color: red; font-size: 13px;">Please
				enter information about your business as accurately as possible.
				Once you are finished, just press submit and the privacy policy will
				be generated for you to review. You will also have the option to
				download a html file containing the policy.</p>
				
				<p>10.1 So you want to provide information on International privacy law?</p>
				<input type="radio" class="q10check1">Yes<br>
				<input type="radio" class="q10check1">No<br> 
				
				<textarea rows="4" cols="50" name = "q10_1" id = "q10-1"></textarea>

				<p>10.2 Do you want to provide acknowledgement of receipt form?</p>
				<input type="radio" class="q10check2">Yes<br>
				<input type="radio" class="q10check2">No<br> 

			<textarea rows="4" cols="50" name = "q10_2" id = "q10-2"></textarea>
			<br>


			<div class="coda-nav-right" data-dir="next" title="Slide right">
				<br> 
			</div>
			<br> <br>
		

		<input type="submit" value="Submit" />
		</div>
	</form>
</body>
<script type="text/javascript">


	$(document).ready(function() {
		$("filter").click(function() {
			$(this).fadeTo("fast", .5).removeAttr("href");
			console.log('foo');
			window.alert("debug");
		});
	});
</script>
</html>