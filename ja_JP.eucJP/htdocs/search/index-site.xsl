<?xml version="1.0" encoding="euc-jp"?>
<!DOCTYPE xsl:stylesheet PUBLIC "-//FreeBSD//DTD FreeBSD XSLT 1.0 DTD//EN"
                                "http://www.FreeBSD.org/XML/share/xml/xslt10-freebsd.dtd" [
<!ENTITY title "�����ȥޥå�">
]>

<!-- $FreeBSD$ -->

<!-- The FreeBSD Japanese Documentation Project -->
<!-- Original revision: 1.29 -->

<xsl:stylesheet version="1.0"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns="http://www.w3.org/1999/xhtml">

  <xsl:import href="http://www.FreeBSD.org/XML/share/xml/libcommon.xsl"/>
  <xsl:import href="http://www.FreeBSD.org/XML/share/xml/xhtml.xsl"/>

  <xsl:key name="indexLetter" match="term" use="translate(substring(text, 1, 1), 'abcdefghijklmnopqrstuvwxyz', 'ABCDEFGHIJKLMNOPQRSTUVWXYZ')"/>

  <xsl:variable name="title">&title;</xsl:variable>

  <xsl:template name="process.contentwrap">
    <xsl:call-template name="html-sitemap"/>

    <h2>�ƥۡ���ڡ���</h2>

    <ul>
      <li><a href="&base;/commercial/commercial.html">���ѥ٥��</a></li>
      <li><a href="&base;/copyright/copyright.html">���</a></li>
      <li><a href="&base;/docs.html">�ɥ�����ơ������</a></li>
      <li><a href="&base;/internal/internal.html">����</a></li>
      <li><a href="&base;/news/news.html">�˥塼��</a></li>
      <li><a href="&base;/platforms/">�ץ�åȥե�����</a></li>
      <li><a href="&base;/ports/index.html">Ports</a></li>
      <li><a href="&base;/projects/projects.html">�ץ�������</a></li>
      <li><a href="&base;/releases/index.html">��꡼������</a></li>
      <li><a href="&base;/search/search.html">����</a></li>
      <li><a href="&base;/security/security.html">�������ƥ�</a></li>
      <li><a href="&base;/support.html">���ݡ���</a></li>
    </ul>

    <hr noshade="noshade"/>

    <h1>A-Z ����</h1>

    <xsl:call-template name="html-index-toc"/>

    <hr noshade="noshade"/>

    <xsl:call-template name="html-index"/>
  </xsl:template>
</xsl:stylesheet>
