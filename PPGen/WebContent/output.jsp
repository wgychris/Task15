<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Privacy Policy Generator</title>

    <!-- Bootstrap core CSS -->
    <link href="css/bootstrap.css" rel="stylesheet">

    <!-- Add custom CSS here -->
    <link href="css/business-casual.css" rel="stylesheet">
</head>

<body>

    <div class="brand">Privacy Policy Builder</div>
    

    <div class="container">

        <div class="row">
            <div class="box">
                <div class="col-lg-12">
                    <hr>
                    <h2 class="intro-text text-center">Download your agreements
                    </h2>
                    <hr>
                </div>
               
                <div class="col-md-12">
                   <!-- Tabs
================================================== -->
<div class="bs-docs-section">


 
  <div class="bs-example bs-example-tabs">
    <ul id="myTab" class="nav nav-tabs">
      <li class="active"><a href="#home" data-toggle="tab">As HTML</a></li>
      <li><a href="#profile" data-toggle="tab">As Text</a></li>
      <li class="dropdown">
        <a href="#" id="myTabDrop1" class="dropdown-toggle" data-toggle="dropdown">Dropdown <b class="caret"></b></a>
        <ul class="dropdown-menu" role="menu" aria-labelledby="myTabDrop1">
          <li><a href="#dropdown1" tabindex="-1" data-toggle="tab">@fat</a></li>
          <li><a href="#dropdown2" tabindex="-1" data-toggle="tab">@mdo</a></li>
        </ul>
      </li>
    </ul>
    <div id="myTabContent" class="tab-content">
      <div class="tab-pane fade in active" id="home">
       <textarea class="form-control" rows="10">
 
