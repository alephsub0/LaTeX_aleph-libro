%%
%% This is file `aleph-libro.cls',
%% generated with the docstrip utility.
%%
%% The original source files were:
%%
%% aleph-libro.dtx  (with options: `aleph-libro')
%% 
%% This is a generated file.
%% LaTeX class for typesetting books
%% 
%% Copyright (C) 2019 by Andres Merino <mat.andresmerino@gmail.com>
%% 
%% Para un mejor uso y entendimiento de la actual clase,
%% consultar la documentación.
%% 
\NeedsTeXFormat{LaTeX2e}[2009/09/24]
\ProvidesClass{aleph-libro}[2020/08/15 v1.1]
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% --- Inicializaci\'on
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%  Primero definimos una serie de comandos auxiliares para las opciones
\newcommand\@series{Series}
\newcommand\@serie{Serie}
\newcommand\@idioma{spanish,es-nolists}
\newcommand\@tipo{}
\newcommand\@numobs{}
\newcommand\@notasm{}
\newcommand\@npblanco{}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% --- Opciones
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%  Opciones de tama\~no de letra.
\DeclareOption{10pt}{\PassOptionsToClass{10pt}{book}}
\DeclareOption{11pt}{\PassOptionsToClass{11pt}{book}}
\DeclareOption{12pt}{\PassOptionsToClass{12pt}{book}}
%%  Opciones predeterminadas de tama\~no de p\'agina |compacto| y |amplio|.
\DeclareOption{amplio}{
    \PassOptionsToPackage{paperwidth=195mm,paperheight=265mm,twoside,
    inner=2.2cm,outer=2.5cm,top=2.25cm,bottom=2.25cm}{geometry}}
\DeclareOption{compacto}{
    \PassOptionsToPackage{paperwidth=160mm,paperheight=240mm,twoside,
    inner=2.2cm,outer=1.7cm,top=2.25cm,bottom=2.25cm}{geometry}}
\DeclareOption{a4}{
    \PassOptionsToPackage{paperwidth=210mm,paperheight=297mm,twoside,
    inner=2.2cm,outer=2.2cm,top=2.25cm,bottom=2.25cm}{geometry}}
\DeclareOption{a5}{
    \PassOptionsToPackage{paperwidth=148mm,paperheight=210mm,twoside,
    inner=1.7cm,outer=1.7cm,top=2.25cm,bottom=2.25cm}{geometry}}
%%  Opci\'on |notasm| genera el margen adecuado para colocar notas al margen
\DeclareOption{notasm}{
    \PassOptionsToPackage{outer=50mm,
    marginparwidth=4.4cm,marginparsep=0.3cm}{geometry}}
%%  La opci\'on |numobs| coloca n\'umero en las observaciones.
\DeclareOption{numobs}{\renewcommand\@numobs{true}}
%%  Opci\'on de formato |fclasico| o |fnuevo|.
\DeclareOption{fclasico}{\renewcommand\@tipo{fclasico}}
\DeclareOption{fnuevo}{\renewcommand\@tipo{fnuevo}}
%%  Opci\'on de formato |npblanco|.
\DeclareOption{npblanco}{\renewcommand\@npblanco{true}}
%%  Opciones predeterminadas son |compacto|, |fclasico| y |10pt|.
\ExecuteOptions{compacto,fclasico,10pt}
\ProcessOptions\relax
\LoadClass{book}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% --- Paquetes
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%  Son necesarios los siguientes paquetes para dar formato al documento.
\RequirePackage[utf8]{inputenc}
\RequirePackage[T1]{fontenc}
\RequirePackage[\@idioma]{babel}
\RequirePackage{ifthen}
\RequirePackage{calc}
\RequirePackage{etex}
\RequirePackage{xcolor}
\RequirePackage{pstricks}
\RequirePackage{pst-barcode}
\RequirePackage{amsmath,amsthm}
\RequirePackage{mathpazo}
\RequirePackage{graphicx}
\RequirePackage{titlesec}
\RequirePackage{setspace}
\RequirePackage{fancyhdr}
\RequirePackage{textcase}
\RequirePackage{nextpage}
\RequirePackage{marginnote}
\RequirePackage{titletoc}
\RequirePackage{xparse}
\RequirePackage{mdframed}
\RequirePackage[many]{tcolorbox}
\RequirePackage{fontawesome}
\RequirePackage[font={small},labelfont={bf,small},
   justification=centerlast]{caption}
