<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
   xmlns:xs="http://www.w3.org/2001/XMLSchema"
   exclude-result-prefixes="xs"
   version="2.0">
   <xsl:template match="/">
      <html lang="en">
         <head>
            <meta charset="UTF-8"/>
            <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
            <link rel="stylesheet" href="assets/css/styles.css"/>
            <link rel="icon" href="assets/img/omar.jpeg" type="image/jpg"/>
            
            <title>
               <xsl:value-of select="cv/entete/prenom"/>
               <xsl:text> </xsl:text> <!-- Ajout d'un espace -->
               <xsl:value-of select="cv/entete/nom"/>
            </title>
            
         
            <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/boxicons@latest/css/boxicons.min.css"/>
         </head>
         <body>
            
            
            <main class="l-main bd-container">
              
               <div class="resume" id="area-cv">
                  <div class="resume__left">
                    
                     <section class="home" id="home">
                        <div class="home_containter section bd-grid">
                           <div class="home_data bd-grid">
                              <img src="assets/img/omar.jpeg" alt="" class="home_img center"/>
                              <h1 class="home_title">
                                 <xsl:value-of select="concat(cv/entete/prenom, ' ', cv/entete/nom)"/>
                              </h1>
                              <h3 class="home_profession">
                                 <xsl:value-of select="cv/entete/profile"/>
                              </h3>
                             
                           </div>
                           <div class="home_address bd-grid">
                              <span class="home_information">
                                 <i class="bx bx-calendar"></i>
                                 <xsl:value-of select="cv/entete/dateDeNaisssance"/>
                                 
                              </span>
                              
                              <span class="home_information">
                                 <i class="bx bx-map"> </i>
                                 <xsl:value-of select="cv/entete/nationalite"/>
                              
                              </span>
                              <span class="home_information">
                                 <i class="bx bx-envelope">  </i>
                                 <xsl:value-of select="cv/entete/mail"/>
                              </span>
                              <span class="home_information">
                                 <i class="bx bx-phone">  </i>
                                 <xsl:value-of select="cv/entete/telephone"/>
                              </span>
                            
                           </div>
                        </div>
                        
                      
                     </section>  
                    
                     <section class="social section">
                        <h2 class="section-title">SOCIAL</h2>
                        <div class="social_container bd-grid">
                           <a href="https://www.linkedin.com/in/omar-abarra-0a7b73228/" target="_blank" class="social_link">
                              <i class="bx bxl-linkedin-square social_icon"></i> <xsl:value-of select="cv/entete/linkedin"/>
                           </a>
                           <a href="https://github.com/Omarab2022" target="_blank" class="social_link">
                              <i class="bx bxl-github social_icon"></i> <xsl:value-of select="cv/entete/github"/>
                           </a>
                        </div>
                     </section>
                     
                     
                     <section class="profile section" id="profile">
                        <h2 class="section-title">Profile</h2>
                        <p class="profile_description">
                           <xsl:value-of select="cv/entete/bio"/>
                        </p>
                     </section>
                     
                   
                     <section class="education section" id="education">
                        <h2 class="section-title">Education</h2>
                        <div class="education_container bd-grid">
                           <xsl:for-each select="cv/Formations/diplome">
                              <div class="education_content">
                                 <div class="education_time">
                                    <span class="education_rounder"></span>
                                    <span class="education_line"></span>
                                 </div>
                                 <div class="education_data bd-grid">
                                    <h3 class="education_title">
                                       <xsl:value-of select="intitule"/>
                                    </h3>
                                    <span class="education_date">
                                       <xsl:value-of select="annee"/>
                                    </span>
                                 </div>
                              </div>
                           </xsl:for-each>
                        </div>
                     </section>
                     
                 
                     <section class="skills section" id="skills">
                        <h2 class="section-title">COMPETENCES</h2>
                        <div class="skills_content bd-grid">
                           <ul class="skills_data">
                              <xsl:for-each select="cv/competences/competence">
                                 <li class="skills_name">
                                    <span class="skills_circle"></span>
                                    <xsl:value-of select="titre_competence"/> <br></br>  <xsl:value-of select="description_competence"/>
                                 </li>
                              </xsl:for-each>
                           </ul>
                        </div>
                     </section>
                  </div>
                  
                  <div class="resume__right">
                     <section class="experience section" id="experience">
                        <h2 class="section-title">Experience</h2>
                        <div class="experience_container bd-grid">
                           <xsl:for-each select="cv/stages/stage">
                              <div class="experience_content">
                                 <div class="experience_time">
                                    <span class="experience_rounder"></span>
                                    <span class="experience_line"></span>
                                 </div>
                                 <div class="experience_data bd-grid">
                                    <h3 class="experience_title">
                                       <xsl:value-of select="titre"/>
                                    </h3>
                                    <span class="experience_company">
                                       <xsl:value-of select="date"/>
                                       <xsl:text> | </xsl:text>
                                       <xsl:value-of select="entreprise"/> 
                                    </span>
                                    <p class="experience_description width">
                                       <xsl:value-of select="description"/>
                                    </p>
                                 </div>
                              </div>
                           </xsl:for-each>
                        </div>
                     </section>
                     
            
                     <section class="projects section" id="projects">
                        <h2 class="section-title">Projects</h2>
                        <div class="projects_container bd-grid">
                           <xsl:for-each select="cv/projets/projet">
                              <div class="project_content">
                                 <div class="project_data bd-grid">
                                    <h3 class="project_title">
                                       <xsl:value-of select="titre_projet"/>
                                    </h3>
                                    <span class="project_date">
                                       <xsl:value-of select="date_projet"/>
                                    </span>
                                    <p class="project_description ">
                                       <xsl:value-of select="description_projet"/>
                                    </p>
                                    <a href="{lien_projet}" class="button">Voir project</a>
                                 </div>
                              </div>
                           </xsl:for-each>
                        </div>
                     </section>
                     
               
                     <section class="certificate section" id="certificate">
                        <h2 class="section-title">Certificates</h2>
                        <div class="certificate_container bd-grid">
                           <xsl:for-each select="cv/certificates/certificate">
                              <div class="certificate_content">
                                 <h3 class="certificate_title">
                                    <xsl:value-of select="titre_certificate"/>
                                 </h3>
                                 <span class="certificate_date">
                                    <xsl:value-of select="date_certificate"/>
                                 </span>
                                 <p class="certificate_description">
                                    <xsl:value-of select="description"/>
                                 </p>
                              </div>
                           </xsl:for-each>
                        </div>
                     </section>
                     
                  
                     
           
                     <section class="languages section">
                        <h2 class="section-title">Languages</h2>
                        <div class="languages_container">
                           <ul class="languages_content bd-grid">
                              <xsl:for-each select="cv/langues/langue">
                                 <li class="languages_name">
                                    <span class="languages_circle"></span>
                                    <xsl:value-of select="intitule_langue"/> - <xsl:value-of select="niveau"/>
                                 </li>
                              </xsl:for-each>
                           </ul>
                        </div>
                     </section>
          
                     <section class="interests section">
                        <h2 class="section-title">LOISIR</h2>
                        <div class="interests_container bd-grid">
                           <xsl:for-each select="cv/loisirs/loisir">
                              <div class="interests_content">
                                 <i class='bx bx-game interests_icon'></i>
                                 
                                 
                                 <span class="interests_name">
                                    <xsl:value-of select="."/>
                                 </span>
                              </div>
                           </xsl:for-each>
                        </div>
                     </section>
                  </div>
               </div>
            </main>
      
            <script src="assets/js/html2pdf.bundle.min.js"></script>
         
            <script src="assets/js/main.js"></script>
         </body>
      </html>
   </xsl:template>
</xsl:stylesheet>
