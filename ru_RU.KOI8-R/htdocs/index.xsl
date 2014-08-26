<?xml version="1.0" encoding="koi8-r" ?>
<!DOCTYPE xsl:stylesheet PUBLIC "-//FreeBSD//DTD FreeBSD XSLT 1.0 DTD//EN"
				"http://www.FreeBSD.org/XML/share/xml/xslt10-freebsd.dtd" [
<!ENTITY title "������ FreeBSD">
]>

<!--
     The FreeBSD Russian Documentation Project

     $FreeBSD$
     $FreeBSDru: frdp/www/ru/index.xsl,v 1.47 2006/01/16 21:27:51 gad Exp $

     Original revision: 1.176
-->

<xsl:stylesheet version="1.0"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns="http://www.w3.org/1999/xhtml">

  <xsl:import href="http://www.FreeBSD.org/XML/lang/share/xml/libcommon.xsl"/>
  <xsl:import href="http://www.FreeBSD.org/XML/share/xml/xhtml.xsl"/>

  <!-- these params should be externally bound. The values
       here are not used actually -->
  <xsl:param name="advisories.xml" select="'none'"/>
  <xsl:param name="notices.xml" select="'none'"/>
  <xsl:param name="mirrors.xml" select="'none'"/>
  <xsl:param name="news.press.xml-master" select="'none'"/>
  <xsl:param name="news.press.xml" select="'none'"/>
  <xsl:param name="news.project.xml-master" select="'none'"/>
  <xsl:param name="news.project.xml" select="'none'"/>
  <xsl:param name="events.xml-master" select="'none'"/>
  <xsl:param name="events.xml" select="'none'"/>

  <xsl:variable name="svnKeyword">$FreeBSD$</xsl:variable>

  <xsl:variable name="title">&title;</xsl:variable>

  <xsl:template name="process.content">
        <div id="frontcontainer">
          <div id="frontmain">
            <div id="frontfeaturecontainer">

		<div id="frontfeatureleft">
			<div id="frontfeaturecontent">
				<h1>
				  �������� �� BSD &unix;
				</h1>
				<p>FreeBSD&reg; - ��� �����������
				  ������������ ������� ��� ��������,
				  ��������� � ���������� ������������ <a
				  href="&base;/platforms/">��������</a>.
				  � ��� ���ۣ� ����� ����� ��� ��������
				  ��� ������������ �������� ��������,
				  ����������������� � �����������. FreeBSD
				  ��������������� � �������������� <a
				  href="&enbase;/doc/en_US.ISO8859-1/articles/contributors/staff-committers.html">
				  ������� �������� �������������</a>.  FreeBSD
				  ������������ ����������� ������� �����������,
				  ������������ ������������ �
				  ������������������ �� ������� ������ �
				  ������������ �� ����� �� <a
				  href="&enbase;/doc/en_US.ISO8859-1/books/handbook/nutshell.html#INTRODUCTION-NUTSHELL-USERS">
				  ����� ����������� ���-������</a> ���� � ��
				  �������� ���������������� ���������� �������
				  ����������� � ����������� ��������.</p>

				  <div
				  id="txtfrontfeaturelink"> &#187;<a
				  href="&base;/about.html"
				  title="���������">���������</a>

				  </div> <!-- TXTFRONTFEATURELINK -->
			  </div> <!-- FRONTFEATURECONTENT -->
		  </div> <!-- FRONTFEATURELEFT -->

		<div id="frontfeaturemiddle">
			<div class="frontgetroundbox">
			  <div class="frontgettop"><div><b style="display: none">.</b></div></div>
				<div class="frontgetcontent">
				  <a href="&base;/where.html">�������� FreeBSD ������</a>
				</div> <!-- frontgetcontent -->
			  <div class="frontgetbot"><div><b style="display: none">.</b></div></div>
			</div> <!-- frontgetroundbox -->

			<div id="frontreleases">
			  <div id="frontreleasescontent" class="txtshortcuts">
				  <h2><a href="&base;/releases/">��������� ������</a></h2>
				  <ul id="frontreleaseslist">
					<li>������������:&nbsp;<a
				href="&u.rel.announce;">&rel.current;</a>,&nbsp;<a href="&u.rel2.announce;">&rel2.current;</a></li>
					<li>������: <a
				href="&u.rel3.announce;">&rel3.current;</a></li>
			    <xsl:if test="'&beta.testing;' != 'IGNORE'">
					<li>
					  <a href="&base;/where.html#helptest">�����������:
				            &betarel.current; - &betarel.vers;</a>
					</li>
			    </xsl:if>
			    <xsl:if test="'&beta2.testing;' != 'IGNORE'">
					<li>
					  <a href="&base;/where.html#helptest">�����������:
				            &betarel2.current; - &betarel2.vers;</a>
					</li>
			    </xsl:if>
				  </ul>
			  </div> <!-- FRONTRELEASESCONTENT -->
			</div> <!-- FRONTRELEASES -->
		</div> <!-- FRONTFEATUREMIDDLE -->

		<div id="frontfeatureright">
			<h2 class="blockhide">�����</h2>
			<div id="languagenav">
				<ul id="languagenavlist">
				  <li>
					<a href="&enbase;/de/" title="��������">de</a>
				  </li>
				  <li>
					<a href="&enbase;/" title="����������">en</a>
				  </li>
				  <li>
					<a href="&enbase;/es/" title="���������">es</a>
				  </li>
				  <li>
					<a href="&enbase;/fr/" title="�����������">fr</a>
				  </li>
				  <li>
					<a href="&enbase;/hu/" title="����������">hu</a>
				  </li>
				  <li>
					<a href="&enbase;/it/" title="�����������">it</a>
				  </li>
				  <li>
					<a href="&enbase;/ja/" title="��������">ja</a>
				  </li>
				  <li>
					<a href="&enbase;/nl/" title="�����������">nl</a>
				  </li>
				  <li>
					<a href="&base;/" title="�������">ru</a>
				  </li>
				  <li class="last-child">
					<a href="&enbase;/zh_CN/" title="��������� (����������)">zh_CN</a>
				  </li>
				</ul>
			</div> <!-- LANGUAGENAV -->

			<div id="mirror">
			  <form action="&cgibase;/mirror.cgi" method="get">
				<div>
				  <h2 class="blockhide"><label for="MIRRORSEL">�������</label></h2>
				  <select id="mirrorsel" name="goto">
					  <xsl:call-template name="html-index-mirrors-options-list">
					    <xsl:with-param name="mirrors.xml" select="$mirrors.xml" />
					  </xsl:call-template>
				  </select>
				</div> <!-- unnamed -->
				<input type="submit" value="Go" />
			  </form>
			</div> <!-- MIRROR -->

			<div id="frontshortcuts">
			  <div id="frontshortcutscontent" class="txtshortcuts">
				  <h2>������� ������</h2>
				  <ul id="frontshortcutslist">
					<li>
					  <a href="&base;/community/mailinglists.html" title="������ ��������">������ ��������</a>
					</li>
					<li>
					  <a href="&base;/support/bugreports.html" title="�������� �� ������">�������� �� ������</a>
					</li>
					<li>
					  <a href="&enbase;/doc/&url.doc.langcode;/books/faq/index.html" title="����� ���������� �������">����� ���������� �������</a>
					</li>
					<li>
					  <a href="&enbase;/doc/&url.doc.langcode;/books/handbook/index.html" title="����������� �� FreeBSD">�����������</a>
					</li>
					<li>
					  <a href="&base;/ports/index.html" title="��������� ������">�����</a>
					</li>

				  </ul>
			  </div> <!-- FRONTSHORTCUTSCONTENT -->
			</div> <!-- FRONTSHORTCUTS -->

			<div class="frontnewroundbox">
			  <div class="frontnewtop"><div><b style="display: none">.</b></div></div>
			    <div class="frontnewcontent">
			      <a href="&base;/projects/newbies.html">������� �� FreeBSD?</a>
			    </div> <!-- frontnewcontent -->
			  <div class="frontnewbot"><div><b style="display: none">.</b></div></div>
			</div> <!-- frontnewroundbox -->
		</div> <!-- FEATURERIGHT -->

            </div> <!-- FRONTFEATURECONTAINER -->

	    <br class="clearboth" />
            <div id="frontnemscontainer">
            	<div id="frontnews">
            	   <div id="frontnewscontent" class="txtnewsevent">
			<h2>��������� �������</h2>
			<div class="newseventswrap">

			<xsl:call-template name="html-index-news-project-items">
				<xsl:with-param name="news.project.xml-master" select="$news.project.xml-master" />
				<xsl:with-param name="news.project.xml" select="$news.project.xml" />
			</xsl:call-template>

			  <div>
				<ul class="newseventslist">
				  <li class="first-child">
					<a href="&base;/news/newsflash.html" title="��� �������">��� �������</a>
				  </li>
				  <li class="last-child">
					<a href="&enbase;/news/rss.xml" title="News RSS Feed"><img class="rssimage" src="&enbase;/layout/images/ico_rss.png" width="27" height="12" alt="News RSS Feed" /></a>
				  </li>
				</ul>
			  </div> <!-- unnamed -->
			</div> <!-- newseventswrap -->

            	   </div> <!-- FRONTNEWSCONTENT -->
            	</div> <!-- FRONTNEWS -->
            	<div class="frontseparator"><b style="display: none">.</b></div>
            	<div id="frontevents">
		   <div id="fronteventscontent" class="txtnewsevent">

			<h2>����������� �������</h2>
			<div class="newseventswrap">

			<xsl:call-template name="html-index-events-items">
				<xsl:with-param name="events.xml-master" select="$events.xml-master" />
				<xsl:with-param name="events.xml" select="$events.xml" />
			</xsl:call-template>

			  <div>
				<ul class="newseventslist">
				  <li class="only-child">
					<a href="&base;/events/" title="��� �������">��� �������</a>
				  </li>
				</ul>
			  </div> <!-- unnamed -->
			</div> <!-- newseventswrap -->

		   </div> <!-- FRONTEVENTSCONTENT -->
            	</div> <!-- FRONTEVENTS -->
            	<div class="frontseparator"><b style="display: none">.</b></div>
            	<div id="frontmedia">
		   <div id="frontmediacontent" class="txtnewsevent">

			<h2>� ���</h2>
			<div class="newseventswrap">

			<xsl:call-template name="html-index-news-press-items">
				<xsl:with-param name="news.press.xml-master" select="$news.press.xml-master" />
				<xsl:with-param name="news.press.xml" select="$news.press.xml" />
			</xsl:call-template>

			  <div>
				<ul class="newseventslist">
				  <li class="only-child">
					<a href="&base;/news/press.html" title="�ӣ � ���">�ӣ � ���</a>
				  </li>
				</ul>
			  </div> <!-- unnamed -->
			</div> <!-- newseventswrap -->

		   </div> <!-- FRONTMEDIACONTENT -->
            	</div> <!-- FRONTMEDIA -->
		<div class="frontseparator"><b style="display: none">.</b></div>
		<div id="frontsecurity">
		   <div id="frontsecuritycontent" class="txtnewsevent">

			<h2>��������� ������������</h2>
			<div class="newseventswrap">

			<xsl:call-template name="html-index-advisories-items">
				<xsl:with-param name="advisories.xml" select="$advisories.xml" />
				<xsl:with-param name="type" select="'advisory'" />
			</xsl:call-template>

			  <div>
				<ul class="newseventslist">
				  <li class="first-child">
					<a href="&base;/security/advisories.html" title="��� ��������� �� ������������">���</a>
				  </li>
				  <li class="last-child">
					<a href="&enbase;/security/rss.xml" title="Security Advisories RSS Feed"><img class="rssimage" src="&enbase;/layout/images/ico_rss.png" width="27" height="12" alt="Security Advisories RSS Feed" /></a>
				  </li>
				</ul>
			  </div> <!-- unnamed -->
			</div> <!-- newseventswrap -->

			<br />
			<h2>����������� �� ������������</h2>
			<div class="newseventswrap">

			<xsl:call-template name="html-index-advisories-items">
				<xsl:with-param name="advisories.xml" select="$notices.xml" />
				<xsl:with-param name="type" select="'notice'" />
			</xsl:call-template>

			  <div>
			    	<ul class="newseventslist">
				  <li class="first-child">
				    <a href="&base;/security/notices.html" title="��� ����������� �� ������������">���</a>
				  </li>
				  <li class="last-child">
				    <a href="&enbase;/security/errata.xml" title="Errata Notices RSS Feed"><img class="rssimage" src="&enbase;/layout/images/ico_rss.png" width="27" height="12" alt="Errata Notices RSS Feed" /></a>
				  </li>
				</ul>
			  </div> <!-- unnamed -->
			</div> <!-- newseventswrap -->

		   </div> <!-- FRONTSECURITYCONTENT -->
            	</div> <!-- FRONTSECURITY -->

		<br class="clearboth" />

            </div> <!-- FRONTNEMSCONTAINER -->
          </div> <!-- FRONTMAIN -->
        </div> <!-- FRONTCONTAINER -->
  </xsl:template>
</xsl:stylesheet>