<p>[Date]</p>
<table border="0" cellpadding="0" cellspacing="0" style="border-bottom: #000 2px solid; border-left: #000 2px solid; border-top: #000 2px solid; border-right: #000 2px solid" width="85%"><tbody><tr><td style="background-color: #000; border-right: #000 2px solid" width="150">
			<div style="line-height: normal; margin: 0px; color: #fff; font-size: 30pt; font-weight: bold">FACTS</div>
			</td>
			<td style="padding-bottom: 5px; padding-left: 5px; padding-right: 5px; padding-top: 5px">
			<div style="line-height: normal; margin: 0px; font-size: 15pt">WHAT DOES <b>${form.q1_1}</b> DO WITH YOUR PERSONAL INFORMATION?</div>
			</td>
		</tr></tbody></table><table border="0" cellpadding="0" cellspacing="0" style="border-bottom: #000 2px solid; border-left: #000 2px solid; border-top: #000 2px solid; border-right: #000 2px solid" width="85%"><tbody><tr><td style="background-color: #ccc" width="150">
			<div style="line-height: normal; margin: 0px; font-size: 20pt">Why?</div>
			</td>
			<td style="padding-bottom: 5px; padding-left: 5px; padding-right: 5px; padding-top: 5px">Financial companies choose how they share your personal information. Federal law gives consumers the right to limit some but not all sharing. Federal law also requires us to tell you how we collect, share, and protect your personal information. Please read this notice carefully to understand what we do.</td>
		</tr></tbody></table><table border="0" cellpadding="0" cellspacing="0" style="border-bottom: #000 2px solid; border-left: #000 2px solid; border-top: #000 2px solid; border-right: #000 2px solid" width="85%"><tbody><tr><td style="background-color: #ccc" width="150">
			<div style="line-height: normal; margin: 0px; font-size: 20pt">What?</div>
			</td>
			<td style="padding-bottom: 5px; padding-left: 5px; padding-right: 5px; padding-top: 5px">The types of personal information we collect and share depend on the product or service you have with us. This information can include:<br />
			
			<c:forEach var="checkbox" items="${form.q1_2}">
			* ${checkbox} <br />
			</c:forEach>>
		</tr></tbody></table>

		<table border="0" cellpadding="0" cellspacing="0" style="border-bottom: #000 2px solid; border-left: #000 2px solid; border-top: #000 2px solid; border-right: #000 2px solid" width="85%"><tbody><tr><td style="background-color: #ccc" width="150">
			<div style="line-height: normal; margin: 0px; font-size: 20pt">How?</div>
			</td>
			<td style="padding-bottom: 5px; padding-left: 5px; padding-right: 5px; padding-top: 5px">All financial companies need to share customerspersonal information to run their everyday business. In the section below, we list the reasons financial companies can share their customerspersonal information; the reasons [Q1.1/name] chooses to share; and whether you can limit this sharing.</td>
		</tr></tbody></table><table border="0" cellpadding="0" cellspacing="0" style="border-bottom: #000 2px solid; border-left: #000 2px solid; border-collapse: collapse; border-top: #000 2px solid; border-right: #000 2px solid" width="85%"><tbody><tr align="center"><td align="left" style="background-color: #ccc"><b>Reasons we can share your personal information</b></td>
			<td style="background-color: #ccc"><b>Does ${form.q1_1} share?</b></td>
			<td style="background-color: #ccc"><b>Can you limit this sharing?</b></td>
		</tr><tr align="center"><td align="left" style="border-bottom: #000 2px solid; border-left: #000 2px solid; border-top: #000 2px solid; border-right: #000 2px solid"><b>For our everyday business purposes</b><br />
			such as to process your transactions, maintain your account(s), respond to court orders and legal investigations, or report to credit bureaus</td>
			<td style="border-bottom: #000 2px solid; border-left: #000 2px solid; border-top: #000 2px solid; border-right: #000 2px solid">${form.q2_1}</td>
			<td style="border-bottom: #000 2px solid; border-left: #000 2px solid; border-top: #000 2px solid; border-right: #000 2px solid">${form.q3_1}</td>
		</tr><tr align="center"><td align="left" style="border-bottom: #000 2px solid; border-left: #000 2px solid; border-top: #000 2px solid; border-right: #000 2px solid"><b>For our marketing purposes</b><br />
			to offer our products and services to you</td>
			<td style="border-bottom: #000 2px solid; border-left: #000 2px solid; border-top: #000 2px solid; border-right: #000 2px solid">${form.q2_2}</td>
			<td style="border-bottom: #000 2px solid; border-left: #000 2px solid; border-top: #000 2px solid; border-right: #000 2px solid">${form.q3_2}</td>
		</tr><tr align="center"><td align="left" style="border-bottom: #000 2px solid; border-left: #000 2px solid; border-top: #000 2px solid; border-right: #000 2px solid"><b>For joint marketing with other financial companies</b></td>
			<td style="border-bottom: #000 2px solid; border-left: #000 2px solid; border-top: #000 2px solid; border-right: #000 2px solid">${form.q2_3}</td>
			<td style="border-bottom: #000 2px solid; border-left: #000 2px solid; border-top: #000 2px solid; border-right: #000 2px solid">${form.q3_3}</td>
		</tr><tr align="center"><td align="left" style="border-bottom: #000 2px solid; border-left: #000 2px solid; border-top: #000 2px solid; border-right: #000 2px solid"><b>For our affiliateseveryday business purposes</b><br />
			information about your transactions and experiences</td>
			<td style="border-bottom: #000 2px solid; border-left: #000 2px solid; border-top: #000 2px solid; border-right: #000 2px solid">${form.q2_4}</td>
			<td style="border-bottom: #000 2px solid; border-left: #000 2px solid; border-top: #000 2px solid; border-right: #000 2px solid">${form.q3_4}</td>
		</tr><tr align="center"><td align="left" style="border-bottom: #000 2px solid; border-left: #000 2px solid; border-top: #000 2px solid; border-right: #000 2px solid"><b>For our affiliateseveryday business purposes</b><br />
			information about your creditworthiness</td>
			<td style="border-bottom: #000 2px solid; border-left: #000 2px solid; border-top: #000 2px solid; border-right: #000 2px solid">${form.q2_5}</td>
			<td style="border-bottom: #000 2px solid; border-left: #000 2px solid; border-top: #000 2px solid; border-right: #000 2px solid">${form.q3_5}</td>
		</tr><tr align="center"><td align="left" style="border-bottom: #000 2px solid; border-left: #000 2px solid; border-top: #000 2px solid; border-right: #000 2px solid"><b>For our affiliates to market to you</b></td>
			<td style="border-bottom: #000 2px solid; border-left: #000 2px solid; border-top: #000 2px solid; border-right: #000 2px solid">${form.q2_6}</td>
			<td style="border-bottom: #000 2px solid; border-left: #000 2px solid; border-top: #000 2px solid; border-right: #000 2px solid">${form.q3_6}</td>
		</tr><tr align="center"><td align="left" style="border-bottom: #000 2px solid; border-left: #000 2px solid; border-top: #000 2px solid; border-right: #000 2px solid"><b>For nonaffiliates to market to you</b></td>
			<td style="border-bottom: #000 2px solid; border-left: #000 2px solid; border-top: #000 2px solid; border-right: #000 2px solid">${form.q2_7}</td>
			<td style="border-bottom: #000 2px solid; border-left: #000 2px solid; border-top: #000 2px solid; border-right: #000 2px solid">${form.q3_7}</td>
		</tr></tbody></table><table border="0" cellpadding="0" cellspacing="0" style="border-bottom: #000 2px solid; border-left: #000 2px solid; border-top: #000 2px solid; border-right: #000 2px solid" width="85%"><tbody><tr><td style="background-color: #ccc" width="150">
			<div style="line-height: normal; margin: 0px; font-size: 20pt">To limit our sharing</div>
			</td>
			<td style="padding-bottom: 5px; padding-left: 5px; padding-right: 5px; padding-top: 5px">* Call ${q4_1_1} - our menu will prompt you through your choice(s), <b>OR</b><br />
			* Visit us online: <b>${q4_1_2}</b><br /><b>Please note:</b><br />
			${q4_2}</td>
		</tr></tbody></table><table border="0" cellpadding="0" cellspacing="0" style="border-bottom: #000 2px solid; border-left: #000 2px solid; border-top: #000 2px solid; border-right: #000 2px solid" width="85%"><tbody><tr><td style="background-color: #ccc" width="150">
			<div style="line-height: normal; margin: 0px; font-size: 20pt">Questions?</div>
			</td>
			<td style="padding-bottom: 5px; padding-left: 5px; padding-right: 5px; padding-top: 5px">Call us at ${q5_1} or visit us online at ${q5_2}</td>
		</tr></tbody></table>
		<br>
		<!-- opt-out form -->
		<table border="1" cellpadding="0" cellspacing="0" style="border-bottom: #000 2px solid; border-left: #000 2px solid; border-top: #000 2px solid; border-right: #000 2px solid" width="85%"><tbody>
			<tr>
    <th bgcolor="#808080" class="tg-031e" colspan="4"><div style="line-height: normal; margin: 0px; font-size: 20pt">Mail- in Form</th>
  </tr>
  <tr>
    <td class="tg-031e" rowspan="7" width = "30%">Leave Blank OR<br>[if you have a joint account, your choice(s) will apply to everyone on your account unless you mark below .<br></td>
    <td class="tg-031e" colspan="3">Mark any/all you want to limit:<br></td>
  </tr>
  <tr>
    <td class="tg-031e">Name</td>
    <td class="tg-031e" colspan="2" width = "50%"></td>
  </tr>
  <tr>
    <td class="tg-031e">Address Line1</td>
    <td class="tg-031e" colspan="2"></td>
  </tr>
  <tr>
    <td class="tg-031e">Address Line 2</td>
    <td class="tg-031e" colspan="2"></td>
  </tr>
  <tr>
    <td class="tg-031e">City, State, Zip</td>
    <td class="tg-031e" colspan="2"></td>
  </tr>
  <tr>
    <td class="tg-031e"></td>
    <td class="tg-031e" colspan="2"></td>
  </tr>
  <tr>
    <td class="tg-031e">[Account#]</td>
    <td class="tg-031e" colspan="2"></td>
  </tr>
	</tbody>
</table>
	<p>Mail to : <p>
		<br>

		<table border="0" cellpadding="0" cellspacing="0" style="border-bottom: #000 2px solid; border-left: #000 2px solid; border-collapse: collapse; border-top: #000 2px solid; border-right: #000 2px solid" width="85%"><tbody><tr><td colspan="2" style="background-color: #ccc">
			<div style="line-height: normal; margin: 0px; font-size: 20pt">Who we are</div>
			</td>
		</tr><tr><td style="border-bottom: #000 2px solid; border-left: #000 2px solid; border-top: #000 2px solid; border-right: #000 2px solid" width="250"><b>Who is providing this notice?</b></td>
			<td style="border-bottom: #000 2px solid; border-left: #000 2px solid; border-top: #000 2px solid; border-right: #000 2px solid">Pinnacle Bank, Nebraska; Bank of Colorado, Pinnacle Bank, Texas; and Pinnacle Bank, Wyoming.</td>
		</tr></tbody></table><table border="0" cellpadding="0" cellspacing="0" style="border-bottom: #000 2px solid; border-left: #000 2px solid; border-collapse: collapse; border-top: #000 2px solid; border-right: #000 2px solid" width="85%"><tbody><tr><td colspan="2" style="background-color: #ccc">
			<div style="line-height: normal; margin: 0px; font-size: 20pt">What we do</div>
			</td>
		</tr><tr><td style="border-bottom: #000 2px solid; border-left: #000 2px solid; border-top: #000 2px solid; border-right: #000 2px solid" width="250"><b>How does Pinnacle protect my personal information?</b></td>
			<td style="border-bottom: #000 2px solid; border-left: #000 2px solid; border-top: #000 2px solid; border-right: #000 2px solid">To protect your personal information from unauthorized access and use, we use security measures that comply with federal law. These measures include computer safeguards and secured files and buildings.</td>
		</tr><tr><td style="border-bottom: #000 2px solid; border-left: #000 2px solid; border-top: #000 2px solid; border-right: #000 2px solid" width="250"><b>How does Pinnacle collect my personal information?</b></td>
			<td style="border-bottom: #000 2px solid; border-left: #000 2px solid; border-top: #000 2px solid; border-right: #000 2px solid">We collect your personal information, for example, when you:<br />
			*open an account or deposit money<br />
			*pay your bills or apply for a loan<br />
			*use yourcredit or debit card<br />
			We also collect your personal information from others, such as credit bureaus, affiliates, or other companies.</td>
		</tr><tr><td style="border-bottom: #000 2px solid; border-left: #000 2px solid; border-top: #000 2px solid; border-right: #000 2px solid" width="250"><b>Why can¡¯t I limit all sharing?</b></td>
			<td style="border-bottom: #000 2px solid; border-left: #000 2px solid; border-top: #000 2px solid; border-right: #000 2px solid">Federal law gives you the right to limit only:<br />
			*sharing your affiliates everyday business purposes information about your creditworthiness<br />
			*affiliates from using your information to market to you<br />
			*sharing for nonaffiliates to market to you<br />
			State laws and individual companies may give you additional rights to limit sharing.<br />
			See below for more on your rights under state law.</td>
		</tr><tr><td style="border-bottom: #000 2px solid; border-left: #000 2px solid; border-top: #000 2px solid; border-right: #000 2px solid" width="250"><b>What happens when I limit sharing for an account I hold jointly with someone else?</b></td>
			<td style="border-bottom: #000 2px solid; border-left: #000 2px solid; border-top: #000 2px solid; border-right: #000 2px solid">Your choices will apply to everyone on the account.</td>
		</tr></tbody></table><table border="0" cellpadding="0" cellspacing="0" style="border-bottom: #000 2px solid; border-left: #000 2px solid; border-collapse: collapse; border-top: #000 2px solid; border-right: #000 2px solid" width="85%"><tbody><tr><td colspan="2" style="background-color: #ccc">
			<div style="line-height: normal; margin: 0px; font-size: 20pt">Definitions</div>
			</td>
		</tr><tr><td style="border-bottom: #000 2px solid; border-left: #000 2px solid; border-top: #000 2px solid; border-right: #000 2px solid" width="250"><b>Affiliates</b></td>
			<td style="border-bottom: #000 2px solid; border-left: #000 2px solid; border-top: #000 2px solid; border-right: #000 2px solid">Companies related by common ownership or control. They can be financial and non-financial companies.<br />
			*<i>Our affiliates include financial companies such as Pinnacle Bank, Nebraska; Pinnacle Bank, Wyoming; Pinnacle Bank, Texas; Bank of Colorado; The Pinnacle Agency, LLC; The Pinnacle Agency of Columbus, LLC; Pinnacle Financial Services, LLC; and PFS Insurance Group, LLC.</i></td>
		</tr><tr><td style="border-bottom: #000 2px solid; border-left: #000 2px solid; border-top: #000 2px solid; border-right: #000 2px solid" width="250"><b>Nonaffiliates</b></td>
			<td style="border-bottom: #000 2px solid; border-left: #000 2px solid; border-top: #000 2px solid; border-right: #000 2px solid">Companies not related by common ownership or control. They can be financial and non-financial companies.<br />
			*<i>Pinnacle Bank/Bank of Colorado does not share with nonaffiliates so they can market to you.</i></td>
		</tr><tr><td style="border-bottom: #000 2px solid; border-left: #000 2px solid; border-top: #000 2px solid; border-right: #000 2px solid" width="250"><b>Joint Marketing</b></td>
			<td style="border-bottom: #000 2px solid; border-left: #000 2px solid; border-top: #000 2px solid; border-right: #000 2px solid">A formal agreement between nonaffiliated financial companies that together market financial products or services to you.<br />
			*<i>Pinnacle Bank/Bank of Colorado doesn't jointly market.</i></td>
		</tr></tbody></table><table border="0" cellpadding="0" cellspacing="0" style="border-bottom: #000 2px solid; border-left: #000 2px solid; border-collapse: collapse; border-top: #000 2px solid; border-right: #000 2px solid" width="85%"><tbody><tr><td colspan="2" style="background-color: #ccc">
			<div style="line-height: normal; margin: 0px; font-size: 20pt">Other Important Information</div>
			</td>
		</tr><tr><td style="border-bottom: #000 2px solid; border-left: #000 2px solid; border-top: #000 2px solid; border-right: #000 2px solid"><b>Texas Residents Only:</b><br />
			Pinnacle Bank is chartered under the laws of the State of Texas and by state law is subject to regulatory oversight by the Texas Department of Banking. Any consumer wishing to file a complaint against Pinnacle Bank should contact the State Department of Banking through one of the means indicated below:</td>
		</tr></tbody></table><table border="0" cellpadding="0" cellspacing="0" style="border-bottom: #000 2px solid; border-left: #fff 2px solid; border-collapse: collapse; border-top: #000 2px solid; border-right: #000 2px solid" width="85%"><tbody><tr><td style="border-bottom: #000 2px solid; border-left: #000 2px solid; border-top: #fff 2px solid; border-right: #000 2px solid"><b>IN PERSON OR BY U.S. MAIL:</b><br />
			Texas Department of Banking<br />
			2601 North Lamar Boulevard, Suite 300<br />
			Austin, Texas 78705-4294</td>
			<td style="border-bottom: #000 2px solid; border-left: #fff 2px solid; border-top: #fff 2px solid; border-right: #000 2px solid"><b>TOLL-FREE PHONE: </b>877.276.5554<br /><b>FAX: </b>512.475.1313<br /><b>EMAIL: </b>consumer.complaints@dob.texas.gov<br /><b>WEBSITE: </b>www.dob.texas.gov</td>
		</tr></tbody></table><p> </p>
		</textarea>
      </div>
      <div class="tab-pane fade" id="dropdown1">
        <p>Etsy mixtape wayfarers, ethical wes anderson tofu before they sold out mcsweeney's organic lomo retro fanny pack lo-fi farm-to-table readymade. Messenger bag gentrify pitchfork tattooed craft beer, iphone skateboard locavore carles etsy salvia banksy hoodie helvetica. DIY synth PBR banksy irony. Leggings gentrify squid 8-bit cred pitchfork. Williamsburg banh mi whatever gluten-free, carles pitchfork biodiesel fixie etsy retro mlkshk vice blog. Scenester cred you probably haven't heard of them, vinyl craft beer blog stumptown. Pitchfork sustainable tofu synth chambray yr.</p>
      </div>
      <div class="tab-pane fade" id="dropdown2">
        <p>Trust fund seitan letterpress, keytar raw denim keffiyeh etsy art party before they sold out master cleanse gluten-free squid scenester freegan cosby sweater. Fanny pack portland seitan DIY, art party locavore wolf cliche high life echo park Austin. Cred vinyl keffiyeh DIY salvia PBR, banh mi before they sold out farm-to-table VHS viral locavore cosby sweater. Lomo wolf viral, mustache readymade thundercats keffiyeh craft beer marfa ethical. Wolf salvia freegan, sartorial keffiyeh echo park vegan.</p>
      </div>
    </div>
  </div><!-- /example -->
                </div>
                <div class="clearfix"></div>
				<p>
				<p>
				<button type="button" class="btn btn-primary" >Download</button>
				<button type="button" class="btn btn-primary" onclick="javascript:window.location.href='index.html'">Back</button>
            </div>
			</div>

    
		</div>
    </div>
    <!-- /.container -->

    <footer>
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <p>Copyright &copy; Company 2013</p>
                </div>
            </div>
        </div>
    </footer>

    <!-- JavaScript -->
    <script src="js/jquery-1.10.2.js"></script>
    <script src="js/bootstrap.js"></script>

</body>

</html>
