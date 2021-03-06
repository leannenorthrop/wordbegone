<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns="http://www.w3.org/1999/xhtml"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
                xmlns:ade="http://ns.adobe.com/2006/ade"
		        xmlns:fo="http://www.w3.org/1999/XSL/Format" version="2.0">
    <xsl:output indent="yes" method="xml"/>
    
    <xsl:template match="/">   
                
<ade:template>
  <fo:layout-master-set>
    <fo:simple-page-master master-name="single_column">
	<fo:region-body margin-bottom="3pt" margin-top="3pt" margin-left="3pt" margin-right="3pt"/>
    </fo:simple-page-master>

    <fo:simple-page-master master-name="two_column"
		margin-bottom="0.5em" margin-top="0.5em" margin-left="0.5em" margin-right="0.5em">
	<fo:region-body column-count="2" column-gap="10pt"/>
    </fo:simple-page-master>

    <fo:simple-page-master master-name="two_column_head"
		margin-bottom="0.5em" margin-left="0.5em" margin-right="0.5em">
	<fo:region-before extent="8.3em"/>
	<fo:region-body column-count="2" margin-top="8.7em" column-gap="10pt"/>
    </fo:simple-page-master>

    <fo:simple-page-master master-name="three_column"
		margin-bottom="0.5em" margin-top="0.5em" margin-left="0.5em" margin-right="0.5em">
	<fo:region-body column-count="3" column-gap="10pt"/>
    </fo:simple-page-master>

    <fo:simple-page-master master-name="three_column_head"
		margin-bottom="0.5em" margin-top="0.5em" margin-left="0.5em" margin-right="0.5em">
	<fo:region-before extent="8.3em"/>
	<fo:region-body column-count="3" margin-top="8.7em" column-gap="10pt"/>
    </fo:simple-page-master>

    <fo:page-sequence-master>
        <fo:repeatable-page-master-alternatives>
            <fo:conditional-page-master-reference master-reference="three_column_head" page-position="first" ade:min-page-width="80em"/>
            <fo:conditional-page-master-reference master-reference="three_column" ade:min-page-width="80em"/>
            <fo:conditional-page-master-reference master-reference="two_column_head" page-position="first" ade:min-page-width="50em"/>
            <fo:conditional-page-master-reference master-reference="two_column" ade:min-page-width="50em"/>
            <fo:conditional-page-master-reference master-reference="single_column"/>
        </fo:repeatable-page-master-alternatives>
    </fo:page-sequence-master>

  </fo:layout-master-set>

  <ade:style>
    <ade:styling-rule selector=".title_box" display="adobe-other-region" adobe-region="xsl-region-before"/>
  </ade:style>

</ade:template>
    </xsl:template>
    
</xsl:stylesheet>
