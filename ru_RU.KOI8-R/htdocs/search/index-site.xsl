<?xml version="1.0" encoding="koi8-r"?>
<!DOCTYPE xsl:stylesheet PUBLIC "-//FreeBSD//DTD FreeBSD XSLT 1.0 DTD//EN"
                                "http://www.FreeBSD.org/XML/share/xml/xslt10-freebsd.dtd" [
<!ENTITY title "����� �������">
]>

<!-- $FreeBSD$ -->

<!--
     The FreeBSD Russian Documentation Project

     $FreeBSDru: frdp/www/ru/search/index-site.xml,v 1.6 2004/04/08 07:08:56 den Exp $

     Original revision: 1.25
-->

<xsl:stylesheet version="1.0"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns="http://www.w3.org/1999/xhtml">

  <xsl:import href="http://www.FreeBSD.org/XML/share/xml/libcommon.xsl"/>
  <xsl:import href="http://www.FreeBSD.org/XML/share/xml/xhtml.xsl"/>

  <xsl:key name="indexLetter" match="term" use="translate(substring(text, 1, 1), 'abcdefghijklmnopqrstuvwxyz', 'ABCDEFGHIJKLMNOPQRSTUVWXYZ')"/>

  <xsl:variable name="title">&title;</xsl:variable>

  <xsl:template name="process.contentwrap">
    <xsl:call-template name="html-sitemap"/>

    <h2>������� �����</h2>

    <ul>
      <li><a href="../commercial/commercial.html">������������ �����������</a></li>
      <li><a href="../copyright/copyright.html">Copyright and Legal</a></li>
      <li><a href="../docs.html">������������</a></li>
      <li><a href="../FAQ/index.html">FAQ</a></li>
      <li><a href="../gallery/gallery.html">�������</a></li>
      <li><a href="../gnome/index.html">GNOME</a></li>
      <li><a href="../../doc/ru_RU.KOI8-R/books/handbook/index.html">�����������</a></li>
      <li><a href="../internal/internal.html">���������� ����������</a></li>
      <li><a href="../java/index.html">Java</a></li>
      <li><a href="../news/news.html">�������</a></li>
      <li><a href="../platforms/">���������</a></li>
      <li><a href="../ports/index.html">�����</a></li>
      <li><a href="../projects/projects.html">�������</a></li>
      <li><a href="../releases/index.html">���������� � �������</a></li>
      <li><a href="../search/search.html">�����</a></li>
      <li><a href="../security/security.html">������������</a></li>
      <li><a href="../support.html">���������</a></li>
    </ul>

    <hr noshade="noshade"/>

    <h1>���������� ��������� A-Z</h1>

    <xsl:call-template name="html-index-toc"/>

    <hr noshade="noshade"/>

    <xsl:call-template name="html-index"/>
  </xsl:template>
</xsl:stylesheet>
