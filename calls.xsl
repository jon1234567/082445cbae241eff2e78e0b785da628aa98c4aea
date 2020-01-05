<?xml version="1.0" encoding="UTF-8"?>
<!--
  ~ Copyright (c) 2010 - 2016 Carbonite. All Rights Reserved.
  -->

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:msxsl="urn:schemas-microsoft-com:xslt"
                xmlns:user="http://android.riteshsahu.com">
<xsl:template match="/">
  <html>
	  <head>
		  <style type="text/css">
		  body 
		  {
			font-family:arial,sans-serif;
			color:#000;
			font-size:13px;
			color:#333;
		  }
		  table 
		  {
			font-size:1em;
			margin:0 0 1em;
			border-collapse:collapse;
			border-width:0;
			empty-cells:show;
		  }
		  td,th 
		  {
			border:1px solid #ccc;
			padding:6px 12px;
			text-align:left;
			vertical-align:top;
			background-color:inherit;
		  }
		  th 
		  {
			background-color:#dee8f1;
		  }
		  </style>
	  </head>
	  <body>
	  <h2>Phone calls</h2>
	  <table>
		<tr>
		  <th>Type</th>
		  <th>Number</th>
		  <th>Contact</th>
		  <th>Date</th>
		  <th>Duration (sec)</th>
		</tr>
		<xsl:for-each select="calls/call">
		<tr>
		  <td>
			<xsl:choose>
				<xsl:when test="@type = 1">
					Incoming
				</xsl:when>
				<xsl:when test="@type = 2">
					Outgoing
				</xsl:when>
				<xsl:when test="@type = 3">
					Missed
				</xsl:when>
				<xsl:when test="@type = 4">
					Voicemail
				</xsl:when>
				<xsl:when test="@type = 5">
					Rejected
				</xsl:when>
				<xsl:when test="@type = 6">
					Refused List
				</xsl:when>

				<xsl:otherwise>
					<xsl:value-of select="@type" /> Unknown
				</xsl:otherwise>
			</xsl:choose>
		  </td>
		  <td><xsl:value-of select="@number"/></td>
		  <td><xsl:value-of select="@contact_name"/></td>
		  <td><xsl:value-of select="@date"/><br/><xsl:value-of select="@readable_date"/></td>
		  <td><xsl:value-of select="@duration"/></td>
		</tr>
		</xsl:for-each>
	  </table>
	  </body>
  </html>
</xsl:template>
</xsl:stylesheet>