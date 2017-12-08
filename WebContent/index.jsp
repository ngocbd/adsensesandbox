<%
String name = (String) request.getAttribute("name");
String success = (String) request.getAttribute("success");
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<link rel='stylesheet' type='text/css' href='/css/style.css' />
<title>Check Google Adsense Sandbox</title>
<meta name="description" content="Google Adsense Sandbox Preview Tool with Text, Image and Video Ads - Leaderboard, Skyscraper, Rectangle and Square formats."/>
<meta name="Keywords" content="Google Adsense Sandbox,google adsense,check adsense domain,check adsense status"/>
<script type="text/javascript">

  var _gaq = _gaq || [];
  _gaq.push(['_setAccount', 'UA-35866794-1']);
  _gaq.push(['_trackPageview']);

  (function() {
    var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
    ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
    var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
  })();

</script>
</head>
<body>
	<div class="header">
		<a href="/"><img alt="Logo" src="/images/logo.png" id="logo" class="left"/></a>
		<div class="search">
			<form action="/google-adsense-sandbox" method="post">
				<button role="button" tabindex="2" dir="ltr" id="search-btn" type="submit"><span>Search </span></button>
				<div>
					<label>
						<input type="text" name="name" value="Enter your domain" onclick="javascript:this.value=''"/>
					</label>
				</div>
				
			</form>
		</div>
		<div class="clear"></div>
	</div>
	<div class="line">
		Google Adsense Sandbox Preview Tool with Text, Image and Video Ads - Leaderboard, Skyscraper, Rectangle and Square formats
	</div>
	<div class="body">
		<!-- AddThis Button BEGIN -->
		<div class="addthis_toolbox addthis_default_style ">
		<a class="addthis_button_facebook_like" fb:like:layout="button_count"></a>
		<a class="addthis_button_tweet"></a>
		<a class="addthis_button_google_plusone" g:plusone:size="medium"></a>
		<a class="addthis_counter addthis_pill_style"></a>
		</div>
		<script type="text/javascript" src="http://s7.addthis.com/js/250/addthis_widget.js#pubid=ra-4d6f3cdb1d190d60"></script>
		<!-- AddThis Button END -->

		<br/><br/>
		<%
		if(name!=null)
		{
		%>
			<iframe class="adsense720 left" src="http://pagead2.googlesyndication.com/pagead/ads?adtest=on&client=ca-digitalinspiration&random=1336472245&url=<%=name%>&gl=default&color_border=336699&color_bg=FFFFFF&ad_type=image&format=728x90_as"></iframe>
			<iframe class="adsense600 right" src="http://pagead2.googlesyndication.com/pagead/ads?adtest=on&client=ca-digitalinspiration&random=1336472245&url=<%=name%>&gl=default&color_border=336699&color_bg=FFFFFF&ad_type=image&format=160x600_as"></iframe>
			<iframe class="adsense250 left" src="http://pagead2.googlesyndication.com/pagead/ads?adtest=on&client=ca-digitalinspiration&random=1336472245&url=<%=name%>&gl=default&color_border=336699&color_bg=FFFFFF&ad_type=image&format=250x250_as"></iframe>
			<div class="content left">
				<table>
					<tr>
						<td width="30%"><strong>Domain name:</strong></td>
						<td><%=name%></td>
					</tr>
					<tr>
						<td width="30%"><strong>Status:</strong></td>
						<td><img src="/images/<%=(success!=null)?"tick.png":"error.png" %>" width="20"/></td>
					</tr>
					<tr>
						<td width="30%"><strong>View demo adsense:</strong></td>
						<td>
							<iframe class="adsense250" src="http://pagead2.googlesyndication.com/pagead/ads?adtest=on&client=ca-digitalinspiration&random=1336472245&url=<%=name%>&gl=default&color_border=336699&color_bg=FFFFFF&ad_type=image&format=250x250_as"></iframe>
						</td>
					</tr>
				</table>
			</div>
			<iframe class="adsense336 left" src="http://pagead2.googlesyndication.com/pagead/ads?adtest=on&client=ca-digitalinspiration&random=1336472245&url=<%=name%>&gl=default&color_border=336699&color_bg=FFFFFF&ad_type=image&format=336x280_as"></iframe>
			<iframe class="adsense300 left" src="http://pagead2.googlesyndication.com/pagead/ads?adtest=on&client=ca-digitalinspiration&random=1336472245&url=<%=name%>&gl=default&color_border=336699&color_bg=FFFFFF&ad_type=image&format=300x250_as"></iframe>
			<iframe class="adsense468 left clear" src="http://pagead2.googlesyndication.com/pagead/ads?adtest=on&client=ca-digitalinspiration&random=1336472245&url=<%=name%>&gl=default&color_border=336699&color_bg=FFFFFF&ad_type=image&format=468x60_as"></iframe>
		<%
		}
		%>
		<div class="clear"></div>
		Disclaimer: The Adsense Sandbox tool is written and owned by Digital Inspiraton. It has no affiliation with Google Inc. or Google Adsense. The internal code uses random Adsense Publisher IDs - therefore the Adwords advertisers will be not be charged for the ad impressions or clicks generated through this tool. 
	</div>
	<div class="clear"></div>
	<div class="footer">
			googleadsensesandbox.com Network @ 2012 All rights reserved<br/><br/><br/>
			<a  href="http://www.yooarticles.com" target="_blank">Submit your Articles in YooArticles</a> |
			<a  href="http://domainwebsites.net/" target="_blank">View infomation site in domainwebsites.net</a> |
			<a  href="http://showsiteinfo.net/" target="_blank">Show site info</a> 
	</div>
</body>
</html>