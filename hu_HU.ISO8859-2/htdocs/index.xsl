<?xml version="1.0" encoding="iso-8859-2" ?>
<!DOCTYPE xsl:stylesheet PUBLIC "-//FreeBSD//DTD FreeBSD XSLT 1.0 DTD//EN"
				"http://www.FreeBSD.org/XML/share/xml/xslt10-freebsd.dtd" [
<!ENTITY title "A &os; Projekt">
]>

<!-- $FreeBSD$ -->

<!-- FreeBSD Hungarian Documentation Project
     Translated by: Gabor Kovesdan <gabor@FreeBSD.org>
     %SOURCE%	en/index.xsl
     %SRCID%	1.169
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
				<h1>A BSD &unix; alapjain</h1>

				<p>A &os;&reg; napjaink szerver, asztali
				  �s be�gyazott <a
				  href="&base;/platforms/">sz�m�t�g�peinek</a>
				  oper�ci�s rendszere.  A
				  &os; k�db�zisa t�bb
				  mint harminc �v folyamatos
				  fejleszt�s�nek,
				  munk�j�nak �s
				  optimaliz�l�s�nak
				  eredm�nye.  Jelenleg <a
				    href="&enbase;/doc/en/articles/contributors/article.html#STAFF-COMMITTERS">egy�ni
				    fejleszt�k egy nagyobb csoportja</a>
				  tartja karban.  A &os; legfontosabb
				  jellemz�i t�bbek k�zt a
				  fejlett
				  h�l�zatkezel�s, a
				  kifinomult biztons�gi
				  lehet�s�gek �s a
				  vil�gsz�nvonal�
				  teljes�tm�ny, amelyet a
				  vil�gban <a
				    href="&enbase;/doc/hu/books/handbook/nutshell.html/#INTRODUCTION-NUTSHELL-USERS">sz�mos forgalmasabb kiszolg�l�</a>,
				  hat�kony be�gyazott
				  rendszer �s
				  t�rol�eszk�z
				  haszn�l.</p>

				<div id="txtfrontfeaturelink"> &raquo;
				  <a href="&base;/about.html" title="Tov�bb">Tov�bb</a>
				</div> <!-- TXTFRONTFEATURELINK -->
			</div> <!-- FRONTFEATURECONTENT -->
		</div> <!-- FRONTFEATURELEFT -->

		<div id="frontfeaturemiddle">
			<div class="frontgetroundbox">
			  <div class="frontgettop"><div><b style="display: none">.</b></div></div>
				<div class="frontgetcontent">
				  <a href="&base;/where.html">Let�lt�s</a>
				</div> <!-- frontgetcontent -->
			  <div class="frontgetbot"><div><b style="display: none">.</b></div></div>
			</div> <!-- frontgetroundbox -->

			<div id="frontreleases">
			  <div id="frontreleasescontent" class="txtshortcuts">
				  <h2><a href="&enbase;/releases/">FRISS KIAD�SOK</a></h2>
				  <ul id="frontreleaseslist">
					<li>
					  <a
					    href="&u.rel.announce;">Stabil kiad�s: &rel.current;</a>
					</li>
					<li>
					  <a
					    href="&u.rel2.announce;">Stabil (kifut�) kiad�s: &rel2.current;</a>
					</li>
			    <xsl:if test="'&beta.testing;' != 'IGNORE'">
					<li>
					  <a
					    href="&base;/where.html#helptest">K�vetkez� kiad�s: &betarel.current; - &betarel.vers;</a>
					</li>
			    </xsl:if>
			    <xsl:if test="'&beta2.testing;' != 'IGNORE'">
					<li>
					  <a
					    href="&base;/where.html#helptest">K�vetkez� kiad�s: &betarel2.current; - &betarel2.vers;</a>
					</li>
			    </xsl:if>
				  </ul>
			  </div> <!-- FRONTRELEASESCONTENT -->
			</div> <!-- FRONTRELEASES -->
		</div> <!-- FRONTFEATUREMIDDLE -->

		<div id="frontfeatureright">
			<h2 class="blockhide">Nyelvek</h2>
			<div id="languagenav">
				<ul id="languagenavlist">
				  <li>
					<a href="&enbase;/de/" title="N�met">de</a>
				  </li>
				  <li>
					<a href="&enbase;/" title="Angol">en</a>
				  </li>
				  <li>
					<a href="&enbase;/es/" title="Spanyol">es</a>
				  </li>
				  <li>
					<a href="&enbase;/fr/" title="Francia">fr</a>
				  </li>
				  <li>
					<a href="&base;/" title="Magyar">hu</a>
				  </li>
				  <li>
					<a href="&enbase;/it/" title="Olasz">it</a>
				  </li>
				  <li>
					<a href="&enbase;/ja/" title="Jap�n">ja</a>
				  </li>
				  <li>
					<a href="&enbase;/nl/" title="Holland">nl</a>
				  </li>
				  <li>
					<a href="&enbase;/ru/" title="Orosz">ru</a>
				  </li>
				  <li class="last-child">
					<a href="&enbase;/zh_CN/" title="K�nai (Egyszer�s�tett)">zh_CN</a>
				  </li>
				</ul>
			</div> <!-- LANGUAGENAV -->

			<div id="mirror">
			  <form action="&cgibase;/mirror.cgi" method="get">
				<div>
				  <h2 class="blockhide"><label for="MIRRORSEL">T�kr�z�sek</label></h2>
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
				  <h2>GYORSMEN�</h2>
				  <ul id="frontshortcutslist">
					<li>
					  <a
					    href="&base;/community/mailinglists.html" title="Levelez�si list�k">Levelez�si list�k</a>
					</li>
					<li>
					  <a
					    href="&base;/support/bugreports.html" title="Hibajelent�sek">Hibajelent�sek</a>
					</li>
					<li>
					  <a
					    href="&enbase;/doc/hu/books/faq/index.html" title="GYIK">GYIK</a>
					</li>
					<li>
					  <a
					    href="&enbase;/doc/hu/books/handbook/index.html" title="K�zik�nyv">K�zik�nyv</a>
					</li>
					<li>
					  <a
					    href="&enbase;/ports/index.html" title="Portok">Portok</a>
					</li>

				  </ul>
			  </div> <!-- FRONTSHORTCUTSCONTENT -->
			</div> <!-- FRONTSHORTCUTS -->

			<div class="frontnewroundbox">
			  <div class="frontnewtop"><div><b style="display: none">.</b></div></div>
			    <div class="frontnewcontent">
			      <a
				href="&enbase;/projects/newbies.html">�j felhaszn�l�?</a>
			    </div> <!-- frontnewcontent -->
			  <div class="frontnewbot"><div><b style="display: none">.</b></div></div>
			</div> <!-- frontnewroundbox -->
		</div> <!-- FEATURERIGHT -->

            </div> <!-- FRONTFEATURECONTAINER -->

	    <br class="clearboth" />
            <div id="frontnemscontainer">
            	<div id="frontnews">
            	   <div id="frontnewscontent" class="txtnewsevent">
			<h2>FRISS H�REK</h2>
			<div class="newseventswrap">

			<xsl:call-template name="html-index-news-project-items">
				<xsl:with-param name="news.project.xml-master" select="$news.project.xml-master" />
				<xsl:with-param name="news.project.xml" select="$news.project.xml" />
			</xsl:call-template>

			  <div>
				<ul class="newseventslist">
				  <li class="first-child">
					<a
					  href="&base;/news/newsflash.html" title="Tov�bbi h�rek">Tov�bbi h�rek</a>
				  </li>
				  <li class="last-child">
					<a
					  href="&base;/news/rss.xml" title="H�rek RSS Feed"><img class="rssimage" src="&enbase;/layout/images/ico_rss.png" width="27" height="12" alt="H�rek RSS feedben" /></a>
				  </li>
				</ul>
			  </div> <!-- unnamed -->
			</div> <!-- newseventswrap -->

            	   </div> <!-- FRONTNEWSCONTENT -->
            	</div> <!-- FRONTNEWS -->
            	<div class="frontseparator"><b style="display: none">.</b></div>
            	<div id="frontevents">
		   <div id="fronteventscontent" class="txtnewsevent">

			<h2>RENDEZV�NYEK</h2>
			<div class="newseventswrap">

			<xsl:call-template name="html-index-events-items">
				<xsl:with-param name="events.xml-master" select="$events.xml-master" />
				<xsl:with-param name="events.xml" select="$events.xml" />
			</xsl:call-template>

			  <div>
				<ul class="newseventslist">
				  <li class="only-child">
					<a
					  href="&base;/events/" title="Tov�bbi rendezv�nyek">Tov�bbi rendezv�nyek</a>
				  </li>
				</ul>
			  </div> <!-- unnamed -->
			</div> <!-- newseventswrap -->

		   </div> <!-- FRONTEVENTSCONTENT -->
            	</div> <!-- FRONTEVENTS -->
            	<div class="frontseparator"><b style="display: none">.</b></div>
            	<div id="frontmedia">
		   <div id="frontmediacontent" class="txtnewsevent">

			<h2>A M�DI�BAN</h2>
			<div class="newseventswrap">

			<xsl:call-template name="html-index-news-press-items">
				<xsl:with-param name="news.press.xml-master" select="$news.press.xml-master" />
				<xsl:with-param name="news.press.xml" select="$news.press.xml" />
			</xsl:call-template>

			  <div>
				<ul class="newseventslist">
				  <li class="only-child">
					<a
					  href="&base;/news/press.html" title="Tov�bb esem�nyek a m�di�ban">Tov�bb</a>
				  </li>
				</ul>
			  </div> <!-- unnamed -->
			</div> <!-- newseventswrap -->

		   </div> <!-- FRONTMEDIACONTENT -->
            	</div> <!-- FRONTMEDIA -->
		<div class="frontseparator"><b style="display: none">.</b></div>
		<div id="frontsecurity">
		   <div id="frontsecuritycontent" class="txtnewsevent">

			<h2>BIZTONS�GI
			  FIGYELMEZTET�SEK</h2>
			<div class="newseventswrap">

			<xsl:call-template name="html-index-advisories-items">
				<xsl:with-param name="advisories.xml" select="$advisories.xml" />
				<xsl:with-param name="type" select="'advisory'" />
			</xsl:call-template>

			  <div>
				<ul class="newseventslist">
				  <li class="first-child">
					<a
					  href="&base;/security/advisories.html" title="Tov�bbi biztons�gi figyelmeztet�sek">Tov�bb</a>
				  </li>
				  <li class="last-child">
					<a
					  href="&base;/security/rss.xml" title="Biztons�gi figyelmeztet�sek RSS Feed"><img class="rssimage" src="&enbase;/layout/images/ico_rss.png" width="27" height="12" alt="Biztons�gi figyelmeztet�sek RSS feedben" /></a>
				  </li>
				</ul>
			  </div> <!-- unnamed -->
			</div> <!-- newseventswrap -->

			<br />
			<h2>HIBAJEGYZ�K</h2>
			<div class="newseventswrap">

			<xsl:call-template name="html-index-advisories-items">
				<xsl:with-param name="advisories.xml" select="$notices.xml" />
				<xsl:with-param name="type" select="'notice'" />
			</xsl:call-template>

			  <div>
			    <ul class="newseventslist">
			      <li class="first-child">
				<a
				  href="&base;/security/" title="M�g t�bb sajt�hiba mutat�sa">Tov�bb</a>
			      </li>
			      <li class="last-child">
				<a
				  href="&base;/security/errata.xml" title="Sajt�hib�k RSS Feed"><img class="rssimage" src="&enbase;/layout/images/ico_rss.png" width="27" height="12" alt="Sajt�hib�k RSS feedben"/></a>
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
