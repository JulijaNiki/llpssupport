<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.1" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:output method="html" /> 
	
	<xsl:variable name="title" select="/rss/channel/title"/>		
	<xsl:template match="/">
		<html>
			<head>
				<title><xsl:value-of select="$title"/> RSS (XML) Feed</title>
				<link rel="stylesheet" href="/_includes/css/feeds.css"/>
			</head>	
			<xsl:apply-templates select="rss/channel"/>		
		</html>
	
	</xsl:template>
	
	
	<xsl:template match="channel">
		<body>			
			
			<div id="container">
				
				<div class="whatisthis">
					<h2>What is this page?</h2>
					<p>This is an RSS feed from the  <xsl:value-of select="$title"/>  area. RSS feeds allow you to stay up to date with the latest news and features from websites that interest you.</p>
				</div>		
			
				<div class="feedlist">
					<p>Below is the latest content available in this feed.</p>
				</div>
			
				<div class="body">
					<xsl:apply-templates select="item"/>
				</div>		
			</div>
			
			<div id="subscribe">
				<h2>Subscribe to this feed</h2>
				<p><a href="#" class="item">
						<img height="16" hspace="5" border="0" width="16" alt="RSS" src="/_includes/images/icons/rss-icon-16.gif" title="RSS" />
					</a>
					<a href="#" class="item"><xsl:value-of select="$title"/></a></p>
				<p>You can subscribe to this RSS feed in a number of ways, including the following:</p>
				<ul>
					<li>Drag the orange RSS button into your News Reader</li>
					<li>Drag the URL of the RSS feed into your News Reader</li>
					<li>Cut and paste the URL of the RSS feed into your News Reader</li>
				</ul>			
			</div>	
		</body>
	</xsl:template>
		
	<xsl:template match="item">
	<div id="item">
		<ul>
		  <li>
		  	<a href="{link}" class="item"><xsl:value-of select="title"/></a><br/>			
			<div>
		  	  <xsl:value-of select="description"  disable-output-escaping="yes" />					
			</div>	
		  </li>
		</ul>
	</div>		
	</xsl:template>
	
</xsl:stylesheet>