\RequirePackage{float}
\RequirePackage{geometry}
\RequirePackage[colorlinks,linkcolor=black,urlcolor=black,
   citecolor=black,bookmarks=true]{hyperref}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% --- Variables internas
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%  La siguiente es la lista de las variables internas utilizadas para el formato.
\newcommand\@interlineado{1.2}
\newcommand\@espteo{-0.58ex}
\newcommand\@subtitulo{}
\newcommand\@fasciculo{}
\newcommand\@sepsubtitulo{:}
\newcommand\@logouno{}
\newcommand\@logodos{}
\newcommand\@logotres{}
\newcommand\@logofondo{}
\newcommand\@editor{}
\newcommand\@revision{}
\newcommand\@asisedicion{}
\newcommand\@asistente{}
\newcommand\@publicado{}
\newcommand\@impresion{}
\newcommand\@derechos{}
\newcommand\@nota{}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% --- Colores predeterminados
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%  Los siguientes son los colores predefinidos de la clase.
\definecolor{colorportada}{cmyk}{0.81,0.62,0.00,0.22}
\definecolor{colordef}{cmyk}{0.81,0.62,0.00,0.22}
\definecolor{colortext}{cmyk}{0.81,0.62,0.00,0.22}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% --- Medidas internas
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%   Las siguientes son medidas internas que se utiliza para el formato.
\newlength{\longtitulo}
\newlength{\longsubtitulo}
\newlength{\longfasciculo}
\AtBeginDocument{
   \settowidth{\longtitulo}{\LARGE\sc \@titulo}
   \settowidth{\longsubtitulo}{\LARGE \sc \@subtitulo}
   \settowidth{\longfasciculo}{\Large \@fasciculo}
   \setlength{\unitlength}{
      \minof{\maxof{\maxof{\longfasciculo}{\longsubtitulo}}
      {\longtitulo}}{0.98\textwidth}}}
