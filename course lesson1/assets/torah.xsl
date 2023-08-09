<?xml version="1.0" encoding="UTF-8"?><!-- DWXMLSource="file:///Macintosh SSD/Users/yahudahbenyisrael/Downloads/morphhb-master/MAPM/MAPM.xml" -->
<!DOCTYPE xsl:stylesheet  [
	<!ENTITY nbsp   "&#160;">
	<!ENTITY copy   "&#169;">
	<!ENTITY reg    "&#174;">
	<!ENTITY trade  "&#8482;">
	<!ENTITY mdash  "&#8212;">
	<!ENTITY ldquo  "&#8220;">
	<!ENTITY rdquo  "&#8221;"> 
	<!ENTITY pound  "&#163;">
	<!ENTITY yen    "&#165;">
	<!ENTITY euro   "&#8364;">
]>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="html" encoding="UTF-8" doctype-public="-//W3C//DTD XHTML 1.0 Transitional//EN" doctype-system="http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"/>
<xsl:template match="/">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
<title>Untitled Document</title>
</head>

<body>
<table width="1526" height="279" border="1">
  <tr>
    <th scope="col">book</th>
    <th scope="col">chapter</th>
    <th scope="col">verse</th>
    </tr>
  <xsl:for-each select="osisText/div/div/div/div/p/verse">
    <tr>
      <td><xsl:value-of select="../../../title"/></td>
      <td><xsl:for-each select="../chapter">
        Content goes here
        </xsl:for-each>
        <xsl:value-of select="../chapter/@osisID"/></td>
      <td><xsl:for-each select=".">
        Content goes here
        </xsl:for-each>
        <xsl:value-of select="@eID"/></td>
      </tr>
  </xsl:for-each>
  </table>
</body>
</html>

</xsl:template>
</xsl:stylesheet>