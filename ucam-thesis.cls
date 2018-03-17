% -------------------------------------------------------------------
%  @LaTeX-class-file{
%     filename        = "ucam-thesis.cls",
%     version         = "0.1",
%     date            = "1 March 2017",
%     codetable       = "ISO/ASCII",
%     keywords        = "LaTeX, ucam-thesis",
%     supported       = "send email to youssef.hbali@gmail.com",
%     docstring       = "A thesis class for a CADI AYYAD thesis dissertation based on the memoir class."
%  }
% --------------------------------------------------------------------


%%%---%%%---%%%---%%%---%%%---%%%---%%%---%%%---%%%---%%%---%%%---%%%---%%%---%%%---%%%---%%%---%%%---%%%---%%%---%%%---%%%---%%%---%%%---%%%---%%%---%%%

\ProvidesClass{ucam-thesis}[2017/03/01 v0.1 CADI AYYAD University Thesis Class]
\LoadClass[10pt,a4paper,oldfontcommands]{memoir}

%%% =========================================================
%%%     							P A C K A G E S
%%% =========================================================
%\RequirePackage[frenchb]{babel}
\usepackage[utf8]{inputenc}
%\usepackage[bibencoding=utf8,hyperref=true,backref=true,backend=bibtex,bibstyle=numeric,citestyle=authoryear]{biblatex}
\usepackage[bibencoding=utf8,hyperref=true,backref=true,sorting=nty,defernumbers=true,backend=bibtex,style=authoryear]{biblatex}

\DeclareCiteCommand{\cite}[\mkbibbrackets]
{\usebibmacro{prenote}}
{\usebibmacro{citeindex}%
	\printtext[bibhyperref]{\usebibmacro{cite}}}
{\multicitedelim}
{\usebibmacro{postnote}}

\DeclareCiteCommand{\parencite}[\mkbibbrackets]
{\usebibmacro{prenote}}
{\usebibmacro{citeindex}%
	\textcolor{dark-red}{\usebibmacro{cite}}}
{\multicitedelim}
{\usebibmacro{postnote}}


\newcounter{mymaxcitenames}
\AtBeginDocument{%
	\setcounter{mymaxcitenames}{\value{maxnames}}%
}

\makeatletter
\renewbibmacro*{begentry}{%
	\begingroup
	\undef\cbx@lasthash
	\undef\cbx@lastyear
	\defcounter{maxnames}{\value{mymaxcitenames}}%
	\parencite{\thefield{entrykey}}%
	\endgroup
	\addspace
}
\makeatother
\renewcommand*{\nameyeardelim}{\addcomma\space}


\usepackage[T1]{fontenc}
% Police MathPazo
\RequirePackage[osf,sc]{mathpazo}
\RequirePackage[scaled=.95]{helvet}
\RequirePackage{courier}
% Police Palatino
\RequirePackage{palatino}

\RequirePackage{ifpdf}
\usepackage{microtype}
\usepackage{xcolor}
\usepackage{geometry}
\usepackage{setspace}
\usepackage{lettrine}
\let\footruleskip\undefined
\usepackage{fancyhdr}
\usepackage{subfig}
\usepackage{titletoc}
\renewcommand{\sc}{\textsc}  % Required to avoid warning message
%%% -----------------------------------------------------------------
%%%              E N D    P A C K A G E S
%%% -----------------------------------------------------------------


%%%---%%%---%%%---%%%---%%%---%%%---%%%---%%%---%%%---%%%---%%%---%%%---%%%---%%%---%%%---%%%---%%%---%%%---%%%---%%%---%%%---%%%---%%%---%%%---%%%---%%%


%%% =================================================================================================
%%%                                 L A Y O U T    O F   T H E     P D F  
%%% =================================================================================================
\geometry{top=3cm, bottom=3cm, outer=2.5cm, inner=2.5cm, headsep=10pt,footskip=2.0cm,headsep=1.5cm}
\OnehalfSpacing
\pagenumbering{roman}
%\linespread{1.3}
%%% -------------------------------------------------------------------------------------------------
%%%                                 L A Y O U T    O F   T H E     P D F  
%%% -------------------------------------------------------------------------------------------------