%%  Para mejorar la medida entre las ecuaciones.
\AtBeginDocument{
   \addtolength{\abovedisplayskip}{-0.5mm}
   \addtolength{\belowdisplayskip}{-0.5mm}
   \frontmatter}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% --- Definici\'on de comandos de datos
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%  Autor: autor corto, autor normal
\newcommand{\autor}[2][]{\ifthenelse{\equal{#1}{}}
   {\newcommand\@autorcorto{#2}\newcommand\@autor{#2}}
   {\newcommand\@autorcorto{#1}\newcommand\@autor{#2}}}
%% T\'itulo del libro.
\newcommand{\titulo}[1]{\newcommand\@titulo{#1}}
%%  Subt\'itulo del libro, opcional.
\newcommand{\subtitulo}[2][]{\ifthenelse{\not\equal{#1}{}}
{\renewcommand\@sepsubtitulo{#1}}{}\renewcommand\@subtitulo{#2}}
%%  Fasc\'iculo del libro, opcional
\newcommand{\fasciculo}[1]{\renewcommand\@fasciculo{#1}}
%%  Nombre de la serie, singular y plural
\newcommand{\serie}[2]{\renewcommand\@serie{#2}
\renewcommand\@series{#1}}
%%  N\'umero del libro en la serie
\newcommand{\numero}[1]{\newcommand\@numero{#1}}
%%  Logos: 2 y 3 opcionales, con longuitud de portada y portadilla
\newcommand{\logouno}[3]{\renewcommand\@logouno{#1}
\newcommand\@lplogouno{#2}
    \newcommand\@lclogouno{#3}}
\newcommand{\logodos}[3]{\renewcommand\@logodos{#1}
\newcommand\@lplogodos{#2}
    \newcommand\@lclogodos{#3}}
\newcommand{\logotres}[3]{\renewcommand\@logotres{#1}
\newcommand\@lplogotres{#2}
    \newcommand\@lclogotres{#3}}
%%  Logos de fondo
\newcommand{\logofondo}[2][1.05\paperwidth]{\renewcommand\@logofondo{#2}
    \newcommand\@llogofondo{#1}}
%%  Idioma
\newcommand{\idioma}[1]{\renewcommand\@idioma{#1}}
%%  Editor, opcional
\newcommand{\editor}[1]{\renewcommand\@editor{#1}}
%%  Asistente de edici\'on, opcional
\newcommand{\asisedicion}[1]{\renewcommand\@asisedicion{#1}}
%%  Revisi\'on acad\'emica, opcional
\newcommand{\revision}[1]{\renewcommand\@revision{#1}}
%%  Asistente, opcional
\newcommand{\asistente}[1]{\renewcommand\@asistente{#1}}
%%  Registro autoral
\newcommand{\registroautoral}[1]{\newcommand\@regautoral{#1}}
%%  ISBN
\newcommand{\ISBN}[1]{\newcommand\@ISBN{#1}}
%%  Publicado por
\newcommand{\publicado}[1]{\renewcommand\@publicado{#1}}
%%  Fecha de publicaci\'on
\newcommand{\fechapub}[1]{\newcommand\@fechapub{#1}}
%%  N\'umero de edici\'on y fecha
\newcommand{\edicion}[2]{\newcommand\@edicion{#1}
\newcommand\@fechaedicion{#2}}
%%  N\'umero de impresi\'on y fecha opcional correcciones
\newcommand{\impresion}[3][]{\renewcommand\@impresion{#2}
\newcommand\@fechaimpresion{#3}\newcommand\@correcciones{#1}}
%%  Derechos
\newcommand{\derechos}[1]{\renewcommand\@derechos{#1}}
%%  Nota
\newcommand{\nota}[1]{\renewcommand\@nota{#1}}
%%  Interlineado
\newcommand{\interlineado}[1]{\renewcommand\@interlineado{#1}}
%%  Espacio para recuadro de teoremas
\newcommand{\espteo}[1]{\renewcommand\@espteo{#1}}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% --- Portada
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%  Altura de la caja de t\'itulo
\newcommand\@ytitulo{0.55\paperheight}
\newcommand{\ytitulo}[1]{\renewcommand{\@ytitulo}{#1}}
%%  Longuitud de la caja de t\'itulo
\newcommand\@ltitulo{0.7\paperwidth}
\newcommand{\ltitulo}[1]{\renewcommand{\@ltitulo}{#1}}
%%  Esquina cuadro blanco
\newcommand\@ecuadroblanco{.24\paperwidth}
\newcommand{\ecuadroblanco}[1]{\renewcommand{\@ecuadroblanco}{#1}}
%%  Posici\'on de logos
\newcommand\@xlogouno{}
\newcommand{\xlogouno}[1]{\renewcommand{\@xlogouno}{#1}}
\newcommand\@xlogodos{}
\newcommand{\xlogodos}[1]{\renewcommand{\@xlogodos}{#1}}
\newcommand\@xlogotres{}
\newcommand{\xlogotres}[1]{\renewcommand{\@xlogotres}{#1}}
%%  Comando de portada
\newcommand{\portada}{
    \pagenumbering{alph}
    \newgeometry{left=0cm,right=0cm,top=0cm,bottom=0cm}
    \thispagestyle{empty}
    \begingroup\clearpage\noindent
\begin{pspicture}(0,0)(0.99\paperwidth,\paperheight)%
%%  Imagen de fondo
    \ifthenelse{\equal{\@logofondo}{}}{}{
    \begin{psclip}{\psframe(-1mm,.294\paperheight)
    (1.01\paperheight,.721\paperheight)}
    \rput(0.5\paperwidth,.495\paperheight)
        {\includegraphics[width=\@llogofondo]{\@logofondo}}
    \end{psclip}}
%%  T\'itulo
    \rput(0.5\paperwidth,\@ytitulo)
    {\psshadowbox[framearc=0.25,linecolor=colorportada,
        shadowcolor=colorportada!50,framesep=0.5cm]
        {\begin{minipage}{\@ltitulo}\begin{spacing}{1.2}
        \ifthenelse{\equal{\@fasciculo}{}}
        {
        \ifthenelse{\equal{\@subtitulo}{}}
            {\Huge\centering \textbf{\textsc{\@titulo}}}
            {\Huge\centering \textbf{\textsc{\@titulo\\[2mm]
            \huge \@subtitulo}}}
        }
        {
        \ifthenelse{\equal{\@subtitulo}{}}
            {\Huge\centering \textbf{\textsc{\@titulo\\ \LARGE \@fasciculo}}}
            {\Huge\centering \textbf{\textsc{\@titulo\\ \huge \@subtitulo \\
                \LARGE \@fasciculo}}}
        }
        \end{spacing}\vspace{-\baselineskip}\end{minipage}
        }
    }
%%  Logos
    \ifthenelse{\equal{\@logodos}{}}
    {
    \rput(0.5\paperwidth,.13\paperheight)
        {\includegraphics[width=\@lplogouno]{\@logouno}}
    }
    {
    \ifthenelse{\equal{\@logotres}{}}
    {
        \ifthenelse{\equal{\@xlogodos}{}}{
            \renewcommand{\@xlogouno}{.333\paperwidth}
            \renewcommand{\@xlogodos}{.666\paperwidth}}
            {}
    \rput(\@xlogouno,.13\paperheight)
        {\includegraphics[width=\@lplogouno]{\@logouno}}
    \rput(\@xlogodos,.13\paperheight)
        {\includegraphics[width=\@lplogodos]{\@logodos}}
    }
    {
        \ifthenelse{\equal{\@xlogotres}{}}{
            \renewcommand{\@xlogouno}{.25\paperwidth}
            \renewcommand{\@xlogodos}{.5\paperwidth}
            \renewcommand{\@xlogotres}{.75\paperwidth}
            }{}
    \rput(\@xlogouno,.13\paperheight)
        {\includegraphics[width=\@lplogouno]{\@logouno}}
    \rput(\@xlogodos,.13\paperheight)
        {\includegraphics[width=\@lplogodos]{\@logodos}}
    \rput(\@xlogotres,.13\paperheight)
        {\includegraphics[width=\@lplogotres]{\@logotres}}
    }
    }
%%  Linea autor
    \psframe*[linecolor=colorportada](-.1,.245\paperheight)
        (1.01\paperwidth,.295\paperheight)
        \uput{5mm}[l](.99\paperwidth,.27\paperheight)
        {\LARGE\color{white} \textbf{\@autor}}
%%  Linea numero
    \psframe*[linecolor=colorportada](-.1,.72\paperheight)
        (1.01\paperwidth,.77\paperheight)
        \uput{5mm}[l](.99\paperwidth,.745\paperheight)
        {\huge\color{white} \textbf{\@numero}}
%%  Recuadro superior
    \psframe[linestyle=none,fillstyle=hlines,hatchcolor=colorportada!50]
        (-.1,.77\paperheight)(1.01\paperwidth,1.01\paperheight)
%%  Recuadro blanco superior
    \psframe[linestyle=none,fillstyle=solid,fillcolor=white,framearc=0.25]
        (\@ecuadroblanco,.83\paperheight)(1.01\paperwidth,.93\paperheight)
        \uput{5mm}[l](.99\paperwidth,.88\paperheight){\begin{minipage}{16cm}
            \raggedleft \LARGE \textbf{\@series}
            \end{minipage}}%
\end{pspicture}
\endgroup
\restoregeometry
\ifthenelse{\equal{\@npblanco}{true}}{}
    {\cleartooddpage[\thispagestyle{empty}\vspace*{\fill}
    \textcolor{gray!50}{Esta p\'agina ha sido dejada intencionalmente en blanco.}
    \par\vspace*{\fill}]}
}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% --- Portadilla
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%  Este comando genera la portadilla y la hoja de cr\'editos.
\newcommand{\portadilla}{
    \newgeometry{left=3cm,right=3cm,top=3cm,bottom=3cm}
    \begin{spacing}{1.0}
    \thispagestyle{empty}
    \setcounter{page}{1}
    \pagenumbering{roman}
\begingroup
    \centering
%%  Serie
\begin{spacing}{1.3}
        \Large\scshape \@series
    \end{spacing}
%%  Autor
    \vspace{0.21\textheight}
        {\large\scshape \@autorcorto}\\[0.4\baselineskip]
%%  Titulo entre lineas
        \rule{\unitlength}{1.6pt}\\[-\baselineskip]\vspace{3pt}
        \rule{\unitlength}{0.4pt}\\[0.5\baselineskip]
        \begin{spacing}{1}
        \ifthenelse{\equal{\@fasciculo}{}}
        {
        \ifthenelse{\equal{\@subtitulo}{}}
            {\LARGE \textsc{\@titulo}}
            {{\LARGE \textsc{\@titulo}}\\[\baselineskip]
            {\Large\scshape \@subtitulo}}
        }
        {
        \ifthenelse{\equal{\@subtitulo}{}}
            {\LARGE \textsc{\@titulo}\\[\baselineskip]{\large\@fasciculo}}
            {{\LARGE \textsc{\@titulo}}\\[\baselineskip]
            {\scshape \Large\@subtitulo}\\[\baselineskip]{\large\@fasciculo}}
        }
        \end{spacing}
        \vspace*{-0.5\baselineskip}
        \rule{\unitlength}{0.4pt}\\[-\baselineskip]\vspace{4.5pt}
        \rule{\unitlength}{1.6pt}
%%  Logos
\par\vfill
\ifthenelse{\equal{\@logodos}{}}
{
        \includegraphics[width=\@lclogouno]{\@logouno}
    }
    {
    \ifthenelse{\equal{\@logotres}{}}
    {
        \raisebox{-0.5\height}{\includegraphics[width=\@lclogouno]
            {\@logouno}}\hspace{0.16\textwidth}
        \raisebox{-0.5\height}{\includegraphics[width=\@lclogodos]
            {\@logodos}}
    }
    {
        \raisebox{-0.5\height}{\includegraphics[width=\@lclogouno]
            {\@logouno}}\hspace{0.08\textwidth}
        \raisebox{-0.5\height}{\includegraphics[width=\@lclogodos]
            {\@logodos}}\hspace{0.08\textwidth}
        \raisebox{-0.5\height}{\includegraphics[width=\@lclogotres]
            {\@logotres}}
    }
    }
    \par\vspace*{0.001\textheight}
%%  P\'agina de cr\'editos
\newpage
\thispagestyle{empty}
\raggedright
%%  Serie, t\'itulo y autor
    \vspace*{\baselineskip}
    {\large\textbf{\@serie\ No. \@numero}}\\[0.6\baselineskip]
    {\scshape
    \ifthenelse{\equal{\@fasciculo}{}}
    {
    \ifthenelse{\equal{\@subtitulo}{}}
        {\@titulo\\[0.2\baselineskip]}
        {\@titulo\@sepsubtitulo\ \@subtitulo}
        \\[0.6\baselineskip]
    }
    {
    \ifthenelse{\equal{\@subtitulo}{}}
        {\@titulo\\[0.2\baselineskip] \@fasciculo}
        {\@titulo\@sepsubtitulo\ \@subtitulo\\[0.2\baselineskip]\@fasciculo}
        \\[0.6\baselineskip]
    }}
    {\@autor}\par
    \small\vspace*{4\baselineskip}
%%  Cr\'editos
    \ifthenelse{\equal{\@asistente}{}}{}
        {\textbf{Asistentes}: \@asistente \\[1mm]}
    \ifthenelse{\equal{\@editor}{}}{}
        {\textbf{Responsable de la Edici\'on}: \@editor \\[1mm]}
    \ifthenelse{\equal{\@asisedicion}{}}{}
        {\textbf{Asistente de Edici\'on}: \@asisedicion \\[1mm]}
    \ifthenelse{\equal{\@revision}{}}{}
        {\textbf{Revisi\'on Acad\'emica}: \@revision \\[1mm]}
    \vspace*{4\baselineskip}
%%  Registro e ISBN
    Registro de derecho autoral No. \@regautoral\\[1mm]
    ISBN: \@ISBN\par
    \vspace*{4\baselineskip}
%%  Publicado por
    \ifthenelse{\equal{\@publicado}{}}{}
    {Publicado \@publicado\par
\vspace*{4\baselineskip}}
%%  Edici\'on e impresi\'on
\@edicion\ edici\'on: \@fechaedicion\\[1mm]
\ifthenelse{\equal{\@impresion}{}}{}
{
    \ifthenelse{\equal{\@correcciones}{}}
        {\@impresion\ impresi\'on: \@fechaimpresion}
        {\@impresion\ impresi\'on (con correcciones): \@fechaimpresion}\par
    }
    \vspace*{4\baselineskip}
%%  Derechos
\copyright\ \@derechos\ \@fechapub
%%  Nota
\ifthenelse{\equal{\@nota}{}}{}
    {\par\vspace*{4\baselineskip}\@nota}
\endgroup
    \end{spacing}
    \restoregeometry
    \cleartooddpage[\thispagestyle{empty}]
}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% --- Contraportada
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%  Altura de la caja de t\'itulo
\newcommand\@ytexto{0.55\paperheight}
\newcommand{\ytexto}[1]{\renewcommand{\@ytexto}{#1}}
%%  Medidas
\newlength{\xqr}
\newlength{\xisbn}
\setlength{\xqr}{0.33\paperwidth-0.45in}
\setlength{\xisbn}{0.66\paperwidth-0.75in}
%%  Este comando genera la contraportada.
\newcommand{\contraportada}[3]{
\ifthenelse{\equal{\@npblanco}{true}}{}
    {\cleartooddpage[\thispagestyle{empty}\vspace*{\fill}
    \textcolor{gray!50}{Esta p\'agina ha sido dejada intencionalmente en blanco.}
    \par\vspace*{\fill}]}
    \newgeometry{left=0cm,right=0cm,top=0cm,bottom=0cm}
    \thispagestyle{empty}
\begingroup
    \clearpage
    \noindent
    \begin{pspicture}(0,0)(\paperwidth,\paperheight)
\rput(0.5\paperwidth,\@ytexto)
    {
        \begin{minipage}{.75\paperwidth}\begin{spacing}{1.2}
        \slshape #3
        \end{spacing}\vspace{-\baselineskip}\end{minipage}
    }
%%  C\'odigo QR e ISBN
\rput(\xqr,.09\paperheight){\psbarcode{#2}
        {width=1 height=1}{qrcode}}
\rput(\xisbn,.09\paperheight){\psbarcode{\@ISBN}
        {includetext guardwhitespace}{isbn}}
%%  Linea 1
    \psframe*[linecolor=colorportada](-.1,.245\paperheight)
        (1.01\paperwidth,.295\paperheight)
\rput(.5\paperwidth,.27\paperheight){\LARGE\color{white} \textbf{#1}}
%%  Linea t\'itulo
\psframe*[linecolor=colorportada](-.1,.72\paperheight)
        (1.01\paperwidth,.77\paperheight)
\rput(.5\paperwidth,.745\paperheight){\huge\color{white} \textbf{\@titulo}}
    \end{pspicture}
\endgroup
\restoregeometry
}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% --- Tabla de contenidos
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%  Este comando genera la tabla de contenidos.
\newcommand{\tabladecontenidos}{
    \newgeometry{left=2.5cm,right=2.5cm,top=2.5cm,bottom=2.5cm}
   \tableofcontents
   \restoregeometry
   \cleartooddpage[\thispagestyle{empty}]
   }
%%  Adem\'as se definen los estilos. Estilo de texto del cap\'itulo
\titlecontents{chapter}[1.6cm]
    {\addvspace{2pt}\color{colortext}\Large\bfseries\scshape}
    {\contentslabel[\large Cap. \thecontentslabel]{1.6cm}}
    {}
    {\normalsize\hfill\thecontentspage}
%%  Estilo de texto del secci\'on
\titlecontents{section}[1.6cm]
    {\addvspace{3pt}}
    {\contentslabel[\thecontentslabel]{0.8cm}}
    {}
    {\ \titlerule*[.5pc]{.}\;\; \thecontentspage}
    []
%%  Estilo de texto del subsecci\'on
\titlecontents{subsection}[2.5cm]
    {\addvspace{1pt}\small}
    {\contentslabel[\thecontentslabel]{0.9cm}}
    {}
    {\ \titlerule*[.51pc]{.}\;\;\thecontentspage}
    []
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% --- Dedicatoria
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%  Este ambiente genera la dedicatoria.
\newenvironment{dedicatoria}[1][\ ]
   {\thispagestyle{empty}
   \vspace*{8\baselineskip}
   \begin{flushright}
   \textbf{\MakeUppercase{#1}}\\[1\baselineskip]
   \begingroup\itshape
   }
   {\endgroup\end{flushright}
   \cleartooddpage[\thispagestyle{empty}]
   }
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% --- Notas al margen
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%  Este ambiente genera notas al margen.
\mdfdefinestyle{margen}{
   hidealllines=true,
   innertopmargin=.2\baselineskip,innerbottommargin=-.5\baselineskip,
   innerleftmargin=0.5em,innerrightmargin=0.5em,
   roundcorner=2,backgroundcolor=\mdf@@color}
\DeclareDocumentCommand{\almargen}{ O{0pt} O{colordef!05} m}
    {\marginnote{
    \begin{mdframed}[style=margen,color=#2]
    \begin{spacing}{1.2}\footnotesize
        #3
    \end{spacing}
    \end{mdframed}
    }[#1]}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% --- Estilo p\'agina
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%  Interlineado
\renewcommand{\baselinestretch}{\@interlineado}
%%  Encabezado y pie de p\'agina
\pagestyle{fancy}
\renewcommand{\chaptermark}[1]{%
\markboth{#1}{}}
\renewcommand{\sectionmark}[1]{%
\markright{\thesection\ #1}}
\fancyhf{}
\fancyhead[LE,RO]{\bfseries\thepage}
\fancyhead[LO]{\bfseries\nouppercase{\rightmark}}
\fancyhead[RE]{\bfseries\nouppercase{\leftmark}}
\renewcommand{\headrulewidth}{.2pt}
\renewcommand{\footrulewidth}{0pt}
\addtolength{\headheight}{.1pt}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% --- Estilo t\'itulos
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%  Estilo de cap\'itulo
\titleformat{\chapter}[display]
    {\vspace{-2cm}\bfseries\scshape\centering}
    {\huge\chaptertitlename\ \ \thechapter}{1ex}
    {\color{colortext}\LARGE\titlerule\vspace{1ex}}
    [\color{colortext}\vspace{1ex}\titlerule]
%%  Estilo secciones
    \titleformat{\section}
    {\color{colortext}\normalfont\Large\bfseries\scshape}{\thesection}{1em}{}
    \titleformat{\subsection}
    {\color{colortext}\normalfont\large\bfseries}{\thesubsection}{1em}{}
    \titleformat{\subsubsection}
    {\color{colortext}\normalfont\normalsize\bfseries}{\thesubsubsection}{1em}{}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% --- Estilo teoremas
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%  Keys temporales: |tipo|,|color|, |contador| e |ic\'ono|.
\def\tcb@@tipo{}
    \tcbset{ tipo/.code = {\def\tcb@@tipo{#1} } }
\def\tcb@@contador{}
    \tcbset{ contador/.code = {\def\tcb@@contador{#1} } }
\def\tcb@@color{colordef}
    \tcbset{ color/.code = {\def\tcb@@color{#1} } }
\def\tcb@@icono{{\large\faWarning}}
    \tcbset{ icono/.code = {\def\tcb@@icono{#1} } }
%%  Estilo de teorema cl\'asico
\newtheoremstyle{estiloteorema}%
    {9pt}{9pt}{}{0pt}{\bfseries\scshape}{.}{ }{}
%%  Estilo de teorema nuevo
\newtheoremstyle{estiloteoreman}%
    {9pt}{9pt}{}{0pt}{\bfseries\sffamily\color{\tcb@@color}}{}{ }{\thmname{#1}\thmnumber{ #2}.\thmnote{ --#3--}}
%%  Formatos del estilo cl\'asico
%%
%%  Recuadro sin t\'itulo aparte
\tcbset{ recuadrost/.style ={
    before skip=10pt,arc=0mm,breakable,enhanced,
    colback=\tcb@@color!5,colframe=\tcb@@color,
    boxrule=0pt,leftrule=2pt,
    top=0.5mm,bottom=0.5mm,left=2mm,right=2mm,
    fontupper=\normalsize,
    parbox=false
    }
    }
%%  Escritura del t\'itulo
\newcommand\tbc@escrituratitulo[1][]{%
    \strut{%
        \bfseries\scshape\tcb@@tipo~\thechapter.\arabic{\tcb@@contador}%
            \ifthenelse{\equal{#1}{}}{}{:\upshape~#1}%
        }
    }
%%  Dibujo del t\'itulo a la izquierda
\newcommand\tbc@dibujotituloizq[1][]{%
    % Creaci\'on del nombre para medirlo
    \node[xshift=13pt,yshift=\@espteo,thick,anchor=west](titulo) at (frame.north west)%
        {\tbc@escrituratitulo[#1]};
    % Sombra del recuadro
    \path[fill=\tcb@@color!60!black]
        ([yshift=-1.75ex,xshift=-0.1ex]titulo.north west)
        arc[start angle=0,end angle=180,radius=0.9ex]
        ([yshift=-1.75ex,xshift=0.1ex]titulo.north east)
        arc[start angle=180,end angle=0,radius=0.9ex];
    % Recuadro
    \path[fill=\tcb@@color!20]
        % Linea superior
        ([xshift=-0.9ex,yshift=-0.85ex]titulo.north west)
        -- ([xshift=0.9ex,yshift=-0.85ex]titulo.north east)
        % Linea inferior
        [rounded corners=0.7ex]  --  ([xshift=0.4ex,yshift=-0.95ex]titulo.north east)--
        ([yshift=0.6ex]titulo.south east) -- ([yshift=0.6ex]titulo.south west)
        % Ciclo
        --  ([xshift=-0.4ex,yshift=-0.95ex]titulo.north west)
        [sharp corners] -- cycle;
    % Escritura del nombre
    \node[xshift=13pt,yshift=-0.8ex,thick,anchor=west] at (frame.north west)%
        {\tbc@escrituratitulo[#1]};
    }
%%  Recuadro con t\'itulo aparte a la izquierda
\tcbset{ recuadroctizq/.style ={
    % Opciones generales
    before skip=10pt,arc=0mm,breakable,enhanced,
    colback=\tcb@@color!5,colframe=\tcb@@color,
    boxrule=0pt,leftrule=2pt,
    top=4mm,bottom=0.5mm,left=2mm,right=2mm,
    topsep at break=-4mm,
    fontupper=\normalsize,
    code={\refstepcounter{\tcb@@contador}},
    parbox=false,
    % Dibujo del t\'itulo
    overlay unbroken and first = {\tbc@dibujotituloizq[#1]}
    }
    }
%%  Dibujo del t\'itulo a la derecha
\newcommand\tbc@dibujotituloder[1][]{%
    % Creaci\'on del nombre para medirlo
    \node[xshift=-13pt,yshift=\@espteo,thick,anchor=east](titulo) at (frame.north east)%
        {\tbc@escrituratitulo[#1]};
    % Sombra del recuadro
    \path[fill=\tcb@@color!60!black]
        ([yshift=-1.75ex,xshift=-0.1ex]titulo.north west)
        arc[start angle=0,end angle=180,radius=0.9ex]
        ([yshift=-1.75ex,xshift=0.1ex]titulo.north east)
        arc[start angle=180,end angle=0,radius=0.9ex];
    % Recuadro
    \path[fill=\tcb@@color!20]
        % Linea superior
        ([xshift=-0.9ex,yshift=-0.85ex]titulo.north west)
        -- ([xshift=0.9ex,yshift=-0.85ex]titulo.north east)
        % Linea inferior
        [rounded corners=0.7ex]  --  ([xshift=0.4ex,yshift=-0.95ex]titulo.north east)--
        ([yshift=0.6ex]titulo.south east) -- ([yshift=0.6ex]titulo.south west)--
        % Ciclo
        ([xshift=-0.4ex,yshift=-0.95ex]titulo.north west)
        [sharp corners] -- cycle;
    % Escritura del nombre
    \node[xshift=-13pt,yshift=-0.8ex,thick,anchor=east] at (frame.north east)%
        {\tbc@escrituratitulo[#1]};
    }
%%  Recuadro con t\'itulo aparte a la derecha
\tcbset{ recuadroctder/.style ={
    % Opciones generales
    before skip=10pt,arc=0mm,breakable,enhanced,
    colback=\tcb@@color!5,colframe=\tcb@@color,
    boxrule=0pt,leftrule=2pt,
    top=4mm,bottom=0.5mm,left=2mm,right=2mm,
    topsep at break=-4mm,
    fontupper=\normalsize,
    code={\refstepcounter{\tcb@@contador}},
    parbox=false,
    % Dibujo del t\'itulo
    overlay unbroken and first= {\tbc@dibujotituloder[#1]}
    }
    }
%%  Estilo de post-it
\tcbset{ postit/.style ={
    % -> Opciones generales
    breakable,enhanced,
    before skip=2mm,after skip=3mm,
    colback=\tcb@@color!50,colframe=\tcb@@color!20!black,
    boxrule=0.4pt,
    drop fuzzy shadow,
    left=6mm,right=2mm,top=0.5mm,bottom=0.5mm,
    sharp corners,rounded corners=southeast,arc is angular,arc=3mm,
    parbox=false,
    underlay unbroken and last = {%
        \path[fill=tcbcolback!80!black]
        ([yshift=3mm]interior.south east) --++ (-0.4,-0.1) --++ (0.1,-0.2);
        \path[draw=tcbcolframe,shorten <=-0.05mm,shorten >=-0.05mm]
        ([yshift=3mm]interior.south east) --++ (-0.4,-0.1) --++ (0.1,-0.2);
        \path[fill=\tcb@@color!50!black,draw=none]
        (interior.south west) rectangle node[white]{\tcb@@icono} ([xshift=5.5mm]interior.north west);
        },
    underlay = {%
        \path[fill=\tcb@@color!50!black,draw=none]
        (interior.south west) rectangle node[white]{\tcb@@icono} ([xshift=5.5mm]interior.north west);
        }
    }
    }
%%  Formatos del estilo nuevo
%%
%%  Recuadro con t\'itulo aparte interno
\tcbset{ recuadroctint/.style ={
    % -> Opciones generales
    before skip=10pt,arc=0mm,breakable,enhanced,
    colback=gray!5,colframe=gray!5,colbacktitle=gray!5,
    boxrule=0pt,toprule=0.4pt,
    drop fuzzy shadow,
    top=0.5mm,bottom=0.5mm,left=2mm,right=2mm,
    fontupper=\normalsize,
    code={\refstepcounter{\tcb@@contador}},
    parbox=false,
    % Dibujo del t\'itulo
    overlay unbroken and first = {
        % Borde superior grueso
        \draw[\tcb@@color,line width =2.5cm]
            ([xshift=1.25cm, yshift=0cm]frame.north west)--+(0pt,3pt);
        },
    overlay middle and last = { },
    title={
            \bfseries\sffamily\color{\tcb@@color}
                \tcb@@tipo~\thechapter.\arabic{\tcb@@contador}%
                \ifthenelse{\equal{#1}{}}{}{:~~--#1--}%
        },
    }
    }
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% --- Definici\'on de ambientes de teoremas
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% --- Teoremas en el formato cl\'asico
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\ifthenelse{\equal{\@tipo}{fclasico}}
{
%%  Ambientes sin recuadro: |ejem| y |obs|
\theoremstyle{estiloteorema}
    \newtheorem{ejem}{Ejemplo}[chapter]
    \ifthenelse{\equal{\@numobs}{true}}
        {\newtheorem{obs}{Observaci\'on}[chapter]}
        {\newtheorem*{obs}{Observaci\'on}}
%%  Ambientes con recuadrost: |prop|, |cor|, |lem|, |ejer|.
    \newtheorem{prop}{Proposici\'on}[chapter]
        \tcolorboxenvironment{prop}{color=colordef,recuadrost}
    \newtheorem{cor}[prop]{Corolario}
        \tcolorboxenvironment{cor}{color=colordef,recuadrost}
    \newtheorem{lem}[prop]{Lema}
        \tcolorboxenvironment{lem}{color=colordef,recuadrost}
    \newtheorem{ejer}{Ejercicio}[chapter]
        \tcolorboxenvironment{ejer}{color=colordef,recuadrost}
%%  Ambientes con t\'itulo aparte: |teo|.
\newtcolorbox{teo}[1][]
    {tipo=Teorema,contador=prop,color=colordef,recuadroctizq={#1}}
%%  Ambientes con t\'itulo aparte: |defi|.
\newcounter{defi}[chapter]
\renewcommand{\thedefi}{\thechapter.\arabic{defi}}
\newtcolorbox{defi}[1][]
    {tipo=Definici\'on,contador=defi,color=colordef,recuadroctizq={#1}}
%%  Ambientes con t\'itulo aparte: |axioma|.
\newcounter{axioma}[chapter]
\renewcommand{\theaxioma}{\thechapter.\arabic{axioma}}
\newtcolorbox{axioma}[1][]
    {tipo=Axioma,contador=axioma,color=colordef,recuadroctizq={#1}}
%%  Ambientes advertencia: |advertencia|.
\newtcolorbox{advertencia}
    {color=yellow,postit}
}
{
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% --- Teoremas en el formato nuevo
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%  Ambientes sin recuadro: |ejem| y |obs|
\theoremstyle{estiloteoreman}
    \newtheorem{ejem}{Ejemplo}[chapter]
    \ifthenelse{\equal{\@numobs}{true}}
        {\newtheorem{obs}{\tikz \fill[colordef] (1ex,1ex) circle (3.5pt); Observaci\'on}[chapter]}
        {\newtheorem*{obs}{\tikz \fill[colordef] (1ex,1ex) circle (3.5pt); Observaci\'on}}
%%  Ambientes con recuadrost: |prop|, |cor|, |lem|, |ejer|.
    \newtheorem{prop}{Proposici\'on}[chapter]
        \tcolorboxenvironment{prop}{%
            color=colordef,recuadrost,colback=gray!5,drop fuzzy shadow
        }
    \newtheorem{cor}[prop]{Corolario}
        \tcolorboxenvironment{cor}{%
            color=colordef,recuadrost,colback=gray!5,drop fuzzy shadow
        }
    \newtheorem{lem}[prop]{Lema}
        \tcolorboxenvironment{lem}{%
            color=colordef,recuadrost,colback=gray!5,drop fuzzy shadow
        }
    \newtheorem{ejer}{Ejercicio}[chapter]
        \tcolorboxenvironment{ejer}{%
            color=colordef,recuadrost,colback=gray!5,drop fuzzy shadow
        }
%%  Ambientes con t\'itulo aparte: |teo|.
\newtcolorbox{teo}[1][]
    {tipo=Teorema,contador=prop,color=colordef,recuadroctint={#1}}
%%  Ambientes con t\'itulo aparte: |defi|.
\newcounter{defi}[chapter]
\renewcommand{\thedefi}{\thechapter.\arabic{defi}}
\newtcolorbox{defi}[1][]
    {tipo=Definici\'on,contador=defi,color=colordef,recuadroctint={#1}}
%%  Ambientes con t\'itulo aparte: |axioma|.
\newcounter{axioma}[chapter]
\renewcommand{\theaxioma}{\thechapter.\arabic{axioma}}
\newtcolorbox{axioma}[1][]
    {tipo=Axioma,contador=axioma,color=colordef,recuadroctint={#1}}
%%  Ambientes advertencia: |advertencia|.
\newtcolorbox{advertencia}
    {color=yellow,postit}
}
%%  Y ¡se acab\'o!
\endinput
%%
%% End of file `aleph-libro.cls'.
