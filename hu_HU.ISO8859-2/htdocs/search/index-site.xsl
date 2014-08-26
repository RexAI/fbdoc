<?xml version="1.0" encoding="iso-8859-2"?>
<!DOCTYPE xsl:stylesheet PUBLIC "-//FreeBSD//DTD FreeBSD XSLT 1.0 DTD//EN"
                                "http://www.FreeBSD.org/XML/share/xml/xslt10-freebsd.dtd" [
<!ENTITY title "Oldalt�rk�p">
]>

<!-- $FreeBSD$ -->

<xsl:stylesheet version="1.0"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns="http://www.w3.org/1999/xhtml">

  <xsl:import href="http://www.FreeBSD.org/XML/share/xml/libcommon.xsl"/>
  <xsl:import href="http://www.FreeBSD.org/XML/share/xml/xhtml.xsl"/>

  <xsl:variable name="lowercase" select="'a�bcde�fghi�jklmno���pqrstu���vwxyz'"/>
  <xsl:variable name="uppercase" select="'A�BCDE�FGHI�JKLMNO���PQRSTU���VWXYZ'"/>

  <xsl:variable name="title">&title;</xsl:variable>

  <xsl:key name="indexLetter" match="term" use="translate(substring(text, 1, 1), 'a�bcde�fghi�jklmno���pqrstu���vwxyz', 'A�BCDE�FGHI�JKLMNO���PQRSTU���VWXYZ')"/>

  <xsl:template name="process.contentwrap">
    <xsl:call-template name="html-sitemap"/>

    <h2>Metaoldalak</h2>

    <ul>
      <li><a href="&enbase;/commercial/commercial.html">Kereskedelmi terjeszt�k</a></li>
      <li><a href="&base;/copyright/copyright.html">Copyright �s jogi inform�ci�k</a></li>
      <li><a href="&base;/docs.html">Dokument�ci�</a></li>
      <li><a href="&enbase;/internal/internal.html">Bels� oldalak</a></li>
      <li><a href="&enbase;/news/news.html">H�rek</a></li>
      <li><a href="&base;/platforms/">Platformok</a></li>
      <li><a href="&enbase;/ports/index.html">Portok</a></li>
      <li><a href="&base;/projects/projects.html">Projektek</a></li>
      <li><a href="&enbase;/releases/index.html">A kiad�sokkal kapcsolatos inform�ci�k</a></li>
      <li><a href="&base;/search/search.html">Keres�s</a></li>
      <li><a href="&enbase;/security/security.html">Biztons�g</a></li>
      <li><a href="&base;/support.html">T�mogat�s</a></li>
    </ul>

    <hr noshade="noshade"/>

    <h1>A-Z Index</h1>

    <xsl:call-template name="html-index-toc"/>

    <hr noshade="noshade"/>

    <xsl:call-template name="html-index"/>
  </xsl:template>
</xsl:stylesheet>
