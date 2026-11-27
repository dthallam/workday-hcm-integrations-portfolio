<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<!--PARAMS_START-->
<xsl:param name="input"/>
<!--PARAMS_END-->    <xsl:output method="text" encoding="UTF-8"/>

    <xsl:template match="/">
        <xsl:text>Employee_ID,First_Name,Last_Name,Department,Status,Salary,Location,Hire_Date,Pay_Band,Bonus&#10;</xsl:text>

        <xsl:for-each select="Company_Workers/Worker[@status='Active']">
            <!-- Pad Employee_ID to 6 digits -->
            <xsl:value-of select="format-number(Employee_ID, '000000')"/>
            <xsl:text>,</xsl:text>
            <xsl:value-of select="Name/First_Name"/>
            <xsl:text>,</xsl:text>
            <xsl:value-of select="Name/Last_Name"/>
            <xsl:text>,</xsl:text>
            <xsl:value-of select="Department"/>
            <xsl:text>,</xsl:text>
            <xsl:value-of select="@status"/>
            <xsl:text>,</xsl:text>
            <xsl:value-of select="format-number(Salary,'0.00')"/>
            <xsl:text>,</xsl:text>
            <xsl:value-of select="Location"/>
            <xsl:text>,</xsl:text>
            <!-- Reformat Hire_Date from YYYY-MM-DD to MM/DD/YYYY -->
            <xsl:value-of select="concat(substring(Hire_Date, 6, 2), '/', substring(Hire_Date, 9, 2), '/', substring(Hire_Date, 1, 4))"/>
            <xsl:text>,</xsl:text>
            <!-- Derived Pay_Band column using conditional logic -->
            
            <xsl:choose>
                <xsl:when test="Salary &gt; 100000">
                    <xsl:text>Executive_Band</xsl:text>
                </xsl:when>
                <xsl:when test="Salary &gt;= 80000">
                    <xsl:text>Senior_Band</xsl:text>
                </xsl:when>
                <xsl:otherwise>
                    <xsl:text>Standard_Band</xsl:text>
                </xsl:otherwise>
            </xsl:choose> 
          <xsl:text>,</xsl:text>
          <xsl:value-of select="format-number(Bonus,'0.00')"/>
           
          
          <xsl:text>&#10;</xsl:text>
        </xsl:for-each>
    </xsl:template>
</xsl:stylesheet>
