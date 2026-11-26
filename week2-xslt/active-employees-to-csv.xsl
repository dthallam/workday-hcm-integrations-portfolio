<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<!--PARAMS_START-->
<xsl:param name="input"/>
<!--PARAMS_END-->    <!-- Tell XSLT to output plain text (CSV) -->
    <xsl:output method="text" encoding="UTF-8"/>

    <xsl:template match="/">
        <!-- 1. Print the CSV Header Row (&#10; means "press Enter / new line") -->
        <xsl:text>Employee_ID,First_Name,Last_Name,Department,Status,Salary,Location&#10;</xsl:text>

        <!-- 2. Loop through every Worker in the XML -->
        <xsl:for-each select="Company_Workers/Worker[@status='Active']">
            <xsl:value-of select="Employee_ID"/>
            <xsl:text>,</xsl:text>
            <xsl:value-of select="Name/First_Name"/>
            <xsl:text>,</xsl:text>
            <xsl:value-of select="Name/Last_Name"/>
            <xsl:text>,</xsl:text>
            <xsl:value-of select="Department"/>
            <xsl:text>,</xsl:text>
            <xsl:value-of select="@status"/>
            <xsl:text>,</xsl:text>
            <xsl:value-of select="Salary"/>
            <xsl:text>,</xsl:text>
            <xsl:value-of select="Location"/>
            <!-- 3. End the row with a new line -->
            <xsl:text>&#10;</xsl:text>
        </xsl:for-each>
    </xsl:template>
</xsl:stylesheet>
