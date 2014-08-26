<?xml version="1.0" encoding="iso-8859-1" ?>
<!DOCTYPE xsl:stylesheet PUBLIC "-//FreeBSD//DTD FreeBSD XSLT 1.0 DTD//EN"
				"http://www.FreeBSD.org/XML/share/xml/xslt10-freebsd.dtd">
<!-- $FreeBSD$ -->

<xsl:stylesheet version="1.0"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns="http://www.w3.org/1999/xhtml">

  <xsl:import href="http://www.FreeBSD.org/XML/share/xml/libcommon.xsl"/>

  <xsl:template name="html-news-list-newsflash-preface">
    <img src="&enbase;/gifs/news.jpg" align="right" border="0" width="193"
      height="144" alt="Nouvelles FreeBSD"/>

    <p>FreeBSD est un syst�me d'exploitation en constante �volution. Se tenir inform�
      des derniers d�veloppements peut devenir une corv�e ! Pour rester � jour,
      consultez cette page r�guli�rement. Vous pouvez �galement
      vous inscrire � la liste de diffusion
      <a href="&enbase;/doc/&url.doc.langcode;/books/handbook/eresources.html#ERESOURCES-MAIL">freebsd-announce</a>
      ou au <a href="news.rdf">flux RDF</a>.</p>

    <p>Les projets suivants ont leurs propres pages de nouvelles, vous pouvez les consulter
      pour les mises � jour sp�cifiques � ces projets.</p>

    <ul>
      <li><a href="&base;/java/newsflash.html">&java; sur FreeBSD</a></li>
      <li><a href="http://freebsd.kde.org/">KDE sur FreeBSD</a></li>
      <li><a href="&base;/gnome/newsflash.html">GNOME sur FreeBSD</a></li>
    </ul>

    <p>Pour une description d�taill�e des versions pass�es, pr�sentes et futures,
      consultez la page <strong><a href="&base;/releases/index.html">d'information
	  sur les versions</a></strong>.</p>

    <p>Pour les avis de s�curit� concernant FreeBSD, veuillez consulter la page
      <a href="&base;/security/#adv">d'information sur la s�curit�</a>.</p>
  </xsl:template>

  <xsl:template name="html-news-list-newsflash-homelink">
    <a href="&base;/news/news.html">Accueil Nouvelles</a>
  </xsl:template>

  <xsl:template name="html-news-make-olditems-list">
    <p>Anciennes annonces :
      <a href="2002/index.html">2002</a>,
      <a href="2001/index.html">2001</a>,
      <a href="2000/index.html">2000</a>,
      <a href="1999/index.html">1999</a>,
      <a href="1998/index.html">1998</a>,
      <a href="1997/index.html">1997</a>,
      <a href="1996/index.html">1996</a></p>
  </xsl:template>

  <xsl:variable name="html-news-list-press-homelink">
    <a href="&base;/news/press.html">Accueil Presse</a>
  </xsl:variable>

  <xsl:template name="html-news-list-press-preface">
    <p>Si vous connaissez d'autres articles � propos de FreeBSD que nous n'avons pas
      indiqu�s ici, veuillez envoyer tous les d�tails � l'adresse
      <a href="mailto:doc@freebsd.org">doc@FreeBSD.org</a> afin que nous puissions
      les ajouter.</p>

    <p>Vous pouvez �galement consulter la page <a href="&base;/java/press.html">FreeBSD/Java
	dans la Presse</a> pour des nouvelles sur le projet Java pour FreeBSD</p>
  </xsl:template>

  <xsl:template name="html-events-list-preface">
    <p>Si vous avez connaissance d'�v�nements li�s � FreeBSD, ou d'�v�nements qui
      pourraient int�ress�s les utilisateurs FreeBSD, qui ne sont pas indiqu�s
      ici, veuillez envoyer tous les d�tails � <a
	href="mailto:www@FreeBSD.org">www@FreeBSD.org</a> de mani�re
      � ce qu'ils puissent �tre ajout�s.</p>

    <p>Les utilisateurs disposant d'un logiciel d'organisation comprenant le
      format iCalendar peuvent s'abonner au
      <a href="&base;/events/events.ics">
	calendrier des �v�nements FreeBSD</a>
      qui comprend tous les �v�nements mentionn�s ici.</p>
  </xsl:template>

  <xsl:template name="html-events-list-upcoming-heading">
    <h2 id="upcoming">Ev�nements actuels / � venir :</h2>
  </xsl:template>

  <xsl:template name="html-events-list-past-heading">
    <h2 id="past">Ev�nements pass�s :</h2>
  </xsl:template>

  <!-- Convert a month number to the corresponding long English name. -->
  <xsl:template name="gen-long-en-month">
    <xsl:param name="nummonth"/>
    <xsl:variable name="month" select="number($nummonth)"/>
    <xsl:choose>
      <xsl:when test="$month=1">Janvier</xsl:when>
      <xsl:when test="$month=2">F�vrier</xsl:when>
      <xsl:when test="$month=3">Mars</xsl:when>
      <xsl:when test="$month=4">Avril</xsl:when>
      <xsl:when test="$month=5">Mai</xsl:when>
      <xsl:when test="$month=6">Juin</xsl:when>
      <xsl:when test="$month=7">Juillet</xsl:when>
      <xsl:when test="$month=8">Ao�t</xsl:when>
      <xsl:when test="$month=9">Septembre</xsl:when>
      <xsl:when test="$month=10">Octobre</xsl:when>
      <xsl:when test="$month=11">Novembre</xsl:when>
      <xsl:when test="$month=12">D�cembre</xsl:when>
      <xsl:otherwise>Mois invalide</xsl:otherwise>
    </xsl:choose>
  </xsl:template>

</xsl:stylesheet>
