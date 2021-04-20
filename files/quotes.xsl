<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE xsl:stylesheet [
<!ENTITY lacl   "https://w3id.org/atomgraph/linkeddatahub/admin/acl/domain#">
<!ENTITY apl    "https://w3id.org/atomgraph/linkeddatahub/domain#">
<!ENTITY ac     "https://w3id.org/atomgraph/client#">
<!ENTITY rdf    "http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<!ENTITY rdfs   "http://www.w3.org/2000/01/rdf-schema#">
<!ENTITY xsd    "http://www.w3.org/2001/XMLSchema#">
<!ENTITY skos   "http://www.w3.org/2004/02/skos/core#">
<!ENTITY ldt    "https://www.w3.org/ns/ldt#">
<!ENTITY dct    "http://purl.org/dc/terms/">
<!ENTITY foaf   "http://xmlns.com/foaf/0.1/">
<!ENTITY domain "https://localhost:4443/ns/domain#">
<!ENTITY schema "https://schema.org/">
]>
<xsl:stylesheet version="2.0"
		xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
		xmlns:xhtml="http://www.w3.org/1999/xhtml"
		xmlns:xs="http://www.w3.org/2001/XMLSchema"
		xmlns:lacl="&lacl;"
		xmlns:ac="&ac;"
		xmlns:apl="&apl;"
		xmlns:rdf="&rdf;"
		xmlns:rdfs="&rdfs;"
		xmlns:xsd="&xsd;"
		xmlns:skos="&skos;"
		xmlns:ldt="&ldt;"
		xmlns:dct="&dct;"
		xmlns:foaf="&foaf;"
		xmlns:bs2="http://graphity.org/xsl/bootstrap/2.3.2"
		xmlns:schema="&schema;"
		exclude-result-prefixes="#all">

  <xsl:output method="html"/>

  <!-- <xsl:param name="ac:uri" select="'https://localhost:4443/quotes/q2/'" /> -->

  <xsl:template match="/">
    <html>
      <body>
	<xsl:apply-templates select="/rdf:RDF/rdf:Description"/>
      </body>
    </html>
  </xsl:template>

  <xsl:template match="*[foaf:isPrimaryTopicOf/@rdf:resource = $ac:uri]">
    <p>
      <xsl:value-of select="schema:text"/>
    </p>
    <p>
      <xsl:text>By: </xsl:text>
      <xsl:value-of select="schema:spokenByCharacter/@rdf:resource"/>
    </p>
  </xsl:template>

  <xsl:template match="*"/>
  
</xsl:stylesheet>
