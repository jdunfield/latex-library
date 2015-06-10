\ProvidesClass{purple}[2015/06/09 - First release]

%
% Make LaTeX slightly less broken
%
\RequirePackage{etex}
\RequirePackage{ifthen}
\newcommand{\ifthen}[2]{\ifthenelse{#1}{#2}{\relax}}
\newcommand{\ifnotthen}[2]{\ifthenelse{#1}{\relax}{#2}}
\newcommand{\PassDownOptionToPackage}[2]{\DeclareOption{#1}{\PassOptionsToPackage{#1}{#2}}}
\newcommand{\PassDownOptionToClass}[2]{\DeclareOption{#1}{\PassOptionsToClass{#1}{#2}}}


\usepackage{joshuadunfield}

%%% Set up options

\ProcessOptions
\PassOptionsToClass{10pt}{article}

\LoadClass{article}
\RequirePackage{fullpage}

\RequirePackage{fancyhdr}
\pagestyle{fancy}
\addtolength\topmargin{-3.5ex}
\addtolength\textheight{2ex}

\RequirePackage[breaklinks]{hyperref}
\RequirePackage{breakurl}
\RequirePackage{titlesec}
\RequirePackage[overload]{textcase}


%
% Customize section headings
%
\RequirePackage{titlesec}
\titleformat{\section}
    {\normalfont\bfseries\sffamily\fontsize{14pt}{15pt}\selectfont}
    {\SectionHiliteStrong{\thesection}}{0.8em}{}

\titleformat{\subsection}
    {\normalfont\bfseries\sffamily\fontsize{12pt}{13pt}\selectfont}
    {\SectionHilite{\thesubsection}}{0.6em}{}

\titleformat{\subsubsection}
    {\normalfont\bfseries\sffamily\fontsize{10pt}{11pt}\selectfont}
    {\SectionHilite{\thesubsubsection}}{0.4em}{}

\RequirePackage{abstract}
\renewcommand{\abstractnamefont}%
     {\normalfont\bfseries\sffamily\fontsize{10pt}{11pt}\selectfont}

\newcommand{\SectionHiliteStrong}[1]{\colorbox{dLightPurple}{#1}}
\newcommand{\SectionHilite}[1]{\colorbox{dLighterPurple}{#1}}


%
% Customize captions and headers
%
\RequirePackage[hang,labelfont=bf]{caption}
\renewcommand{\captionlabelfont}{\sffamily\bfseries\color{dBlue}}
\renewcommand{\captionfont}{\sffamily\bfseries}

\addtolength\headheight{2.5\baselineskip}
\renewcommand{\headrulewidth}{0pt}
\fancyhead[LE,LO]{}
\fancyhead[RE,RO]{}

\RequirePackage{afterpage}

\fancyfoot[C]{\sffamily\bfseries\thepage}

\fancyfoot[RE,RO]{\sffamily \number\year/\number\month/\number\day}%

\g@addto@macro{\maketitle}{%
     \thispagestyle{fancy}%
     \afterpage{%
         \fancyhead[LE,LO]{%
           {\sffamily\bfseries\textcolor{dPurple}{\S}\nouppercase{\leftmark}}%
%           \hfill
%           {\sffamily \number\year/\number\month/\number\day}%
           \\[-1.5ex]
           \textcolor{gray}{\rule{\textwidth}{0.8pt}}
         }
     }%
  }
  % Change the title page too:
  %   http://tex.stackexchange.com/questions/61489/modify-footer-of-first-page-in-custom-class

%
%
%

\newcommand{\zzinternalcaptionnumberleft}{\color{blue}}
%\gdef\fnum@figure{\figurename\;\color{black}\colorbox{dLighterBlue}{\hspace*{-0.3ex}\thefigure\hspace*{-0.3ex}}}
\gdef\fnum@figure{\figurename\;{\thefigure}}
% \renewcommand{\figurename}{Figure\zzinternalcaptionnumberleft}

\setlength\abovecaptionskip{0.3\abovecaptionskip}
\renewcommand{\@makecaption}[2]{%
  \vskip\abovecaptionskip
  \textcolor{dLighterBlue}{\rule{\textwidth}{0.8pt}}\par
  \vskip 0pt
  \sbox\@tempboxa{{\captionlabelfont%
         #1%
%
  ~} \captionfont#2}%
  \ifdim \wd\@tempboxa >\hsize
    {\captionlabelfont#1~} \captionfont#2\par
  \else
    \global \@minipagefalse
\hb@xt@\hsize{%\hfil%
\box\@tempboxa\hfil}%
   \fi
   \vskip -1.3ex
   \textcolor{dBlue}{\rule{\textwidth}{0.8pt}}\par
   \vskip\belowcaptionskip}