%%%---%%%---%%%---%%%---%%%---%%%---%%%---%%%---%%%---%%%---%%%---%%%---%%%---%%%---%%%---%%%---%%%---%%%---%%%---%%%---%%%---%%%---%%%---%%%---%%%---%%%



%%%=======================================================================================
%%%     												O U T P U T    M A N A G E M E N T
%%%=======================================================================================
\ifpdf
  \RequirePackage[pdftex]{graphicx}
  \RequirePackage[export]{adjustbox}
  \RequirePackage[pdftex,bookmarksopen=false,
                                pdftitle={Reconnaissance d'activités humaines et détection de visages pour des systèmes de surveillance intélligents.},
                                pdfsubject={Computer Science [cs]/Networking and Internet Architecture [cs.NI], Computer Science [cs]/Computer Vision and Pattern Recognition [cs.CV]},
                                pdfkeywords={Artificial intelligence, Computer vision, Human action recognition, Face detection, Deep learning.},
                                pdfauthor={Youssef Hbali},
                                colorlinks=false,
                                plainpages=false]{hyperref} 
  \DeclareGraphicsExtensions{.pdf,.png,.jpg}
  \hypersetup{colorlinks,citecolor=blue,linkcolor=dark-blue,linktoc=all}
\else  
  \RequirePackage[dvips]{graphicx}
  \DeclareGraphicsExtensions{.eps,.ps}
   \RequirePackage[dvips,bookmarksopen=false,
                                pdftitle={Reconnaissance d'activités humaines et détection de visages pour des systèmes de surveillance intélligents.},
                                pdfsubject={Computer Science [cs]/Networking and Internet Architecture [cs.NI], Computer Science [cs]/Computer Vision and Pattern Recognition [cs.CV]},
                                pdfkeywords={Artificial intelligence, Computer vision, Human action recognition, Face detection, Deep learning.},
                                pdfauthor={Youssef Hbali},
                                colorlinks=false,
                                plainpages=false]{hyperref} 
  \hypersetup{colorlinks,citecolor=blue,linkcolor=dark-blue,linktoc=all}
\fi
%%%---------------------------------------------------------------------------------------
%%%     										E N D   	O U T P U T    M A N A G E M E N T
%%%---------------------------------------------------------------------------------------




%%%---%%%---%%%---%%%---%%%---%%%---%%%---%%%---%%%---%%%---%%%---%%%---%%%---%%%---%%%---%%%---%%%---%%%---%%%---%%%---%%%---%%%---%%%---%%%---%%%---%%%



%%% =================================================================
%%%    				C O L O R S    D E F I N T I O N S
%%% =================================================================
\definecolor{Crimson}{rgb}{0.6471, 0.1098, 0.1882}
\definecolor{nicered}{rgb}{.647,.129,.149}
\definecolor{dark-red}{rgb}{.5,0,0}
\definecolor{dark-blue}{rgb}{0,0,.5}

%%% -----------------------------------------------------------------
%%%    				E N D   C O L O R S   D E F I N T I O N S
%%% -----------------------------------------------------------------



%%%---%%%---%%%---%%%---%%%---%%%---%%%---%%%---%%%---%%%---%%%---%%%---%%%---%%%---%%%---%%%---%%%---%%%---%%%---%%%---%%%---%%%---%%%---%%%---%%%---%%%



%%% =================================================================
%%%        		C O M M A N D S   D E F I N I T I O N S
%%% =================================================================
\def\titleEn#1{\def\titleEn{#1}}
\def\degreeyear#1{\def\degreeyear{#1}}
\def\degreemonth#1{\def\degreemonth{#1}}
\def\degree#1{\def\degree{#1}}
\def\advisor#1{\def\advisor{#1}}
\def\department#1{\def\department{#1}}
\def\field#1{\def\field{#1}}
\def\ced#1{\def\ced{#1}}
\def\university#1{\def\university{#1}}
\def\universitycity#1{\def\universitycity{#1}}
\def\universitystate#1{\def\universitystate{#1}}
\def\dissertationdate#1{\def\dissertationdate{#1}}
\def\jury#1{\def\jury{#1}}

%% --------------------------------
%%   TITLE COMMAND.
%% --------------------------------
\renewcommand{\maketitle}{
   \includegraphics[width=0.2\textwidth,height=0.15\textheight,right]{Logo/Logo.eps}\\	
        \thispagestyle{empty}
	\vspace{10pt} 
	\begin{center}	
	  
	  \HUGE\textsc{\university} \\
	  \huge\textsc{\department} \\
	  \Large\textsc{Centre d’études doctorales : \ced} \\
    	  \vspace{10pt}	  
	  \Huge\textsc{Thèse} \\ \vspace{10pt} 		
		 \Large
		 Présentée en vu d’obtenir le grade de \degree, \\
		 \Large \scshape{Spécialité : \field} \\
		  \Large Par :\\
		 \Large\scshape{\theauthor} \\
		 \vspace{30pt} 
		 \Large \textcolor{Crimson}{\bfseries\scshape \thetitle} \\ \vspace{20pt}	         
	   \vspace{30pt}
	   \large \textbf{Thèse soutenue le \dissertationdate \space devant le jury composé de :}\\
	   \end{center}	   
	   \vspace{30pt}
	   \large 
           \jury	
	   \vspace*{\fill}
	}
	
	

%% ----------------------------------------------
%%%      C O P Y   R I G H T  C O M M A N D
%% ----------------------------------------------
\newcommand{\copyrightpage}{
	\newpage \thispagestyle{empty} \vspace*{\fill}
	\noindent \copyright~\textit{\degreeyear \hspace{3pt}~- \theauthor} \\
	%\noindent All rights reserved.
	\noindent Tous droits réservés
	\vspace*{\fill} 
}



%%% ------------------------------------------------------------------------------------------
%%%     A B S T R A C T   P A G E  F R E N C H   C O M M A N D
%%% ------------------------------------------------------------------------------------------
\newcommand{\abstractpageFR}{

	\chapter*{Résumé}
	\addcontentsline{toc}{chapter}{Résumé}%
	\paragraph*{\Large Titre:} \Large \textcolor{nicered}  {\bfseries\scshape \thetitle}
	\paragraph*{}
	\input{frontmatter/resume}
	\paragraph*{Mots-clés:}
	\input{frontmatter/mots-cles}

	
}


%%% ------------------------------------------------------------------------------------------
%%%    A B S T R A C T   P A G E     E N G L I S H    C O M M A N D
%%% ------------------------------------------------------------------------------------------
\newcommand{\abstractpage}{
	
	\chapter*{Abstract}
	\addcontentsline{toc}{chapter}{Abstract}%
	\paragraph*{\Large Title:} \Large \textcolor{nicered}  {\bfseries\scshape \titleEn}
	\paragraph*{}
	\input{frontmatter/abstract}
	\paragraph*{Keywords:}
	\input{frontmatter/keywords}

	
}


%%% -----------------------------------------------------------------------------
%%%     A C R O N Y M S    P A G E    C O M M A N D
%%% -----------------------------------------------------------------------------
\newcommand{\Acronyms}{
	
	\chapter*{Acronymes}
	\addcontentsline{toc}{chapter}{Acronymes}%
	\input{frontmatter/acronyms}
    \pagestyle{ucam-page-style}
	
}





%%% -----------------------------------------------------------------------------
%%%    D E D I C A T I O N  C O M M A N D
%%% -----------------------------------------------------------------------------
\newcommand{\dedicationpage}{
	\newpage
	\thispagestyle{empty} \vspace*{\fill}
	\noindent \input{frontmatter/dedication}
	\vspace*{\fill} 
	\newpage	
}


%%% -----------------------------------------------------------------------------
%%%     A C K N O W L E D G M E N T S     C O M M A N D
%%% -----------------------------------------------------------------------------
\newcommand{\acknowledgments}{
  
        
	\chapter*{Remerciement}
	\addcontentsline{toc}{chapter}{Remerciements}%
	\noindent
	\input{frontmatter/thanks}
	\vspace*{\fill} 
	\newpage
	}


%% -----------------------------------------------------------------------------
%%              N E W T H O U G H T    C O M M A N D
%% -----------------------------------------------------------------------------
\providecommand\newthought[1]{%
   \addvspace{1.0\baselineskip plus 0.5ex minus 0.2ex}%
   \noindent\textsc{#1}}

%%% -----------------------------------------------------------------------------
%%%            L E T T R I N E     C O M M A N D
%%% -----------------------------------------------------------------------------
\newcommand{\mylettrine}[1]{
  \lettrine[lines=2,lhang=0.33,loversize=0.33]{#1}
  %\lettrine[lines=2,lhang=0.33,loversize=0.33]{#1}
  %\lettrine[loversize=-0.4, lines=1, nindent=0em, slope=0em]{#1}
}
	

%%% --------------------------------------------------------------------------------------------------------------------------------------------------
%%%         E N D   C O M M A N D S   D E F I N I T I O N S
%%% --------------------------------------------------------------------------------------------------------------------------------------------------



%%%---%%%---%%%---%%%---%%%---%%%---%%%---%%%---%%%---%%%---%%%---%%%---%%%---%%%---%%%---%%%---%%%---%%%---%%%---%%%---%%%---%%%---%%%---%%%---%%%---%%%




%%% =================================================================================================
%%%                                      P A G E      S T Y L E
%%% =================================================================================================
\copypagestyle{ucam-page-style}{Ruled}   % Defines a new page style based on the 'Ruled' predefined one.
\makeevenhead{ucam-page-style}{\bfseries\scshape\color{dark-blue}\leftmark}{}{\thepage}
\makeoddhead{ucam-page-style}{\thepage}{}{\bfseries\scshape\color{dark-blue}\rightmark}


% Defines a new width
% -------------------
\newlength{\ucamwidth}
\setlength{\ucamwidth}{\paperwidth}
\addtolength{\ucamwidth}{-0.825\marginparwidth}
%\addtolength{\ucamwidth}{-0.5\marginparsep}







%% -------------------
%% ODD FOOT STYLE
%% -------------------
\makefootrule {ucam-page-style}{\ucamwidth}{\normalrulethickness}{\footruleskip}
\makeoddfoot{ucam-page-style}{\footnotesize  \noindent \copyright~\textit{\degreeyear \hspace{0.5pt}~- Tous droits réservés.}}{}{\footnotesize   \theauthor}% Odd page footer

%% -------------------
%% EVEN FOOT STYLE
%% -------------------
\makefootrule {ucam-page-style}{\ucamwidth}{\normalrulethickness}{\footruleskip}
\makeevenfoot{ucam-page-style}{\footnotesize  \noindent \copyright~\textit{\degreeyear \hspace{0.5pt}~- Tous droits réservés.}}{}{\footnotesize   \theauthor}% Even page footer


\pagestyle{plain}  
% ucam-page-style page style will be activated after the last pseudo-chapter Acronymes.
% The page style is activated after execting the \Acronyms command.

%%% --------------------------------------------------------------------------------------------------
%%%                                 E N D     P A G E     S T Y L E
%%% --------------------------------------------------------------------------------------------------





%%%---%%%---%%%---%%%---%%%---%%%---%%%---%%%---%%%---%%%---%%%---%%%---%%%---%%%---%%%---%%%---%%%---%%%---%%%---%%%---%%%---%%%---%%%---%%%---%%%---%%%



%%% =====================================================================
%%% 		            C H A P T E R     S T Y L E  
%%% =====================================================================
\usepackage{lipsum}   % for testing purpose only
\usepackage{mdframed}   
\usepackage{mathtools}
\usepackage{hyphenat}       % I use it to prevent hyphenation of table of contents items
\usepackage{xcolor}


%%% Do not include titletoc here - do it at the end
 %\usepackage{titletoc}             

%%% colors definitions
\definecolor{MainRed}{rgb}{.647,.129,.149}
\definecolor{GoldDecoration}{RGB}{170, 120, 70}

% Colored section, subsections, as well as
% chapter and section name in the head - included for completeness
\setsecheadstyle{\color{dark-blue}\Large\bfseries\scshape}
\setsubsecheadstyle{\color{dark-blue}\normalsize}
\setsubsubsecheadstyle{\color{dark-blue}\small}
\copypagestyle{myheadings}{headings}
\makeevenhead{myheadings}{\thepage}{}{\color{MainRed}\leftmark}
\makeoddhead{myheadings}{\color{MainRed}\rightmark}{}{\thepage}

%% RedBox style -- adapted from BlueBox style, pp:43-44
% http://mirror.csclub.uwaterloo.ca/CTAN/info/latex-samples/MemoirChapStyles/MemoirChapStyles.pdf
% with modifications from 
% https://tex.stackexchange.com/questions/49864/automatically-adjusting-size-of-a-box-based-on-other-content
% and others modifications of my own
\newcommand{\RedBarLength}{2.5em}

\newsavebox{\ChpNumBox}
\newsavebox{\ChpContBox}
\makeatletter
\newcommand*{\thickhrulefill}{%
  \leavevmode\leaders\hrule height 3\p@ \hfill \kern \z@}
\newcommand*\BuildChpNum[3]{%
  \begin{tabular}[t]{@{}c@{}}
    \makebox[0pt][c]{#1\strut} \\[.5ex]
    \colorbox{MainRed}{%
      \rule[-\RedBarLength-(#3)]{0pt}{0pt}%
      \rule{1ex}{0pt}\color{white}#2\strut
      \rule{1ex}{0pt}}%
  \end{tabular}}
\makechapterstyle{BoxedChapNum}{%
  \renewcommand{\chapnamefont}{\Huge\scshape}
  \setlength{\beforechapskip}{-30pt}
  \setlength{\midchapskip}{10pt}
  \setlength{\afterchapskip}{40pt}
  \renewcommand{\printchaptername}{}
  \renewcommand{\chapternamenum}{}
  \renewcommand{\printchapternum}{%
    \startcontents[chapters]
    \sbox{\ChpContBox}{%
      \parbox{\linewidth}{%    
      }}%
    \sbox{\ChpNumBox}{%
      \BuildChpNum{\color{GoldDecoration}\bfseries\chapnamefont\@chapapp}%
      {\HUGE\bfseries\thechapter}%
      {\ht\ChpContBox+\dp\ChpContBox}%
    }}
  \renewcommand{\printchapternonum}{%
    \startcontents[chapters]
    \sbox{\ChpContBox}{%
      \parbox{\linewidth}{%        
      }}%
    }
  \renewcommand{\afterchapternum}{}
  \renewcommand{\printchaptertitle}[1]{%
    \usebox{\ChpNumBox}\hfill
    \parbox[t]{\hsize-\wd\ChpNumBox-1em}{%
      \raggedright\vspace{\midchapskip}%
        {\color{GoldDecoration}\thickhrulefill}\\[10pt]
      {\chaptitlefont\HUGE\scshape\textcolor{MainRed}{\nohyphens{##1}}}\par\vspace*{10pt}
       \renewcommand\cftsectionfont{\normalsize\bfseries\scshape}
       \renewcommand\cftsubsectionfont{\small}    
      
    }}%
} 
\makeatother 
% Whenever one has changed chapter style in memoir class.
% That chapter style needs to be activated in order for the changes to take effects.
% Here The newly defined chapter style Boxed Chap Num is activated.
\chapterstyle{BoxedChapNum}
%%% ---------------------------------------------------------------------
%%% 		            E N D   C H A P T E R     S T Y L E  
%%% ---------------------------------------------------------------------



%%  ===========================================  Bibliography heading   ===========================================
\makeatletter
\def\ifskipbib{\iftoggle{blx@skipbib}}
\makeatother

\def\initlist{}
\forcsvlist{\listadd\initlist}{A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,T,U,V,W,X,Y,Z}
\forlistloop{\DeclareBibliographyCategory}{\initlist}
\renewcommand*{\do}[1]{\defbibheading{#1}{\bfseries\Huge\textcolor{MainRed}{#1}}}
\dolistloop{\initlist}
\AtDataInput{\ifskipbib{}{\addtocategory{\thefield{sortinit}}{\thefield{entrykey}}}}
%%  ===========================================  Bibliography heading   ===========================================



%% CONFIGURATION DE LA CÉSURE (-> Axel Reichert)
\tolerance = 1414
\hbadness = 1414
\emergencystretch 1.5em
\hfuzz 0.3pt
\widowpenalty=10000
\vfuzz \hfuzz
\raggedbottom



%%%---%%%---%%%---%%%---%%%---%%%---%%%---%%%---%%%---%%%---%%%---%%%---%%%---%%%---%%%---%%%---%%%---%%%---%%%---%%%---%%%---%%%---%%%---%%%---%%%---%%%


%%% =======================================================================================
%%%           							 T A B L E   OF   C O N T E N T
%%% =======================================================================================
\cftsetindents{part}{0em}{0.0em}% Indendation and numwidth for part titles in the TOC
\cftsetindents{chapter}{0em}{1.5em}% Indendation and numwidth for chapter titles in the TOC
\cftsetindents{section}{1.5em}{2.0em}
\cftsetindents{subsection}{3.5em}{3.0em}
\cftsetindents{subsubsection}{6.5em}{3.0em}
\setlength{\cftbeforechapterskip}{10pt}% No gap between chapter titles in the TOC

%\renewcommand{\cftchapterpagefont}{\rmfamily}% Clashes with the "linktocpage" option of the hyperref package
\renewcommand{\cftpartafterpnum}{\par % Thanks to https://tex.stackexchange.com/a/42500
    \vspace{-2\baselineskip} \hskip -\memRTLleftskip\protect\mbox{}\protect\hrulefill\par%
    \vspace{0.5\baselineskip} \hskip -\memRTLleftskip\protect\mbox{}\protect\hrulefill\par}
    


\renewcommand{\cftchapterfont}{\LARGE\bfseries\scshape} % Chapter title font in the TOC
\renewcommand{\cftsectionfont}{\large\scshape}
\renewcommand{\cftsubsectionfont}{\large}
\renewcommand{\cftsubsubsectionfont}{\normalsize}

\maxsecnumdepth{subsubsection} % chapters, sections, and subsections are numbered
\maxtocdepth{subsubsection} % chapters, sections, and subsections are in the Table of Contents
%%% ---------------------------------------------------------------------------------------
%%%           					E N D  	 T A B L E   O F   C O N T E N T
%%% ---------------------------------------------------------------------------------------
%% 

%
% L'utilisation de \usepackage[french]{babel} force le nom des auteurs en majuscule
%
\renewcommand{\contentsname}{Table des Matières} 
\renewcommand{\listfigurename}{Liste des figures}
\renewcommand{\listtablename}{Liste des tableaux}
\renewcommand{\appendixname}{Annexe}
\renewcommand{\chaptername}{Chapitre}

%%%  = = =  = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = %%%
