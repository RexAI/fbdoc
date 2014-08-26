<?xml version="1.0" encoding="koi8-r" ?>
<!DOCTYPE xsl:stylesheet PUBLIC "-//FreeBSD//DTD FreeBSD XSLT 1.0 DTD//EN"
				"http://www.FreeBSD.org/XML/share/xml/xslt10-freebsd.dtd" [
<!ENTITY title "���������� ���� FreeBSD">
]>

<!--
     The FreeBSD Russian Documentation Project

     $FreeBSD$

     Original revision: 1.6
-->

<xsl:stylesheet version="1.0"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns="http://www.w3.org/1999/xhtml">

  <xsl:import href="http://www.FreeBSD.org/XML/lang/share/xml/libcommon.xsl"/>
  <xsl:import href="http://www.FreeBSD.org/XML/share/xml/xhtml.xsl"/>

  <xsl:variable name="title">&title;</xsl:variable>

  <xsl:template name="process.sidewrap">
    &nav.community;
  </xsl:template>

  <xsl:template name="process.contentwrap">
	      <p>&os; ������������ � ��������� ���������� �����.</p>

	      <ul>

	        <li>������ ������������� �������� ����� 30,000
	        ���������� ��� ������� ������ '<a
	        href="http://del.icio.us/tag/freebsd">freebsd</a>'
	        �� <a href="http://del.icio.us">del.icio.us</a>.</li>

		<li>������ ���������� �� ������ ����� �������������,
		����������� � ��������� �������� ������ '<a
		href="http://flickr.com/search/?z=t&amp;ss=2&amp;w=all&amp;q=freebsd&amp;m=text">freebsd</a>'
		�� <a href="http://www.flickr.com">flickr</a>.</li>

		<li>����� ������������ � �����������,
		����������� � ������������, ��������� � <a
		href="http://www.youtube.com/results?search_query=freebsd&amp;search_type=&amp;aq=f">FreeBSD</a>,
		�� <a href="http://www.youtube.com">YouTube</a>. � ���������, ��� �� �������� ����� <a href="http://www.youtube.com/bsdconferences">BSD Conferences</a>, ���������� ����� 1 ���� ������� �����������, ��������� �� ����������� ������������ FreeBSD.</li>

		<li><a
		href="http://www.facebook.com/home.php#/group.php?gid=2204657214">
		������ ������������� FreeBSD</a> �� <a
		href="http://www.facebook.com">Facebook</a> � <a href="http://www.linkedin.com/groups?gid=47628">������ FreeBSD</a> �� <a href="http://www.linkedin.com">LinkedIn</a>.</li>

		<li>�� ������ ������� �� <a
		href="http://twitter.com/freebsdannounce">@freebsdannounce</a>,
		<a
		href="http://twitter.com/freebsdblogs">@freebsdblogs</a>,
		<a href="http://twitter.com/freebsd">@freebsd</a> ���
		<a href="http://twitter.com/bsdevents">@bsdevents</a>
		�� <a href="http://twitter.com">Twitter</a>.</li>

	      </ul>
  </xsl:template>
</xsl:stylesheet>
