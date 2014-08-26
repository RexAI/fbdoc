<?xml version="1.0" encoding="iso-8859-2" ?>
<!DOCTYPE xsl:stylesheet PUBLIC "-//FreeBSD//DTD FreeBSD XSLT 1.0 DTD//EN"
                                "http://www.FreeBSD.org/XML/share/xml/xslt10-freebsd.dtd" [
<!ENTITY title "A &os; k�z�ss�g">
]>

<!-- $FreeBSD$ -->

<!-- The FreeBSD Hungarian Documentation Project
     Translated by: Gabor Kovesdan <gabor@FreeBSD.org>
     %SOURCE%   en/community.xsl
     %SRCID%    1.9
-->

<xsl:stylesheet version="1.0"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:date="http://exslt.org/dates-and-times"
  xmlns="http://www.w3.org/1999/xhtml"
  extension-element-prefixes="date">

  <xsl:import href="http://www.FreeBSD.org/XML/lang/share/xml/libcommon.xsl"/>
  <xsl:import href="http://www.FreeBSD.org/XML/share/xml/xhtml.xsl"/>

  <xsl:key name="last-year-event-by-country" match="event[number(enddate/year) = (number(date:year()) - 1)]"
    use="location/country" />

  <xsl:key name="event-by-year" match="event" use="enddate/year" />

  <xsl:variable name="title">&title;</xsl:variable>

  <xsl:template name="process.sidewrap">
    &nav.community;
  </xsl:template>

  <xsl:template name="process.contentwrap">
	      <p>A &os; m�g�tt egy akt�v
		fejleszt�i k�z�ss�g
		�ll.</p>

	      <p>T�bb mint sz�z <a
		  href="&base;/community/mailinglists.html">levelez�si
		lista</a>, tucatnyi <a
		  href="http://forums.FreeBSD.org/">f�rum</a>,
		  �s sz�mos <a
		  href="&base;/community/newsgroups.html">h�rcsoport</a>
		�ll rendelkez�sre.  Ezenk�v�l
		<xsl:value-of
		select="count(document($usergroups.xml)//entry)"
		/><xsl:text> </xsl:text><a
		  href="&base;/usergroups.html">felhaszn�l�i
		csoport</a> l�tezik a vil�g <xsl:value-of
		select="count(document($usergroups.xml)//country)" />
		orsz�g�ban, �s rendelkez�nk
		egy akt�v <a
		  href="&base;/community/irc.html">IRC</a>
		k�z�ss�ggel is.  Ezenk�v�l
		m�g sok fejleszt� �r <a
		  href="http://planet.freebsdish.org">blogot</a> a
		&os;-vel kapcsolatos munk�j�r�l.  A
		fejleszt�k �s a jelent�sebb
		t�mogat�k tov�bb� egy <a
		  href="http://wiki.FreeBSD.org/">wikit</a> is
		fenntartanak, ahol a &os; fejleszt�s�vel
		�s a hozz�kapcsol�d�
		projektekr�l olvashatunk.  Emellett a &os;-vel
		m�g sz�mos <a
		  href="&base;/community/social.html">ismerts�gi
		h�l�zaton</a> is
		tal�lkozhatunk.</p>

	      <p>Tavaly a &os;-vel kapcsolatban <xsl:value-of
		select="count(/events/event[number(enddate/year) =
		(number($curdate.year) -1)])" /> rendezv�ny zajlott
		le a vil�g <xsl:value-of
		select="count(/events/event[(number(enddate/year) =
		(number($curdate.year) -1)) and (generate-id() =
		generate-id(key('last-year-event-by-country',
		location/country)[1]))])" /> orsz�g�ban.
		A k�zelg� rendezv�nyekr�l a <a
		  href="&base;/events/events.html"> r�luk
		sz�l� lapon</a> tal�lhat�,
		folyamatosan friss�l� <a
		  href="&base;/events/events.ics">kalend�riumban</a>
		�s <a
		  href="&base;/events/rss.xml">RSS feedeken</a>
		kereszt�l �rtes�lhet�nk.  A
		kor�bban lezajlott rendezv�nyekr�l a
		YouTube oldal�n egy <a
		  href="http://www.youtube.com/bsdconferences">BSD
		  konferenci�kat</a> �sszefoglal�
		csatorn�n tal�lhatunk videoanyagokat.</p>

		<div id="latest-videos" style="display:none;">
		  <h3>A legfrissebb vide�k</h3>

		  <div id="videoBar-bar">
		    <span style="color:#676767;font-size:11px;margin:10px;padding:4px;">Bet�lt�s...</span>
		  </div>

		  <script src="http://www.google.com/uds/api?file=uds.jp&amp;v=1.0&amp;source=uds-vbw" type="text/javascript"></script>

		  <style type="text/css">
		    @import url("http://www.google.com/uds/css/gsearch.css");
		  </style>

		  <script type="text/javascript">
		    window._uds_vbw_donotrepair = true;
		  </script>

		  <script src="http://www.google.com/uds/solutions/videobar/gsvideobar.js?mode=new" text="text/javascript"></script>

		  <style type="text/css">
		    @import url("http://www.google.com/uds/solutions/videobar/gsvideobar.css");
		  </style>

		  <style type="text/css">
		    .playerInnerBox_gsvb .player_gsvb {
		      width  : 320px;
		      height : 260px;
		    }
		  </style>

		  <script type="text/javascript">
		    document.getElementById('latest-videos').style.display = 'block';
		    function LoadVideoBar() {
		      var videoBar;
		      var options = {
			largeResultSet : !true,
			horizontal : true,
			autoExecuteList : {
			  cycleTime   : GSvideoBar.CYCLE_TIME_MEDIUM,
			  cycleMode   : GSvideoBar.CYCLE_MODE_LINEAR,
			  executeList : ["ytchannel:bsdconferences"]
			}
		      }
		      videoBar = new GSvideoBar(document.getElementById("videoBar-bar"),
		                                GSvideoBar.PLAYER_ROOT_FLOATING,
		                                options);
		    }
		    GSearch.setOnLoadCallback(LoadVideoBar);
		  </script>
		</div> <!-- latest-videos -->
  </xsl:template>
</xsl:stylesheet>
