<?xml version="1.0" encoding="iso-8859-2" ?>
<!DOCTYPE xsl:stylesheet PUBLIC "-//FreeBSD//DTD FreeBSD XSLT 1.0 DTD//EN"
				"http://www.FreeBSD.org/XML/share/xml/xslt10-freebsd.dtd">
<!-- $FreeBSD$ -->

<!-- The FreeBSD Hungarian Documentation Project
     Translated by: Gabor Kovesdan <gabor@FreeBSD.org>
     %SOURCE%	share/xml/libcommon.xsl
     %SRCID%	1.31
-->

<xsl:stylesheet version="1.0"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns="http://www.w3.org/1999/xhtml">

  <xsl:import href="http://www.FreeBSD.org/XML/share/xml/libcommon.xsl"/>

  <xsl:param name="param-l10n-date-format-YMD"
             select="'%Y-%M-%D'" />
  <xsl:param name="param-l10n-date-format-YM"
             select="'%Y %M'" />
  <xsl:param name="param-l10n-date-format-MD"
             select="'%M %D'" />
  <xsl:param name="param-l10n-date-format-rfc822"
             select="'%Y %m %D 00:00:00 CET, %W'" />

  <xsl:template name="html-usergroups-list-header">
    <p>A &os; n�pszer�s�ge nyom�n a
      vil�gban l�trej�tt sz�mos
      felhaszn�l�i csoport.</p>

    <p>Ha tudom�sunk van olyan tov�bbi &os;
      felhaszn�l�i csoportokr�l, amelyek az
      al�bbi felsorol�sban m�g nem szerepelnek,
      k�ldj�nk egy <a
	href="http://www.freebsd.org/hu/send-pr.html">hibajelent�st</a>
      a <q>www</q> kateg�ri�ban a k�vetkez�
      adatok megad�s�val:</p>

    <ol>
      <li>A felhaszn�l�i csoport honlapj�nak
	c�me.</li>

      <li>Egy kapcsolattart� szem�ly e-mail c�me a
	l�togat�ink �s a honlapunk
	karbantart�inak sz�m�ra.</li>

      <li>A felhaszn�l�i csoport t�m�r (egy
	bekezd�snyi) bemutat�sa.</li>
    </ol>

    <p>Az el�bb felsorolt inform�ci�kat
      k�rj�k HTML form�tumban bek�ldeni.  A &os;
      lend�let�nek meg�rz�s�nek
      szellem�ben els�sorban olyan
      felhaszn�l�i csoportok jelentkez�s�t
      v�rjuk, amelyek akt�vak �s
      tev�kenys�g�k nyilv�nos.  Ha m�g
      nem lenne a k�rny�k�nk�n ilyen csoport,
      akkor javasoljuk, hogy kutassunk fel �s vegy�nk fel
      kapcsolatot a k�zel�nkben �l�
      �rdekl�d�kkel, p�ld�ul a <a
	href="http://bsd.meetup.com/"></a> oldalon kereszt�l,
      �s alap�tsunk egy saj�t
      felhaszn�l�i csoportot.</p>

    <h3>R�gi�k:</h3>
  </xsl:template>

  <xsl:template name="html-news-list-newsflash-preface">
    <img src="&enbase;/gifs/news.jpg" align="right" border="0" width="193"
      height="144" alt="&os; h�rek"/>

    <p>A &os; oper�ci�s rendszer dinamikusan �s
      gyorsan fejl�dik, ez�rt a legfrissebb
      fejleszt�sek nyomonk�vet�se nem mindig
      k�nny� feladat.  Ha k�v�ncsiak vagyunk a
      rendszerrel kapcsolatos leg�jabb
      inform�ci�kra, t�rj�nk vissza erre az
      oldalra gyakran.  Emellett �rdemes lehet m�g
      feliratkoznunk a <a
	href="&base;/doc/hu/books/handbook/eresources.html#ERESOURCES-MAIL">freebsd-announce
	levelez�si list�ra</a>, vagy a
	hozz� tartoz� <a href="rss.xml">RSS feed</a>re.</p>

    <p>Tov�bb� az al�bbi projektek rendelkeznek
      saj�t k�l�n h�roldallal, amelyek figyelemmel
      k�s�r�s�vel pedig az adott projektben
      v�gzett munk�r�l tudhatunk meg
      t�bbet.</p>

    <ul>
      <li><a href="&enbase;/java/newsflash.html">&os; &java;</a></li>

      <li><a href="http://freebsd.kde.org/">&os; KDE</a></li>

      <li><a href="&enbase;/gnome/newsflash.html">&os; GNOME</a></li>
    </ul>

    <p>A kor�bbi, a jelenlegi �s a j�v�beni
      kiad�sokr�l b�vebben a <a
	href="&enbase;/releases/index.html">kiad�sok
	inform�ci�s oldal�n</a>
      olvashatunk.</p>

    <p>A &os; Projekt biztons�g�val kapcsolatos
      inform�ci�kat �s a biztons�gi
      figyelmeztet�seket �sszefoglal� list�t a
      <a href="&base;/security/#adv">biztons�gi inform�ci�k</a>
      oldalon tal�ljuk meg.</p>
  </xsl:template>

  <xsl:template name="html-news-make-olditems-list">
    <p>A kor�bbi �vek h�rei (2009-t�l
      magyarul):
      <a href="&base;/news/2009/index.html">2009</a>,
      <a href="&enbase;/news/2008/index.html">2008</a>,
      <a href="&enbase;/news/2007/index.html">2007</a>,
      <a href="&enbase;/news/2006/index.html">2006</a>,
      <a href="&enbase;/news/2005/index.html">2005</a>,
      <a href="&enbase;/news/2004/index.html">2004</a>,
      <a href="&enbase;/news/2003/index.html">2003</a>,
      <a href="&enbase;/news/2002/index.html">2002</a>,
      <a href="&enbase;/news/2001/index.html">2001</a>,
      <a href="&enbase;/news/2000/index.html">2000</a>,
      <a href="&enbase;/news/1999/index.html">1999</a>,
      <a href="&enbase;/news/1998/index.html">1998</a>,
      <a href="&enbase;/news/1997/index.html">1997</a>,
      <a href="&enbase;/news/1996/index.html">1996</a></p>
  </xsl:template>

  <xsl:template name="html-news-list-newsflash-homelink">
    <a href="&base;/news/news.html">H�rek f�oldal</a>
  </xsl:template>

  <xsl:template name="html-press-make-olditems-list">
    <p>A kor�bbi �vek sajt�kiadv�nyai
      (2008-t�l magyarul):
      <a href="&base;/news/2008/press.html">2008</a>,
      <a href="&enbase;/news/2007/press.html">2007</a>,
      <a href="&enbase;/news/2006/press.html">2006</a>,
      <a href="&enbase;/news/2005/press.html">2005</a>,
      <a href="&enbase;/news/2004/press.html">2004</a>,
      <a href="&enbase;/news/2003/press.html">2003</a>,
      <a href="&enbase;/news/2002/press.html">2002</a>,
      <a href="&enbase;/news/2001/press.html">2001</a>,
      <a href="&enbase;/news/2000/press.html">2000</a>,
      <a href="&enbase;/news/1999/press.html">1999</a>,
      <a href="&enbase;/news/1998/press.html">1998-1996</a></p>
  </xsl:template>

  <xsl:template name="html-news-list-press-preface">
    <p>Ha tudunk b�rmilyen olyan &os; t�m�j�
      h�rr�l vagy egy�b �r�sr�l,
      amely nem szerepel az itteniek k�z�tt, �rjunk egy
      levelet a <a href="mailto:www@FreeBSD.org">www@FreeBSD.org</a>
      c�mre, hogy fel tudjuk ide is tenni.</p>
  </xsl:template>

  <xsl:template name="html-events-map">
    <xsl:param name="mapurl" select="'none'" />

    <p>A lentebb l�that� t�rk�pen
      s�t�t pirossal jel�lt�k azokat az
      orsz�gokat �s r�gi�kat, ahol a
      k�zelj�v�ben valamilyen nagyobb &os;
      t�m�j� rendezv�ny v�rhat�.
      S�rg�val �s narancss�rg�val
      jel�lt�k azokat az orsz�gokat, ahol
      kor�bban m�r lezajlott valamilyen &os;
      t�m�j� rendezv�ny.  Itt a sz�nek
      az rendezv�nyek sz�m�val egyre
      s�t�tednek.</p>

    <img>
      <xsl:attribute name="src">
        <xsl:value-of select="$mapurl" />
      </xsl:attribute>
    </img>
  </xsl:template>

  <xsl:template name="html-events-list-preface">
    <p>Ha tudunk valamilyen olyan &os; t�m�j�
      rendezv�nyr�l vagy rendezv�nyekr�l, amelyek a
      t�bbi &os; felhaszn�l� sz�m�ra is
      �rdekesek lehetnek, de m�g nem szerepelnek az
      oldalon tal�lhat� list�ban, �rjuk meg
      a <a href="mailto:www@FreeBSD.org">www@FreeBSD.org</a>
      c�mre, hogy fel tudjuk tenni.</p>

    <p>Az iCalendar form�tumot ismer� programokkal
      dolgoz� felhaszn�l�k az oldalon szerepl�
      �sszes rendezv�nyt el�rhetik a <a
	href="&base;/events/events.ics">kalend�riumk�nt</a>
      is.</p>
  </xsl:template>

  <xsl:template name="html-events-list-upcoming-heading">
    <h2 id="upcoming">Aktu�lis/k�zelg�
      rendezv�nyek:</h2>
  </xsl:template>

  <xsl:template name="html-events-list-past-heading">
    <h2 id="past">Kor�bbi rendezv�nyek:</h2>
  </xsl:template>

  <xsl:template name="html-list-advisories-release-label">
    <xsl:param name="relname" select="'none'" />

    <p>Megjelent a <xsl:value-of select="$relname" />.</p>
  </xsl:template>

  <xsl:template name="rdf-security-advisories-title"
                xmlns="http://my.netscape.com/rdf/simple/0.9/">
    <channel>
      <title>&os; biztons�gi figyelmeztet�sek</title>
      <link>http://www.FreeBSD.org/security/</link>
      <description>A &os; Projekt �ltal megjelentetett
	biztons�gi figyelmeztet�sek</description>
    </channel>
  </xsl:template>

  <xsl:template name="rss-security-advisories-title"
                xmlns:atom="http://www.w3.org/2005/Atom">
    <xsl:param name="advisories.xml" select="''" />

    <xsl:variable name="title">&os; biztons�gi figyelmeztet�sek</xsl:variable>
    <xsl:variable name="link">http://www.FreeBSD.org/security/</xsl:variable>

    <title><xsl:value-of select="$title" /></title>
    <link><xsl:value-of select="$link" /></link>
    <description>A &os; Projekt �ltal megjelentetett
      biztons�gi figyelmeztet�sek</description>
    <language>en-us</language>
    <webMaster>secteam@FreeBSD.org (&os; Security Team)</webMaster>
    <managingEditor>secteam@FreeBSD.org (&os; Security Team)</managingEditor>
    <docs>http://blogs.law.harvard.edu/tech/rss</docs>
    <ttl>120</ttl>
    <image>
      <url>http://www.FreeBSD.org/logo/logo-full.png</url>
      <title><xsl:value-of select="$title" /></title>
      <link><xsl:value-of select="$link" /></link>
    </image>
    <atom:link rel="self" type="application/rss+xml">
      <xsl:attribute name="href">
        <xsl:value-of select="$link" /><xsl:text>rss.xml</xsl:text>
      </xsl:attribute>
    </atom:link>
  </xsl:template>

  <xsl:template name="rss-errata-notices-title"
                xmlns:atom="http://www.w3.org/2005/Atom">
    <xsl:param name="notices.xml" select="''" />

    <xsl:variable name="title">&os; sajt�hib�k</xsl:variable>
    <xsl:variable name="link">http://www.FreeBSD.org/security/</xsl:variable>

    <title><xsl:value-of select="$title" /></title>
    <link><xsl:value-of select="$link" /></link>
    <description>A &os; Projekt �ltal megjelentetett
      sajt�hib�k</description>
    <language>en-us</language>
    <webMaster>secteam@FreeBSD.org (FreeBSD Security Team)</webMaster>
    <managingEditor>secteam@FreeBSD.org (FreeBSD Security Team)</managingEditor>
    <docs>http://blogs.law.harvard.edu/tech/rss</docs>
    <ttl>120</ttl>
    <image>
      <url>http://www.FreeBSD.org/logo/logo-full.png</url>
      <title><xsl:value-of select="$title" /></title>
      <link><xsl:value-of select="$link" /></link>
    </image>
    <atom:link rel="self" type="application/rss+xml">
      <xsl:attribute name="href">
        <xsl:value-of select="$link" /><xsl:text>rss.xml</xsl:text>
      </xsl:attribute>
    </atom:link>
  </xsl:template>

  <xsl:template name="html-index-advisories-items-lastmodified">
    <xsl:param name="advisories.xml" select="''" />
    <xsl:param name="type" select="'advisory'" />

    <xsl:choose>
      <xsl:when test="$type = 'advisory'">
	<xsl:call-template name="misc-format-date-string">
	  <xsl:with-param name="year"
	    select="document($advisories.xml)/descendant::year[month/day/advisory[position() = 1]]/name" />
	  <xsl:with-param name="month"
	    select="document($advisories.xml)/descendant::month[day/advisory[position() = 1]]/name"/>
	  <xsl:with-param name="day"
	    select="document($advisories.xml)/descendant::day[advisory[position() = 1]]/name" />
	</xsl:call-template>
      </xsl:when>

      <xsl:when test="$type = 'notice'">
	<xsl:call-template name="misc-format-date-string">
	  <xsl:with-param name="year"
	    select="document($advisories.xml)/descendant::year[month/day/notice[position() = 1]]/name" />
	  <xsl:with-param name="month"
	    select="document($advisories.xml)/descendant::month[day/notice[position() = 1]]/name" />
	  <xsl:with-param name="day"
	    select="document($advisories.xml)/descendant::day[notice[position() = 1]]/name" />
	</xsl:call-template>
      </xsl:when>
    </xsl:choose>
  </xsl:template>

  <!-- template: "html-list-advisories-putitems"
       sub-routine to generate a list -->

  <xsl:template name="html-list-advisories-putitems">
    <xsl:param name="items" select="''" />
    <xsl:param name="prefix" select="''" />
    <xsl:param name="prefixold" select="''" />

    <xsl:if test="$items">
      <table>
        <tr><th>D�tum</th><th>Figyelmeztet�s</th></tr>
        <xsl:for-each select="$items">
          <xsl:variable name="year" select="../../../name" />
          <xsl:variable name="month" select="../../name" />
          <xsl:variable name="day" select="../name" />
          <tr>
            <td class="txtdate">
	      <xsl:value-of select='
		concat(format-number($year, "####"), "-",
		format-number($month, "00"), "-",
		format-number($day, "00"))' />
            </td>
            <td>
	    <xsl:choose>
	      <xsl:when test="@type='release'">
                <i><xsl:value-of select="name" /></i>
	      </xsl:when>
	      <xsl:when test="@omithref='yes'">
		<xsl:value-of select="name" />
	      </xsl:when>
	      <xsl:when test="name/@role='old'">
		<a><xsl:attribute name="href">
		    <xsl:value-of select="concat($prefixold, name, '.asc')" />
		  </xsl:attribute>
		  <xsl:value-of select="concat(name, '.asc')" /></a>
	      </xsl:when>
	      <xsl:otherwise>
		<a><xsl:attribute name="href">
		    <xsl:value-of select="concat($prefix, name, '.asc')" />
		  </xsl:attribute>
		  <xsl:value-of select="name" /></a>
	      </xsl:otherwise>
	    </xsl:choose>
          </td></tr>
	</xsl:for-each>
      </table>
    </xsl:if>
  </xsl:template>

  <xsl:template name="html-index-news-project-items-lastmodified">
    <xsl:param name="news.project.xml-master" select="''" />

    <xsl:call-template name="misc-format-date-string">
      <xsl:with-param name="year"
	select="document($news.project.xml-master)/descendant::year[position() = 1]/name" />
      <xsl:with-param name="month"
	select="document($news.project.xml-master)/descendant::month[position() = 1]/name" />
      <xsl:with-param name="day"
	select="document($news.project.xml-master)/descendant::day[position() = 1]/name" />
    </xsl:call-template>
  </xsl:template>

  <xsl:template name="html-index-news-press-items-lastmodified">
    <xsl:param name="news.press.xml-master" select="''" />

    <xsl:call-template name="misc-format-date-string">
      <xsl:with-param name="year"
	select="document($news.press.xml-master)/descendant::year[position() = 1]/name" />
      <xsl:with-param name="month"
	select="document($news.press.xml-master)/descendant::month[position() = 1]/name" />
      <xsl:with-param name="date-format"
	select="$param-l10n-date-format-YM" />
    </xsl:call-template>
  </xsl:template>

  <!-- Convert a month number to the corresponding long English name. -->
  <xsl:template name="gen-long-en-month">
    <xsl:param name="nummonth"/>
    <xsl:variable name="month" select="number($nummonth)"/>
    <xsl:choose>
      <xsl:when test="$month=1">janu�r</xsl:when>
      <xsl:when test="$month=2">febru�r</xsl:when>
      <xsl:when test="$month=3">m�rcius</xsl:when>
      <xsl:when test="$month=4">�prilis</xsl:when>
      <xsl:when test="$month=5">m�jus</xsl:when>
      <xsl:when test="$month=6">j�nius</xsl:when>
      <xsl:when test="$month=7">j�lius</xsl:when>
      <xsl:when test="$month=8">augusztus</xsl:when>
      <xsl:when test="$month=9">szeptember</xsl:when>
      <xsl:when test="$month=10">okt�ber</xsl:when>
      <xsl:when test="$month=11">november</xsl:when>
      <xsl:when test="$month=12">december</xsl:when>
      <xsl:otherwise>�rv�nytelen h�nap</xsl:otherwise>
    </xsl:choose>
  </xsl:template>

  <!-- Convert a month number to the corresponding short English name. -->
  <xsl:template name="gen-short-en-month">
    <xsl:param name="nummonth"/>
    <xsl:variable name="month" select="number($nummonth)"/>
    <xsl:choose>
      <xsl:when test="$month=1">jan</xsl:when>
      <xsl:when test="$month=2">feb</xsl:when>
      <xsl:when test="$month=3">m�r</xsl:when>
      <xsl:when test="$month=4">�pr</xsl:when>
      <xsl:when test="$month=5">m�j</xsl:when>
      <xsl:when test="$month=6">j�n</xsl:when>
      <xsl:when test="$month=7">j�l</xsl:when>
      <xsl:when test="$month=8">aug</xsl:when>
      <xsl:when test="$month=9">szep</xsl:when>
      <xsl:when test="$month=10">okt</xsl:when>
      <xsl:when test="$month=11">nov</xsl:when>
      <xsl:when test="$month=12">dec</xsl:when>
      <xsl:otherwise>�rv�nytelen h�nap</xsl:otherwise>
    </xsl:choose>
  </xsl:template>

  <!-- Generate a date interval. -->
  <!-- Sample: 2002. november 27 - 2003. december 29. -->
  <xsl:template name="gen-date-interval">
    <xsl:param name="startdate"/>
    <xsl:param name="enddate"/>

    <xsl:value-of select="startdate/year"/>

    <xsl:text>. </xsl:text>
    <xsl:call-template name="gen-long-en-month">
      <xsl:with-param name="nummonth" select="startdate/month"/>
    </xsl:call-template>
    <xsl:text> </xsl:text>

    <xsl:if test="number(startdate/month) != number(enddate/month) or
		  number(startdate/day) != number(enddate/day) or
		  number(startdate/year) != number(enddate/year)">

      <xsl:value-of select="startdate/day"/>

      <xsl:text> - </xsl:text>
    </xsl:if>

    <xsl:if test="number(startdate/year) != number(enddate/year)">
      <xsl:value-of select="enddate/year"/>
      <xsl:text>.</xsl:text>
    </xsl:if>

      <xsl:if test="number(startdate/month) != number(enddate/month) or
		    number(startdate/year) != number(enddate/year)">
	<xsl:text> </xsl:text>
	<xsl:call-template name="gen-long-en-month">
	  <xsl:with-param name="nummonth" select="enddate/month"/>
	</xsl:call-template>
        <xsl:text> </xsl:text>
      </xsl:if>

     <xsl:value-of select="enddate/day"/>
     <xsl:text>.</xsl:text>
  </xsl:template>

 <!-- template: "html-index-events-items"
       pulls in the 5 most recent events items -->

  <xsl:template name="html-index-events-items">
    <xsl:param name="events.xml-master" select="'none'" />
    <xsl:param name="events.xml" select="''" />

    <xsl:for-each select="document($events.xml)/descendant::event[
									   ((number(enddate/year) &gt; number($curdate.year)) or
								            (number(enddate/year) = number($curdate.year) and
								             number(enddate/month) &gt; number($curdate.month)) or
						          		    (number(enddate/year) = number($curdate.year) and
								             number(enddate/month) = number($curdate.month) and
						   	            	     enddate/day &gt;= $curdate.day))]">
      <xsl:sort select="startdate/year" order="ascending"/>
      <xsl:sort select="format-number(startdate/month, '00')" order="ascending"/>
      <xsl:sort select="format-number(startdate/day, '00')" order="ascending"/>

      <xsl:if test="position() &lt;= 5">

      <p>
      <span class="txtdate">
         <xsl:value-of select='
	    concat(format-number(startdate/year, "####"), "-",
	    format-number(startdate/month, "00"), "-",
	    format-number(startdate/day, "00"), " -  ",
	    format-number(enddate/year, "####"), "-",
	    format-number(enddate/month, "00"), "-",
	    format-number(enddate/day, "00"))' />
      </span><br />
      <a>
        <xsl:attribute name="href">
	  <xsl:choose>
	    <xsl:when test="$events.xml-master = 'none'">&enbase;/</xsl:when>
	    <xsl:otherwise>&base;/</xsl:otherwise>
	  </xsl:choose>
	  <xsl:text>events/#</xsl:text>
	  <xsl:call-template name="generate-event-anchor"/>
        </xsl:attribute>

        <xsl:value-of select="name"/>

	<br />
	<xsl:if test="location/city!='' and location/country!=''">
	  (<xsl:value-of select='location/city' />, <xsl:value-of select='location/country' />)
	</xsl:if>
      </a></p>
    </xsl:if>
    </xsl:for-each>
  </xsl:template>
</xsl:stylesheet>
