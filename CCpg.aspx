<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CCpg.aspx.cs" Inherits="Formulaire2.CCpg" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>Accueil - Communauté de Communes de Parthenay-Gatine</title>
    <link href="CssCCPG.css" rel="stylesheet" type="text/css">
    <meta http-equiv="content-type" content="text/html; charset=UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <script src="https://code.jquery.com/jquery-1.12.3.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jspdf/0.9.0rc1/jspdf.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/html2canvas/0.4.1/html2canvas.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jspdf/1.0.272/jspdf.debug.js"></script>
    <script type="text/javascript" src="libs/png_support/zlib.js"></script>
    <script type="text/javascript" src="libs/png_support/png.js"></script>
    <script type="text/javascript" src="jspdf.plugin.addimage.js"></script>
    <script type="text/javascript" src="jspdf.plugin.png_support.js"></script>
    <script type="text/javascript" src="JSccpg.js"></script>

</head>

<body class="fond">
    <!--background="2012-05-Porte_saint-jacques- (12).jpg" background-size="cover"-->
    <div class="entete-fixe noindex">
        <div class="banniere">
            <div id="ctl00_g_8ee9dcc9_04de_4d79_bc40_6feceece80a5" __markuptype="vsattributemarkup" __webpartid="{8ee9dcc9-04de-4d79-bc40-6feceece80a5}" webpart="true" isclosed="false">
                <div id="ctl00_g_8ee9dcc9_04de_4d79_bc40_6feceece80a5_ctl00_divTopMenu_Global" class="TopMenu_Global">
                    <div class="TopMenu">
                        <div id="TopMenuAfficher" class="ContenuMenu">
                            <div class="TopMenuGroupe">
                                <span id="ctl00_g_8ee9dcc9_04de_4d79_bc40_6feceece80a5_ctl00_lbl_contenu">
                                    <table class="ContenuMenu">
                                        <tr>
                                            <td class="TopMenuSectiontxt">
                                                <img alt="" class="TopMenuSectionImg" src="image/icone_panneau_sport.png" width="60" height="50" style="margin-bottom: 10px;" />
                                                <div>
                                                    <a href="http://www.cc-parthenay-gatine.fr/ccpg/structuresetequipements/sportifs/gatineo/Pages/Accueil.aspx" class="ABleu">Centre aquatique GatinéO</a><br />
                                                    <a href="http://www.cc-parthenay-gatine.fr/ccpg/structuresetequipements/sportifs/leolagrange/Pages/Accueil.aspx" class="AVert">Complexe sportif Léo Lagrange</a><br />
                                                    <a href="http://www.cc-parthenay-gatine.fr/ccpg/structuresetequipements/sportifs/tirsportif/Pages/Accueil.aspx" class="ABleu">Centre de tir sportif</a><br />
                                                    <a href="http://www.cc-parthenay-gatine.fr/ccpg/structuresetequipements/sportifs/Piscinesaintaubin/Pages/Accueil.aspx" class="AVert">Piscine communautaire à Saint Aubin le Cloud</a><br />
                                                    <a href="http://www.cc-parthenay-gatine.fr/ccpg/structuresetequipements/sportifs/espacesports/Pages/Accueil.aspx" class="ABleu">Salles espace sports de Secondigny</a><br />
                                                </div>
                                            </td>
                                            <td class="TopMenuSectiontxt">
                                                <img alt="" class="TopMenuSectionImg" src="image/icone_panneau_ciap.png" width="60" height="50" style="margin-bottom: 10px;" />
                                                <div>
                                                    <a href="http://www.cc-parthenay-gatine.fr/ccpg/structuresetequipements/Tourime%20et%20patrimoine/CIAP/Pages/Accueil.aspx" class="AVert">CIAP / Maison du patrimoine</a><br />
                                                    <a href="http://www.cc-parthenay-gatine.fr/ccpg/structuresetequipements/Tourime%20et%20patrimoine/Lesh%C3%A9bergementstouristiques/Pages/Accueil.aspx" class="ABleu">Hébergements touristiques</a><br />
                                                </div>
                                            </td>
                                            <td class="TopMenuSectiontxt">
                                                <img alt="" class="TopMenuSectionImg" src="image/icone_panneau_enfance.png" width="60" height="50" style="margin-bottom: 10px;" />
                                                <div>
                                                    <a href="http://www.cc-parthenay-gatine.fr/ccpg/education/LesRelaisPetiteenfance/Pages/Accueil.aspx" class="AVert">Les relais Petite enfance</a><br />
                                                    <a href="http://www.cc-parthenay-gatine.fr/ccpg/education/LesAccueilsdeLoisirs/Pages/Accueil.aspx" class="ABleu">Les accueils de loisirs</a><br />
                                                    <a href="http://www.cc-parthenay-gatine.fr/ccpg/education/Lesecoles/Pages/Accueil.aspx" class="AVert">Les écoles</a><br />
                                                </div>
                                            </td>
                                            <td class="TopMenuSectiontxt">
                                                <img alt="" class="TopMenuSectionImg" src="image/icone_panneau_culturel.png" width="60" height="50" style="margin-bottom: 10px;" />
                                                <div>
                                                    <a href="http://www.cc-parthenay-gatine.fr/ccpg/structuresetequipements/culturel/ecoledemusique/Pages/Accueil.aspx" class="ABleu">Ecole de musique</a><br />
                                                    <a href="http://www.cc-parthenay-gatine.fr/ccpg/structuresetequipements/culturel/EAP/Pages/Accueil.aspx" class="AVert">Ecole d'Arts plastique</a><br />
                                                    <a href="http://www.cc-parthenay-gatine.fr/ccpg/structuresetequipements/culturel/reseauxmediatheque/Pages/Accueil.aspx" class="ABleu">Réseau des médiathèques</a><br />
                                                    <a href="http://www.cc-parthenay-gatine.fr/ccpg/structuresetequipements/culturel/Ludoth%C3%A8que/" class="AVert">La ludothèque</a><br />
                                                    <a href="http://www.cc-parthenay-gatine.fr/ccpg/structuresetequipements/culturel/ecoledemusique/Pages/Accueil.aspx" class="ABleu">L'école de musique Georges Migot</a><br />
                                                </div>
                                            </td>
                                            <td class="TopMenuSectiontxt">
                                                <img alt="" class="TopMenuSectionImg" src="image/icone_panneau_vache.png" width="60" height="50" style="margin-bottom: 10px;" />
                                                <div>
                                                    <a href="http://marcheparthenay.canalblog.com/" class="AVert">Marché aux bestiaux</a><br />
                                                </div>
                                            </td>
                                            <td class="TopMenuSectiontxt">
                                                <img alt="" class="TopMenuSectionImg" src="image/icone_panneau_ordi.png" width="60" height="50" style="margin-bottom: 10px;" />
                                                <div>
                                                    <a href="http://www.cc-parthenay-gatine.fr/ccpg/structuresetequipements/epn/Pages/accueil.aspx" class="ABleu">Espaces Publics Numériques</a><br />
                                                    <a href="http://parthenay.cyber-base.org/usager/home.do?urlSite=parthenay" class="AVert">La Cyber Base</a><br />
                                                </div>
                                            </td>
                                        </tr>
                                    </table>
                                </span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>


    <div class="nomarg">
        <!--Petit menu plus Logo et Nom-->
        <div>
            <nav>
                <div class="nomarg">
                    <ul>
                        <li class="active"><a href="http://www.cc-parthenay-gatine.fr/ccpg/SitePages/espacepresse.aspx" style="color: black;">Espace presse</a></li>
                        <li><a href="http://www.cc-parthenay-gatine.fr/ccpg/newsletter/Pages/Accueil.aspx" style="color: black;">Mon info+</a></li>
                        <li><a href="http://www.cc-parthenay-gatine.fr/ccpg/economie/marchespublics/Pages/Accueil.aspx" style="color: black;">Marché publics</a></li>
                        <li><a href="http://www.cc-parthenay-gatine.fr/ccpg/moncompte" style="color: red;" style="color: black;">Mon Compte</a></li>
                        <li><a href="https://mail.cc-parthenay-gatine.fr/" style="color: black;">
                            <img src="image/mail_b.png" alt="" style="color: black;" width="20" height="20" />Messagerie</a></li>
                        <li><a href="https://web.intra.cc-parthenay-gatine.fr/extranet" style="color: black;">Extranet</a></li>
                        <!--Faire la barre de recherche-->
                        <li>
                            <form>
                                <input type="text" name="mot-clé" id="text" />
                                <input type="button" name="mot-clé2" id="recherche" value="ok " onclick="window.location.href = 'http://www.cc-parthenay-gatine.fr/ccpg/SitePages/results.aspx?k=Recherche...'" />
                            </form>
                        </li>
                    </ul>
                </div>
            </nav>
        </div>
        <div class="ccpg">
            <img src="image/CCPG.jpg" alt="ccpg" width="150" height="120" />
            <h1 style="color: black;">Communauté de Communes de Parthenay-Gatine</h1>
        </div>
        <div class="drop">
            <div id="getFixed" class="dropdownmenu">
                <!-- Menu et sous menu -->
                <ul class="drop_menu" id="horiznav" style="float: center;">
                    <li>
                        <a alt="acceuil" href="#">Acceuil</a>
                    </li>
                    <li>
                        <a alt="Tourisme" href="#">
                            <img alt="" src="image/icone_menu_1.png" width="20" height="30" />
                            Tourisme</a>
                        <ul id="submenu">
                            <li>
                                <a href="http://www.cc-parthenay-gatine.fr/ccpg/tourisme/parcoursrandonnee/Pages/Accueil.aspx">PARCOURS RANDONNÉE</a>
                            </li>
                            <li>
                                <a href="http://www.cc-parthenay-gatine.fr/ccpg/_layouts/carte.aspx">Plan intéractif</a>
                            </li>
                            <li>
                                <a href="http://www.cc-parthenay-gatine.fr/ccpg/tourisme/pah/Pages/Accueil.aspx">Pays d'art et d'histoire</a>
                            </li>
                            <li>
                                <a href="http://www.cc-parthenay-gatine.fr/ccpg/tourisme/taxe_de_sejour/Pages/Accueil.aspx">Taxe de séjour</a>
                            </li>
                            <li>
                                <a href="http://www.cc-parthenay-gatine.fr/ccpg/tourisme/preparezvotres%C3%A9jour/Pages/Accueil.aspx">Préparez votre séjour</a>
                            </li>
                            <li>
                                <a href="http://www.cc-parthenay-gatine.fr/ccpg/tourisme/territoireevenements/Pages/Accueil.aspx">Territoire d’événements</a>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <a alt="Solidarité" href="#">
                            <img alt="" src="image/icone_menu_2.png" width="20" height="30" />
                            Solidarité</a>
                        <ul id="submenu">
                            <li>
                                <a href="http://www.cc-parthenay-gatine.fr/ccpg/solidarite/CIAS/Pages/Accueil.aspx">Centre Intercommunal d'Action Sociale (CIAS)</a>
                            </li>
                            <li>
                                <a href="http://www.cc-parthenay-gatine.fr/ccpg/solidarite/CIAS/Pages/L'accueil-des-gens-du-voyage.aspx">Aires des gens du voyages</a>
                            </li>
                            <li>
                                <a href="http://www.cc-parthenay-gatine.fr/ccpg/solidarite/aideadomicile/Pages/Accueil.aspx">Soutien à domicile</a>
                            </li>
                            <li>
                                <a href="http://www.cc-parthenay-gatine.fr/ccpg/solidarite/chantiers_d'insertion/Pages/Accueil.aspx">Chantiers d'insertion</a>
                            </li>
                            <li>
                                <a href="http://www.cc-parthenay-gatine.fr/ccpg/solidarite/sante/Pages/Accueil.aspx">Santé</a>
                            </li>
                            <li>
                                <a href="http://www.cc-parthenay-gatine.fr/ccpg/solidarite/handicap/Pages/Accueil.aspx">Le handicap</a>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <a alt="evironnement" href="#">
                            <img alt="" src="image/icone_menu_3.png" width="30" height="30" />
                            Evironnement</a>
                        <ul id="submenu">
                            <li>
                                <a href="http://www.cc-parthenay-gatine.fr/ccpg/environnement/collectedesdechets/Pages/Accueil.aspx">Collecte des déchets</a>
                            </li>
                            <li>
                                <a href="http://www.cc-parthenay-gatine.fr/ccpg/environnement/sensibilisation_radon/Pages/Accueil.aspx">Sensibilisation radon</a>
                            </li>
                            <li>
                                <a href="http://www.cc-parthenay-gatine.fr/ccpg/environnement/consignes_de_tri/Pages/Accueil.aspx">Consignes de tri</a>
                            </li>
                            <li>
                                <a href="http://www.cc-parthenay-gatine.fr/ccpg/environnement/assainissement/Pages/Accueil.aspx">Assainissement</a>
                            </li>
                            <li>
                                <a href="http://www.cc-parthenay-gatine.fr/ccpg/environnement/travauxdejardinage/Pages/Accueil.aspx">Travaux de jardinage</a>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <a alt="Education et jeunesse" href="#">
                            <img alt="" src="image/icone_menu_4.png" width="30" height="30" />
                            Education et jeunesse</a>
                        <ul id="submenu">
                            <li>
                                <a href="http://www.cc-parthenay-gatine.fr/ccpg/education/rythmes/Pages/Accueil.aspx">Les rythmes scolaires</a>
                            </li>
                            <li>
                                <a href="http://www.cc-parthenay-gatine.fr/ccpg/education/LesAccueilsdeLoisirs/Pages/Accueil.aspx">Les Accueils de Loisirs</a>
                            </li>
                            <li>
                                <a href="http://www.cc-parthenay-gatine.fr/ccpg/education/Lesecoles/Pages/Accueil.aspx">Les écoles</a>
                            </li>
                            <li>
                                <a href="http://www.cc-parthenay-gatine.fr/ccpg/education/Lescantinescommunales/Pages/Accueil.aspx">Les restaurants scolaires</a>
                            </li>
                            <li>
                                <a href="http://www.cc-parthenay-gatine.fr/ccpg/education/AEPS/Pages/Accueil.aspx">Accueils éducatifs périscolaires</a>
                            </li>
                            <li>
                                <a href="http://www.cc-parthenay-gatine.fr/ccpg/education/LesRelaisPetiteenfance/Pages/Accueil.aspx">Les Relais Petite enfance</a>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <a alt="vie pratique" href="#">
                            <img alt="" src="image/icone_menu_5.png" width="30" height="30" />
                            Vie pratique</a>
                        <ul id="submenu">
                            <li>
                                <a href="http://www.cc-parthenay-gatine.fr/ccpg/viepratique/cvq/Pages/Accueil.aspx">CVQ</a>
                            </li>
                            <li>
                                <a href="http://www.cc-parthenay-gatine.fr/ccpg/viepratique/nouvelarrivant/Pages/Accueil.aspx">Nouvel arrivant</a>
                            </li>
                            <li>
                                <a href="http://www.cc-parthenay-gatine.fr/ccpg/communautedecommunes/Pages/accueil.aspx">La communauté de communes</a>
                            </li>
                            <li>
                                <a href="http://www.cc-parthenay-gatine.fr/ccpg/viepratique/associations/Pages/Accueil.aspx">Les associations</a>
                            </li>
                            <li>
                                <a href="http://www.cc-parthenay-gatine.fr/ccpg/viepratique/planningordures/Pages/Accueil.aspx">Planning des collectes</a>
                            </li>
                            <li>
                                <a href="http://www.cc-parthenay-gatine.fr/ccpg/viepratique/mes_demarches_durbanisme/Pages/Accueil.aspx">Mes Démarches d'urbanisme</a>
                            </li>
                            <li>
                                <a href="http://www.cc-parthenay-gatine.fr/ccpg/viepratique/logement/Pages/Accueil.aspx">Logement</a>
                            </li>
                            <li>
                                <a href="http://www.cc-parthenay-gatine.fr/ccpg/SitePages/listeActus.aspx?thm=ALL">Sortir</a>
                            </li>
                            <li>
                                <a href="http://www.cc-parthenay-gatine.fr/ccpg/viepratique/mesdemarches/Pages/Accueil.aspx">Mes Démarches</a>
                            </li>
                            <li>
                                <a href="http://www.cc-parthenay-gatine.fr/ccpg/viepratique/territoirenum%C3%A9rique/Pages/Accueil.aspx">Territoire numérique</a>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <a alt="Structures et équipement" href="#">
                            <img alt="" src="image/icone_menu_7.png" width="30" height="30" />
                            Structures et équipement</a>
                        <ul id="submenu">
                            <li>
                                <a href="http://www.cc-parthenay-gatine.fr/ccpg/structuresetequipements/sportifs/Pages/accueil.aspx">Sportifs</a>
                            </li>
                            <li>
                                <a href="http://www.cc-parthenay-gatine.fr/ccpg/education/LesRelaisPetiteenfance/Pages/Accueil.aspx">Les relais Petite enfance</a>
                            </li>
                            <li>
                                <a href="http://www.cc-parthenay-gatine.fr/ccpg/structuresetequipements/lesespacesnaturels/Pages/accueil.aspx">Les espaces naturels</a>
                            </li>
                            <li>
                                <a href="http://www.cc-parthenay-gatine.fr/ccpg/structuresetequipements/senior/Pages/accueil.aspx">Senior</a>
                            </li>
                            <li>
                                <a href="http://www.cc-parthenay-gatine.fr/ccpg/education/LesAccueilsdeLoisirs/Pages/Accueil.aspx">Accueils de loisirs</a>
                            </li>
                            <li>
                                <a href="http://www.cc-parthenay-gatine.fr/ccpg/structuresetequipements/Tourime%20et%20patrimoine/Pages/accueil.aspx">Tourisme et patrimoine</a>
                            </li>
                            <li>
                                <a href="http://www.cc-parthenay-gatine.fr/ccpg/education/Lesecoles/Pages/Accueil.aspx">Scolaire</a>
                            </li>
                            <li>
                                <a href="http://www.cc-parthenay-gatine.fr/ccpg/structuresetequipements/culturel/Pages/accueil.aspx">Culturel</a>
                            </li>
                            <li>
                                <a href="http://www.cc-parthenay-gatine.fr/ccpg/structuresetequipements/social/Pages/accueil.aspx">Social</a>
                            </li>
                            <li>
                                <a href="http://www.cc-parthenay-gatine.fr/ccpg/structuresetequipements/sallesalouer/Pages/accueil.aspx">Salles à louer</a>
                            </li>
                            <li>
                                <a href="http://www.cc-parthenay-gatine.fr/ccpg/structuresetequipements/epn/Pages/1-accueil.aspx">EPN</a>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <a alt="vie pratique" href="#">
                            <img alt="" src="image/icone_menu_6.png" width="30" height="30" />
                            Economie</a>
                        <ul id="submenu">
                            <li>
                                <a href="http://www.cc-parthenay-gatine.fr/ccpg/economie/developpementeco/Pages/Accueil.aspx">Développement économique</a>
                            </li>
                            <li>
                                <a href="http://www.cc-parthenay-gatine.fr/ccpg/economie/tissueconomique/Pages/Accueil.aspx">Tissu économique</a>
                            </li>
                            <li>
                                <a href="http://www.mdee-parthenaygatine.fr/">L’emploi</a>
                            </li>
                            <li>
                                <a href="http://www.cc-parthenay-gatine.fr/ccpg/economie/lesprojets%C3%A9conomiques/Pages/Accueil.aspx">Les projets économiques</a>
                            </li>
                            <li>
                                <a href="http://www.cc-parthenay-gatine.fr/ccpg/economie/simplanter/Pages/Accueil.aspx">S’implanter</a>
                            </li>
                        </ul>
                    </li>
                </ul>
            </div>
        </div>
    </div>

    <div>
        <!--Div qui contient tout-->
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-3 sidenav">
                    <!--tout ce qui va du coter gauche-->
                </div>

                <div class="col-md-6 text-left first" style="margin-top: 100px;">
                    <div>
                        <!--Lien sur network-->
                        <a href="http://www.cc-parthenay-gatine.fr/ccpg/Pages/accueil.aspx" style="color: black;">Accueil</a>
                        <a href="https://www.facebook.com/cpparthenay" style="float: right;">
                            <img alt="page facebook" src="image/facebook-icon.svg" width="25" height="20" class="position1" /></a>
                        <a href="https://twitter.com/CCParthenay" style="float: right;">
                            <img alt="page Twitter" src="image/imagesS9IL3SIK.jpg" width="25" height="20" class="position1" /></a>
                        <a href="https://www.youtube.com/channel/UCMgSeGsy5Ejs7qynSLqROcg/videos" style="float: right;">
                            <img alt="page Youtube" src="image/unnamed.png" width="25" height="25" class="position1" /></a>
                        <a href="http://www.cc-parthenay-gatine.fr/ccpg/SitePages/Rss.aspx" style="float: right;">
                            <img alt="page Rss" src="image/rss.gif" width="20" height="20" class="position1" /></a>
                    </div>

                    <div class="col-md-8">
                        <div>
                            <div>
                                <div>
                                    <!--A la une-->
                                    <h3 style="color: #297CB4">A la Une</h3>
                                    <div class="container">
                                        <div id="myCarousel" class="carousel slide col-md-4" data-ride="carousel">
                                            <!-- Indicators -->
                                            <ol class="carousel-indicators">
                                                <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                                                <li data-target="#myCarousel" data-slide-to="1"></li>
                                                <li data-target="#myCarousel" data-slide-to="2"></li>
                                                <li data-target="#myCarousel" data-slide-to="3"></li>
                                            </ol>

                                            <!-- Wrapper for slides -->
                                            <div class="carousel-inner">

                                                <div class="item active">
                                                    <img src="image/iopido012.jpg" alt="" style="width: 100%;" />
                                                    <div class="carousel-div">
                                                        <a href="http://www.cc-parthenay-gatine.fr/ccpg/Pages/actu.aspx?idActu=2682" style="color: #FEFEFE">
                                                            <h5>Saison Ah? : "ïOpido"</h5>
                                                        </a>
                                                    </div>
                                                </div>

                                                <div class="item">
                                                    <img src="image/2017-11 - Affiche - Fetes de Noel.png" alt="" style="width: 100%;" />
                                                    <div class="carousel-div">
                                                        <a href="http://www.cc-parthenay-gatine.fr/ccpg/Pages/actu.aspx?idActu=2959" style="color: #FEFEFE">
                                                            <h5>Fête de Noël à Parthenay</h5>
                                                        </a>
                                                    </div>
                                                </div>

                                                <div class="item">
                                                    <img src="image/2017-09 - Affiche Expo Chatelliers.jpg" alt="" style="width: 100%;" />
                                                    <div class="carousel-div">
                                                        <a href="http://www.cc-parthenay-gatine.fr/ccpg/Pages/actu.aspx?idActu=2821" style="color: #FEFEFE">
                                                            <h5>L’abbaye royale des Châtelliers</h5>
                                                        </a>
                                                    </div>
                                                </div>

                                                <div class="item">
                                                    <img src="image/IMG_5768.jpg" alt="" style="width: 100%;" />
                                                    <div class="carousel-div">
                                                        <a href="http://www.cc-parthenay-gatine.fr/ccpg/Pages/actu.aspx?idActu=2426" style="color: #FEFEFE">
                                                            <h5>Rassemblement de voitures de collection</h5>
                                                        </a>
                                                    </div>
                                                </div>

                                            </div>

                                            <!-- Left and right controls -->
                                            <a class="left carousel-control" href="#myCarousel" data-slide="prev">
                                                <span class="glyphicon glyphicon-chevron-left"></span>
                                                <span class="sr-only">Previous</span>
                                            </a>
                                            <a class="right carousel-control" href="#myCarousel" data-slide="next">
                                                <span class="glyphicon glyphicon-chevron-right"></span>
                                                <span class="sr-only">Next</span>
                                            </a>
                                        </div>
                                    </div>

                                </div>
                            </div>
                        </div>
                        <hr />

                        <div>
                            <!--projet-->
                            <h3 style="color: #297CB4">Les projets</h3>
                            <div>
                                <center><a href="http://www.cc-parthenay-gatine.fr/ccpg/Pages/actu.aspx?idActu=2982"><img alt="Acctualité" src="image/Sans titre-1.jpg" width="150" height="150"/></a></center>
                                <div class="projet">
                                    <h4>evaluation des besions de santé de proximité</h4>
                                    <p>votre avis reste important</p>
                                    <a href="http://www.cc-parthenay-gatine.fr/ccpg/Pages/actu.aspx?idActu=2982" style="color: #FEFEFE; background: #0189BA;">Lire la suite >></a>
                                </div>
                            </div>
                            <hr />
                            <div>
                                <center><a href="http://www.cc-parthenay-gatine.fr/ccpg/Pages/actu.aspx?idActu=2879"><img alt="Acctualité" src="image/09012016-DSC_6096-AH-1200px.jpg" width="150" height="150"/></a></center>
                                <div class="projet">
                                    <h4>CVQ: nouveaux services en ligne!</h4>
                                    <p>nouveaux services en ligne: picine et déchèterie</p>
                                    <a href="http://www.cc-parthenay-gatine.fr/ccpg/Pages/actu.aspx?idActu=2879" style="color: #FEFEFE; background: #0189BA;">Lire la suite >></a>
                                </div>
                            </div>
                            <hr />
                            <div>
                                <center><a href="http://www.cc-parthenay-gatine.fr/ccpg/Pages/actu.aspx?idActu=2566"><img alt="Acctualité" src="image/20170608-IMG_3827-1200px-AH.jpg" width="150" height="150"/></a></center>
                                <div class="projet">
                                    <h4>Restauration du Château de Pougne-Hérisson</h4>
                                    <p>Souscription publique - Faites un don !</p>
                                    <a href="http://www.cc-parthenay-gatine.fr/ccpg/Pages/actu.aspx?idActu=2566" style="color: #FEFEFE; background: #0189BA;">Lire la suite >></a>
                                </div>
                            </div>
                        </div>
                        <hr>

                        <div style="padding-top: 100px;">
                            <!--Zoom-->
                            <h3 style="color: #0189BA;">Zoom sur...</h3>
                            <p>rien a mettre en valeur pour le moment...</p>
                        </div>
                        <hr>

                        <div>
                            <!--Photo-->
                            <h3 style="color: #0189BA;">Photos/Vidéo</h3>
                            <div class="container">
                                <div id="myCarousel3" class="carousel slide col-md-4" data-ride="carousel">
                                    <!-- Indicators -->
                                    <ol class="carousel-indicators">
                                        <li data-target="#myCarousel3" data-slide-to="0" class="active"></li>
                                        <li data-target="#myCarousel3" data-slide-to="1"></li>
                                        <li data-target="#myCarousel3" data-slide-to="2"></li>
                                        <li data-target="#myCarousel3" data-slide-to="3"></li>
                                        <li data-target="#myCarousel3" data-slide-to="4"></li>
                                        <li data-target="#myCarousel3" data-slide-to="5"></li>
                                        <li data-target="#myCarousel3" data-slide-to="6"></li>
                                        <li data-target="#myCarousel3" data-slide-to="7"></li>
                                        <li data-target="#myCarousel3" data-slide-to="8"></li>
                                        <li data-target="#myCarousel3" data-slide-to="9"></li>
                                        <li data-target="#myCarousel3" data-slide-to="10"></li>
                                        <li data-target="#myCarousel3" data-slide-to="11"></li>
                                        <li data-target="#myCarousel3" data-slide-to="12"></li>
                                        <li data-target="#myCarousel3" data-slide-to="13"></li>
                                        <li data-target="#myCarousel3" data-slide-to="14"></li>
                                        <li data-target="#myCarousel3" data-slide-to="15"></li>

                                    </ol>

                                    <!-- Wrapper for slides -->
                                    <div class="carousel-inner">
                                        <div class="item active">
                                            <img src="image/13.JPG" alt="" />
                                            <div class="carousel-caption">
                                                <h3>La Prée et la poudrière</h3>
                                            </div>
                                        </div>
                                        <div class="item">
                                            <img src="image/16.jpg" alt="" />
                                            <div class="carousel-caption">
                                                <h3>Nuit romane à Adilly</h3>
                                            </div>
                                        </div>
                                        <div class="item">
                                            <img src="image/5.JPG" alt="" />
                                            <div class="carousel-caption">
                                                <h3>photo thouet vélo.JPG</h3>
                                            </div>
                                        </div>
                                        <div class="item">
                                            <img src="image/10.jpg" alt="" />
                                            <div class="carousel-caption">
                                                <h3>Le Nombril du monde</h3>
                                            </div>
                                        </div>
                                        <div class="item">
                                            <img src="image/11.JPG" alt="" />
                                            <div class="carousel-caption">
                                                <h3>La médiathèque de Pompaire inaugurée en janvier 2013</h3>
                                            </div>
                                        </div>
                                        <div class="item">
                                            <img src="image/8.jpg" alt="" />
                                            <div class="carousel-caption">
                                                <h3>Le logis du Retail</h3>
                                            </div>
                                        </div>
                                        <div class="item">
                                            <img src="image/3.jpg" alt="" />
                                            <div class="carousel-caption">
                                                <h3>La Porte Saint-Jacques de Parthenay</h3>
                                            </div>
                                        </div>
                                        <div class="item">
                                            <img src="image/2.JPG" alt="" />
                                            <div class="carousel-caption">
                                                <h3>Inauguration de l'école Gutenberg de Parthenay</h3>
                                            </div>
                                        </div>
                                        <div class="item">
                                            <img src="image/1.JPG" alt="" />
                                            <div class="carousel-caption">
                                                <h3>Journée de la danse 2013</h3>
                                            </div>
                                        </div>
                                        <div class="item">
                                            <img src="image/6.JPG" alt="" />
                                            <div class="carousel-caption">
                                                <h3>Vaches de la race parthenaise</h3>
                                            </div>
                                        </div>
                                        <div class="item">
                                            <img src="image/9.jpg" alt="" />
                                            <div class="carousel-caption">
                                                <h3>Les Chirons de gâtine</h3>
                                            </div>
                                        </div>
                                        <div class="item">
                                            <img src="image/4.jpg" alt="" />
                                            <div class="carousel-caption">
                                                <h3>Piscine communautaire St Aubin le Cloud</h3>
                                            </div>
                                        </div>
                                        <div class="item">
                                            <img src="image/7.JPG" alt="" />
                                            <div class="carousel-caption">
                                                <h3>Des agnelles sous les pommiers près de Secondigny</h3>
                                            </div>
                                        </div>
                                        <div class="item">
                                            <img src="image/12.JPG" alt="" />
                                            <div class="carousel-caption">
                                                <h3>Petit bassin de la piscine Gâtinéo</h3>
                                            </div>
                                        </div>
                                        <div class="item">
                                            <img src="image/14.JPG" alt="" />
                                            <div class="carousel-caption">
                                                <h3>Le bois d'Allonne</h3>
                                            </div>
                                        </div>
                                        <div class="item">
                                            <img src="image/15.JPG" alt="" />
                                            <div class="carousel-caption">
                                                <h3>Batucada</h3>
                                            </div>
                                        </div>

                                    </div>

                                    <!-- Left and right controls -->
                                    <a class="left carousel-control" href="#myCarousel3" data-slide="prev">
                                        <span class="glyphicon glyphicon-chevron-left"></span>
                                        <span class="sr-only">Previous</span>
                                    </a>
                                    <a class="right carousel-control" href="#myCarousel3" data-slide="next">
                                        <span class="glyphicon glyphicon-chevron-right"></span>
                                        <span class="sr-only">Next</span>
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="col-md-4">
                        <div class="commune">
                            <!--39 Commune-->
                            <h3><a href="http://www.cc-parthenay-gatine.fr/ccpg/Pages/accueil.aspx" style="color: #297CB4">La Communauté de Communes </a></h3>
                            <h3><a href="http://www.cc-parthenay-gatine.fr/ccpg/Pages/accueil.aspx" style="color: #297CB4">de Parthenay-Gatine</a></h3>
                            <div>
                                <h3>Les 39 communes</h3>
                                <a href="2013   Carte de l_intercommunalit_web.png">
                                    <img alt="page Rss" src="image/Carte de lintercommunalit web.png" width="150" height="150"/></a>
                            </div>
                        </div>

                        <div style="display: block; margin-bottom: 10px;">
                            <!--Tableau-->
                            <div class="tab">
                                <button class="tablinks" onclick="openCity(event, 'Aujourdhui')">Aujourd'hui</button>
                                <button class="tablinks" onclick="openCity(event, 'semaine')">Cette semaine</button>
                                <button class="tablinks" onclick="openCity(event, 'Culture')">Culture</button>
                                <button class="tablinks" onclick="openCity(event, 'Sport')">Sport</button>
                                <button class="tablinks" onclick="openCity(event, 'Locale')">Vie Locale</button>
                                <button class="tablinks" onclick="openCity(event, 'Loisir')">Loisir</button>
                                <button class="tablinks" onclick="openCity(event, 'Solidarite')">Solidarite</button>
                                <button class="tablinks" onclick="openCity(event, 'Economie')">Economie</button>
                            </div>

                            <div id="Aujourdhui" class="tabcontent" style="display: none;">
                                <div>
                                    <a href="http://www.cc-parthenay-gatine.fr/ccpg/Pages/actu.aspx?idActu=2939" style="color: black;">
                                        <h5>La laïcité en France aujourd'hui</h5>
                                        Mardi 12 décembre 2017 à 20h30 - Salle des Loges, 28 rue Salvador Allende, Parthenay
                                    </a>
                                </div>
                                <div>
                                    <a href="http://www.cc-parthenay-gatine.fr/ccpg/Pages/actu.aspx?idActu=2981" style="color: black;">
                                        <h5>FLASHAND 4ème edition</h5>
                                        16 décembre - complexe léo lagrange						
                                    </a>
                                </div>
                                <div>
                                    <a href="http://www.cc-parthenay-gatine.fr/ccpg/Pages/actu.aspx?idActu=2898" style="color: black;">
                                        <h5>Expos Photos - Jazz bat la campagne</h5>
                                        14 Novembre 2017 - École de Musique, Bar Le Skipper, Restaurant La Citadelle
                                    </a>
                                </div>
                            </div>
                            <div id="semaine" class="tabcontent" style="display: none;">
                                <div>
                                    <a href="http://www.cc-parthenay-gatine.fr/ccpg/Pages/actu.aspx?idActu=2682" style="color: black;">
                                        <h5>Bien-être au travail</h5>
                                        Jeudi 14 décembre à 20h - Châtillon sur Thouet
                                    </a>
                                </div>
                                <div>
                                    <a href="http://www.cc-parthenay-gatine.fr/ccpg/Pages/actu.aspx?idActu=2682" style="color: black;">
                                        <h5>Saison Ah? : "ïOpido"</h5>
                                        Vendredi 15 décembre 2017 à 21h - Palais des congrès 						
                                    </a>
                                </div>
                                <div>
                                    <a href="http://www.cc-parthenay-gatine.fr/ccpg/Pages/actu.aspx?idActu=2869" style="color: black;">
                                        <h5>Bal d'hiver #7</h5>
                                        Samedi 16 Décembre - Salle du Domaine des Loges à Parthenay
                                    </a>
                                </div>
                            </div>
                            <div id="Culture" class="tabcontent" style="display: none;">
                                <div>
                                    <a href="http://www.cc-parthenay-gatine.fr/ccpg/Pages/actu.aspx?idActu=2682" style="color: black;">
                                        <h5>Saison Ah? : "ïOpido"</h5>
                                        Vendredi 15 décembre 2017 à 21h - Palais des congrès 
                                    </a>
                                </div>
                                <div>
                                    <a href="http://www.cc-parthenay-gatine.fr/ccpg/Pages/actu.aspx?idActu=2869" style="color: black;">
                                        <h5>Bal d'hiver #7</h5>
                                        Samedi 16 Décembre - Salle du Domaine des Loges à Parthenay					
                                    </a>
                                </div>
                                <div>
                                    <a href="http://www.cc-parthenay-gatine.fr/ccpg/Pages/actu.aspx?idActu=2991" style="color: black;">
                                        <h5>Concert de Guitare de l'Ecole de musique </h5>
                                        le 16 décembre - Auditorium de l'école de Musique  
                                    </a>
                                </div>
                            </div>
                            <div id="Sport" class="tabcontent" style="display: none;">
                                <div>
                                    <a href="http://www.cc-parthenay-gatine.fr/ccpg/Pages/actu.aspx?idActu=2856" style="color: black;">
                                        <h5>Stage d'Aïkido organisé par l'Aïkido de la Gâtine</h5>
                                        10h00 - 12h00 / 14h30 - 16h30 - dojo Léo Lagrange à Parthenay 
                                    </a>
                                </div>
                                <div>
                                    <a href="http://www.cc-parthenay-gatine.fr/ccpg/Pages/actu.aspx?idActu=2925" style="color: black;">
                                        <h5>Arbre de Noël du P2B79</h5>
                                        Samedi 17 décembre à 10H - Complexe sportif Léo Lagrange : 6 rue Ernest Pérochon 79200 Parthenay			
                                    </a>
                                </div>
                                <div>
                                    <a href="http://www.cc-parthenay-gatine.fr/ccpg/Pages/actu.aspx?idActu=2938" style="color: black;">
                                        <h5>STAGE AÏKIDO</h5>
                                        DIMANCHE 17 DECEMBRE 2017 - PARTHENAY SALLE LEO LAGRANGE
                                    </a>
                                </div>
                            </div>
                            <div id="Locale" class="tabcontent" style="display: none;">
                                <div>
                                    <a href="http://www.cc-parthenay-gatine.fr/ccpg/Pages/actu.aspx?idActu=2939" style="color: black;">
                                        <h5>La laïcité en France aujourd'hui</h5>
                                        Mardi 12 décembre 2017 à 20h30 - Salle des Loges, 28 rue Salvador Allende, Parthenay
                                    </a>
                                </div>
                                <div>
                                    <a href="http://www.cc-parthenay-gatine.fr/ccpg/Pages/actu.aspx?idActu=2354" style="color: black;">
                                        <h5>CHANGEMENT FREQUENCE COLLECTE ORDURES MENAGERES</h5>
                                        24/04/2017- 9h00 - Commune de Gourgé
                                    </a>
                                </div>
                                <div>
                                    <a href="http://www.cc-parthenay-gatine.fr/ccpg/Pages/actu.aspx?idActu=1999" style="color: black;">
                                        <h5>Réveillon Saint-Sylvestre</h5>
                                        Samedi 31 décembre à 20h - Domaine des Loges à Parthenay 
                                    </a>
                                </div>
                            </div>
                            <div id="Loisir" class="tabcontent" style="display: none;">
                                <div>
                                    <a href="http://www.cc-parthenay-gatine.fr/ccpg/Pages/actu.aspx?idActu=2945" style="color: black;">
                                        <h5>Cinépitchoun</h5>
                                        Dimanche 17 décembre à 10h45 - Cinéma Le Foyer
                                    </a>
                                </div>
                                <div>
                                    <a href="http://www.cc-parthenay-gatine.fr/ccpg/Pages/actu.aspx?idActu=2988" style="color: black;">
                                        <h5>CONFÉRENCE de l'U.I.A. de PARTHENAY et du  PAYS de GÂTINE</h5>
                                        mardi 19 novembre 2017 à 14 h 15 précises - Campus des Métiers, rue d'Abrantes à PARTHENAY
                                    </a>
                                </div>
                                <div>
                                    <a href="http://www.cc-parthenay-gatine.fr/ccpg/Pages/actu.aspx?idActu=1992" style="color: black;">
                                        <h5>Les randonnées en Deux Sèvres</h5>
                                        .  - dans tout le département
                                    </a>
                                </div>
                            </div>
                            <div id="Solidarite" class="tabcontent" style="display: none;">
                                <div>
                                    <a href="http://www.cc-parthenay-gatine.fr/ccpg/Pages/actu.aspx?idActu=2956" style="color: black;">
                                        <h5>Bien-être au travail</h5>
                                        Jeudi 14 décembre à 20h - Châtillon sur Thouet
                                    </a>
                                </div>
                                <div>
                                    <a href="http://www.cc-parthenay-gatine.fr/ccpg/Pages/actu.aspx?idActu=2566" style="color: black;">
                                        <h5>Restauration du Château de Pougne-Hérisson</h5>
                                        Campagne en cours - Pougne-Hérisson
                                    </a>
                                </div>
                            </div>
                            <div id="Economie" class="tabcontent" style="display: none;">
                                <div>
                                    <a href="http://www.cc-parthenay-gatine.fr/ccpg/Pages/actu.aspx?idActu=2905" style="color: black;">
                                        <h5>A chaque semaine, sa visite d'entreprise</h5>
                                        Décembre 2017 - Parthenay et Gätine
                                    </a>
                                </div>
                            </div>
                        </div>


                        <div>
                            <!--En un clic-->
                            <div class="w3-container w3-blue">
                                <h4>En un clic</h4>
                            </div>
                            <div class="clic">
                                <div>
                                    <div>
                                        <a href="/ccpg/viepratique/mesdemarches/Pages/Accueil.aspx" class=" w3-text-black ">Mes démarches</a>
                                    </div>
                                    <div>
                                        <a href="/ccpg/communautedecommunes/Pages/Annuaire-des-services.aspx" class=" w3-text-black ">Annuaire des services</a>
                                    </div>
                                    <div>
                                        <a href="/ccpg/viepratique/cvq/Pages/La-Carte-de-Vie-Quotidienne.aspx" class=" w3-text-black ">La CVQ</a>
                                    </div>
                                    <div>
                                        <a href="/ccpg/viepratique/associations/Pages/annuaire.aspx" class=" w3-text-black ">Les associations</a>
                                    </div>
                                    <div>
                                        <a href="/ccpg/environnement/collectedesdechets/Pages/Accueil.aspx" class=" w3-text-black ">Collecte des déchets</a>
                                    </div>
                                    <div>
                                        <a href="/ccpg/economie/marchespublics/Pages/Accueil.aspx" class=" w3-text-black ">Les marchés publics</a>
                                    </div>
                                    <div>
                                        <a href="http://mail.cc-parthenay-gatine.fr" class=" w3-text-black ">Messagerie</a>
                                    </div>
                                    <div>
                                        <a href="/ccpg/communautedecommunes/Pages/Les-comptes-rendus-de-scéances-communautaires.aspx" class=" w3-text-black ">Comptes-rendus de séances communautaires</a>
                                    </div>
                                    <div>
                                        <a href="http://covoiturage.poitou-charentes.fr/" class=" w3-text-black ">Covoiturage</a>
                                    </div>
                                    <div>
                                        <a href="/ccpg/structuresetequipements/sportifs/Pages/Les-plannings-des-installations-sportives-.aspx" class=" w3-text-black ">Les Plannings des installations sportives</a>
                                    </div>
                                    <div>
                                        <a href="http://mediatheque.cc-parthenay-gatine.fr" class=" w3-text-black">Portail des médiathèques</a>
                                    </div>
                                    <div>
                                        <a href="/ccpg/_layouts/PropositionConvention.aspx" class=" w3-text-black ">Demande de convention</a>
                                    </div>
                                    <div>
                                        <a href="http://www.cc-parthenay-gatine.fr/ccpg/_layouts/cartearretes.aspx" class=" w3-text-black ">Carte des arrêtés</a>
                                    </div>
                                </div>
                            </div>
                        </div>


                        <div>
                            <!--Le Kiosque-->
                            <div>
                                <h3 class="w3-container w3-blue">Kiosque</h3>
                            </div>
                            <div class="w3-container">
                                <div id="myCarousel2" class="carousel slide col-md-2" data-ride="carousel" style="height: auto; width: auto;">
                                    <!-- Indicators -->
                                    <ol class="carousel-indicators">
                                        <li data-target="#myCarousel2" data-slide-to="0" class="active"></li>
                                        <li data-target="#myCarousel2" data-slide-to="1"></li>
                                        <li data-target="#myCarousel2" data-slide-to="2"></li>
                                        <li data-target="#myCarousel2" data-slide-to="3"></li>
                                        <li data-target="#myCarousel2" data-slide-to="4"></li>
                                    </ol>
                                    <!-- Wrapper for slides -->
                                    <div class="carousel-inner ">
                                        <div class="item active">
                                            <img src="image/Parthenay-mag-atine-2016-05.png" alt="" style="width: 100%;" />
                                            <div class="carousel-caption">
                                                <a href="http://fr.calameo.com/read/00309938763cfcab6292c">
                                                    <!--<h3>N°3 - Juin 2016</h3>-->
                                                </a>
                                            </div>
                                        </div>
                                        <div class="item">
                                            <img src="image/Parthenay mag'âtine.jpg" alt="" style="width: 100%;" />
                                            <div class="carousel-caption">
                                                <a href="http://fr.calameo.com/read/0030993871a055d0f794b">
                                                    <!--<h3>N°2 - Septembre 2015</h3>-->
                                                </a>
                                            </div>
                                        </div>
                                        <div class="item">
                                            <img src="image/2013-12 - Lettre intercommunale n°1.JPG" alt="" style="width: 100%;" />
                                            <div class="carousel-caption">
                                                <a href="http://fr.calameo.com/read/003099387f5709dc34a10">
                                                    <!--<h3>N°0 - Décembre 2013</h3>-->
                                                </a>
                                            </div>
                                        </div>
                                        <div class="item">
                                            <img src="image/couv.jpg" alt="" style="width: 100%;" />
                                            <div class="carousel-caption">
                                                <a href="https://fr.calameo.com/read/000930568a1807ca63c01">
                                                    <!--<h3>Les Rendez-vous Parthenay-Gâtine</h3>-->
                                                </a>
                                            </div>
                                        </div>
                                        <div class="item">
                                            <img src="image/2015 - Journal communautaire - Parthenay-Gatine-1.jpg" alt="" style="width: 100%;" />
                                            <div class="carousel-caption">
                                                <a href="http://fr.calameo.com/read/0030993873b30fec7de65">
                                                    <!--<h3>N° 1 - Avril 2015</h3>-->
                                                </a>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- Left and right controls -->
                                    <a class="left carousel-control" href="#myCarousel2" data-slide="prev">
                                        <span class="glyphicon glyphicon-chevron-left"></span>
                                        <span class="sr-only">Previous</span>
                                    </a>
                                    <a class="right carousel-control" href="#myCarousel2" data-slide="next">
                                        <span class="glyphicon glyphicon-chevron-right"></span>
                                        <span class="sr-only">Next</span>
                                    </a>
                                </div>
                            </div>
                        </div>


                        <div>
                            <!--carte-->
                            <div>
                                <!--carte-->
                                <h3 class="w3-container w3-blue">Carte Interactive</h3>
                            </div>
                            <div>
                                <!--carte-->
                                <a href="http://www.cc-parthenay-gatine.fr/ccpg/_layouts/carte.aspx">
                                    <img alt="Acctualité" src="image/Parthenay.PNG" style="width: 180px; height: 180px;" /></a>
                            </div>
                        </div>
                    </div>

                    <hr>
                </div>

                <div class="col-md-3">
                    <!--contient tout ce qui doit ce metttre du coté droit-->

                </div>
                <div>
                    <footer class="container-fluid col-md-12" style="background: black;">
                        <center><table>
								<tr>
									<td style="width:300px; height:100px;padding-top: 100px;">
										<img alt="Acctualité" src="image/photo_pp.png" width="180" height="155"/>
									</td>		
									<td style="width:300px; height:100px;padding-top: 100px;color:white;">
										<h4>Nous Contacter</h4>
										<center><p>Communauté de communes</p><p>de Parthenay-Gâtine</p>
										<p>CS 80192 - 79205 PARTHENAY Cedex</p>
										<p>79200 PARTHENAY</p></center>
										<a href="http://www.cc-parthenay-gatine.fr/ccpg/_layouts/contact.aspx?IsDlg=1" style="color:white;"><h4>Courriel</h4></a>
										<center><p>05-49-94-03-77</p></center>
									</td>	
									<td style="width:300px; height:100px;padding-top: 100px;">
										<a href="http://www.cc-parthenay-gatine.fr/ccpg/Pages/actu.aspx?thm=ALL" style="color:white;"><h4>actualité</h4></a>
										<a href="http://www.cc-parthenay-gatine.fr/ccpg/_layouts/carte.aspx" style="color:white;"><h4>plan interactif</h4></a>
										<a href="http://www.cc-parthenay-gatine.fr/actualites/newsletter/Pages/Accueil.aspx" style="color:white;"><h4>Nzwsletter</h4></a>
										<a href="http://www.cc-parthenay-gatine.fr/ccpg/Pages/accueil.aspx" style="color:white;"><h4>mentions légales</h4></a>
									</td>			
									<td style="width:300px; height:100px;padding-top: 100px;color:white;">	
										<a href="http://www.villes-internet.net/ville/?tx_icscommunity_pi1[table]=tx_icscommunity_group&tx_icscommunity_pi1[group]=302"><img alt="Acctualité" src="image/villeinternet.png" width="60" height="40"/></a>
										<a href="http://www.vpah-poitou-charentes.org/"><img alt="Acctualité" src="image/VPAH.png" width="40" height="60"/></a>
										<a href="http://www.cc-parthenay-gatine.fr/ccpg/Pages/accueil.aspx" style="color:white;">accessibilite</a>
									</td>
								</tr>
							</table></center>
                    </footer>
                </div>
            </div>
        </div>
    </div>
    <div>
        <a href="#" class="fleche">
            <img src="image/remonter.png" onclick="scrollLent();" style="float: right; margin-right: 20px;" /></a>
    </div>
</body>
</html>