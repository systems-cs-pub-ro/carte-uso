% Mircea Bardac, 2008-2009
% dev@mircea.bardac.net
% thesis.cs.pub.ro.cls - class for thesis

% Copyright notice: you must keep the original author(s)/copyright information in the files
% Released: 2009-06-23 - v 0.1 (preview and public testing phase)

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{book.cs.pub.ro}[2008/07/14]

\let\ExecuteOptions@ltx\ExecuteOptions
\def\ExecuteOptions#1{%
 \ExecuteOptions@ltx{a4paper,12pt,twoside,onecolumn,final}%
}%
\LoadClassWithOptions{book}
\let\ExecuteOptions\ExecuteOptions@ltx

% uncomment the lines bellow for Romanian Language support
% Use UTF8 file encoding when writing .tex files in Romanian
% Romanian Language support
\usepackage{ucs}
\usepackage[utf8]{inputenc}
\usepackage[english,romanian]{babel}

% float names for Romanian
\addto{\captionsromanian}{
  \renewcommand{\figurename}{Figura}
  \renewcommand{\tablename}{Tabelul}
}


% package for indexes
\usepackage{makeidx}
% multicolumn indexes: http://www.latex-community.org/forum/viewtopic.php?f=5&t=1750
\usepackage{multicol}
\makeatletter
\renewenvironment{theindex}
  {\if@twocolumn
      \@restonecolfalse
   \else
      \@restonecoltrue
   \fi
   \setlength{\columnseprule}{0pt}
   \setlength{\columnsep}{35pt}
   \begin{multicols}{2}[\chapter*{\indexname}]
   \markboth{\MakeUppercase\indexname}%
            {\MakeUppercase\indexname}%
   \thispagestyle{plain}
   \setlength{\parindent}{0pt}
   \setlength{\parskip}{0pt plus 0.3pt}
   \relax
   \let\item\@idxitem}%
  {\end{multicols}\if@restonecol\onecolumn\else\clearpage\fi}
\makeatother

%%% http://vetinari.math.hmc.edu/svn/latex/hmcmath/classes/hmcthesis/trunk/hmcthesis.cls
%%% Fix \cleardoublepage so it doesn't put headers on pages that are
%%% supposed to be blank.
\renewcommand*{\cleardoublepage}{%
% original definition, see latex.ltx
  \clearpage
  \if@twoside
     \ifodd\c@page
  \else
     \thispagestyle{empty}% added
     \hbox{}\newpage
     \if@twocolumn
        \hbox{}\newpage
     \fi
     \fi
  \fi
}

% page setup
\usepackage[top=2cm, bottom=2.5cm, left=3cm, right=2.5cm]{geometry}
\setlength{\headheight}{1.20cm}
\setlength{\headsep}{0.50cm}

\usepackage{parskip}

% package for variable line spacing (1, 1.5, 2)
% usage: write \onehalfspacing before the part which should be
% with 1.5 line spacing
% for example, in "thesis.tex" before "\input{src/main}" will make
% all the chapters with 1.5 line spacing
\usepackage{setspace}

% number of levels in TOC (levels below chapter)
% comment the next line to use the default value
%\setcounter{tocdepth}{1}

% hyper-references
% recommendation: change blue to black if you want to print the pdf
% http://www.tug.org/applications/hyperref/manual.html
\usepackage{hyperref}
%\hypersetup{%
%	colorlinks=true,
%	linkcolor=blue,
%	anchorcolor=black,
%	citecolor=black,
%	filecolor=blue,
%	menucolor=black,
%	urlcolor=blue,
%	bookmarks=true,
%	bookmarksnumbered=true
%}
\hypersetup{%
	colorlinks=true,
	linkcolor=black,
	anchorcolor=black,
	citecolor=black,
	filecolor=black,
	menucolor=black,
	urlcolor=black,
	bookmarks=true,
	bookmarksnumbered=true
}
\urlstyle{sf}

% Treat _ as a normal character
\usepackage{underscore}

% Support for including graphics
\usepackage{graphicx}
\DeclareGraphicsExtensions{.pdf,.png,.jpg}

% Code listings support
\usepackage{listings}

\lstset{
	numbers=left, numberstyle=\scriptsize,
	frame=lines, captionpos=b,
	breaklines=true,
	basicstyle=\ttfamily\footnotesize
}

% Fancy verbatim environments
\usepackage{fancyvrb}

% notations and abbreviations
% http://www-h.eng.cam.ac.uk/help/tpl/textprocessing/nomencl.pdf
% Sample usage (anywhere in the doc): \abbrev{ABC}{Alpha Beta Gama}
\usepackage{nomencl}

\let\abbrev\nomenclature
%\renewcommand{\nomname}{Notations and Abbreviations}
\renewcommand{\nomname}{Abrevieri}

\renewcommand{\nomlabel}[1]{#1 --}
\setlength{\nomitemsep}{-\parsep}

% to be used in the main .tex file
\newcommand{\printabbrev}{
	\printnomenclature
	\newpage
}

\makenomenclature


% restart numbering footnotes on every page
\usepackage{perpage}
\MakePerPage{footnote}

% custom variables for altering front page content

% for some reason I can't use \VAR@author as described in
% http://www.gocad.org/meeting/Nancy2008/papers/gocad.sty
\newcommand{\VARauthor} {}
\newcommand{\VARdate} {}
\newcommand{\VARadviser} {}
\newcommand{\VARtitleen} {}
\newcommand{\VARtitlero} {}
\newcommand{\VARtitlefooteren} {}
\newcommand{\VARtitlefooterro} {}

\renewcommand{\author}[1]{ \renewcommand{\VARauthor}{#1} }
\renewcommand{\date}[1]{ \renewcommand{\VARdate}{#1} }
\newcommand{\adviser}[1]{ \renewcommand{\VARadviser}{#1} }
\newcommand{\titleen}[1]{ \renewcommand{\VARtitleen}{#1} }
\newcommand{\titlero}[1]{ \renewcommand{\VARtitlero}{#1} }
\newcommand{\titlefooteren}[1]{ \renewcommand{\VARtitlefooteren}{#1} }
\newcommand{\titlefooterro}[1]{ \renewcommand{\VARtitlefooterro}{#1} }


% fancyhdr package
% headers with chapter title and page number
\usepackage{fancyhdr}
\pagestyle{fancy}
\fancyhf{} % delete default settings
\fancyhead[RO]{\bfseries\thepage} % page number
\fancyhead[LO]{\bfseries\leftmark} % section name
\fancyhead[LE]{\bfseries\thepage} % page number
\fancyhead[RE]{\bfseries{INTRODUCERE ÎN SISTEME DE OPERARE}} % book name

% line in header
\renewcommand{\headrulewidth}{0.5pt}
% more space for the line in header
\addtolength{\headheight}{0.5pt}

% no line in footer
\renewcommand{\footrulewidth}{0pt}

% longtable package
\usepackage{longtable}

% Fix verbatim environment: smaller text size
\let\oldverbatim=\verbatim
\renewenvironment{verbatim}{
  \begin{small}
  \begin{oldverbatim}
  \vspace*{1em}
}%
{%
  \vspace*{1em}
  \end{oldverbatim}
  \end{small}
}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% iiscthes.sty - IISC Thesis Style
% http://etd.ncsi.iisc.ernet.in/instructions/templates.htm

% Page formatting and numbering

% \newenvironment{frontmatter}{\pagenumbering{roman}}{\newpage \pagenumbering{arabic}}

% \renewenvironment{abstract}{\null\vfil\prefacesection{Abstract}}{\par\vfill\null}

\def\prefacesection#1{%
	\chapter*{#1}
	\addcontentsline{toc}{chapter}{#1}}

% Added by Y.N. Srikant
\def\keywords{\prefacesection{Keywords}}
\def\notations{\prefacesection{Notation and Abbreviations}}
\def\vita{\prefacesection{Vita}}
\def\publications{\prefacesection{Publications based on this Thesis}}

%% end iiscthes.sty
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\def\notitlesection#1{%
    \addcontentsline{toc}{chapter}{#1}}

\newenvironment{acknowledgements} {
    \notitlesection{Acknowledgements}
    \thispagestyle{empty} }
{\pagestyle{fancy}}

\newcommand{\includechapter}[1]{\input{src/chapter-#1/index}}
\newcommand{\includesection}[2]{\input{src/chapter-#1/#2}}

% No indent
\setlength{\parindent}{0pt}

\usepackage[T1]{fontenc}

% Default fonts
% (more info: http://www.tug.dk/FontCatalogue/)

% TT font: Courier
\usepackage{courier}


% SF font: Helvetica (default document font)
\usepackage[scaled]{helvet}
\renewcommand*\familydefault{\sfdefault}

% command for specifying TODOs
\newcommand{\todo}[1]{
	\colorbox{yellow}{
		\begin{minipage}{15cm}
			\textbf{TODO:}\\
			#1
		\end{minipage}
	}
}

% command for formatting inline functions
% Usage (default language = C)
%   \func{function_name}
%   \func[language]{function_name}
%      'language' must be supported by package 'listings'
\newcommand{\func}[2][C]{\lstset{language=#1}\lstinline|#2|\lstset{language=C}}

% command for formatting file names
\newcommand{\file}[1]{\texttt{#1}}

% command for formatting inline commands
\newcommand{\cmd}[1]{\textbf{\texttt{#1}}}

% commands for creating labeled hyper-linked references
\newcommand{\labelindexref}[2]{\hyperref[#2]{#1~\ref*{#2}}}
\newcommand{\labelref}[2]{\hyperref[#2]{#1}}

% command for inserting labeled figures
% Usage: \fig{file}{label}{caption}
%   TODO: references should point to the top of the image
\newcommand{\fig}[4][]{
% http://people.cs.uu.nl/piet/floats/node1.html
% ! forces LaTeX to ignore float placement parameters
\begin{figure}[!htb]
	\begin{center}
		\includegraphics[#1]{#2}
		\caption{#4 \label{#3}}
    \end{center}
\end{figure}
}

% commands to be used to print the carret(^) sign
% \carret for text mode
% \XOR for math mode
% to show ^a you can't use \carreta, you need to use \carret{}a
\newcommand\XOR{\mathbin{\char`\^}}
\newcommand\carret{$\XOR$}

% Screen environment
\DefineVerbatimEnvironment%
{screen_simple}{Verbatim}
{numbers=left,numbersep=2mm,
frame=single,rulecolor=\color{red},framerule=0.8mm}

\newenvironment{screen_extended_with_linebreaks}
{% This is the begin code
\lstset{fancyvrb=true,breaklines=true,framesep=0.5mm}
\fvset{commandchars=\\\{\},
	numbers=left,
	numbersep=2mm,
	frame=single,
	rulecolor=\color{red},
	%fillcolor=\color{yellow},
	framerule=0.2mm,
	framesep=0.5mm}
\Verbatim
}%
{% This is the end code
\endVerbatim
}

% Command output (screen) environment
% you can have LaTeX (formatting) commands inside if you escape them with ^...^
% for example: ^\textbf{bold text}^
% To get the actual ^ sign in the environment
% you need to use: ^\verb+^+^ (yes, it's long but extremely rare)
% optional parameter: font size (default: normal)
\lstnewenvironment{screen}[1][]
{
\definecolor{screentext}{rgb}{0,0,0}
\definecolor{screenback}{rgb}{0.87,0.87,1}
\color{screentext}
\lstset{
	numberstyle=\scriptsize,
	basicstyle=\ttfamily\footnotesize,
	numbers=left,
	%numbersep=2mm,
	breaklines=true,
	showlines=true, % show empty lines at the end of the listing
	nolol=true, % do not appear in list of listings
	%frameround=tttt,
	frame=single,
	framerule=0mm,
	framesep=2mm,
	rulecolor=\color{screentext},
	backgroundcolor=\color{screenback},
	breakautoindent=false,
	breakindent=0pt,
	escapechar=^,
	language=,
	caption=#1,
} % end of lstset
} % end of begin{env}
{\vspace{-0.7em}}

% package for Postscript ZipfDingbats font
% (required for squared bullets)
\usepackage{pifont}

% Environment for question answers
\newenvironment{qlist}
{% This is the begin code
\renewcommand{\labelitemi}{\ding{113}}
\itemize
}%
{% This is the end code
\enditemize
}

\usepackage{framed}

% Environment for definitions
\newenvironment{definition}[1]
{% This is the begin code
\index{#1}
\begin{framed}
\begin{minipage}{\textwidth}
}%
{% This is the end code
\end{minipage}
\end{framed}
}

% Temporary parameter to be used if necessary
\newcommand{\myTempParam}{}

% Environment for chapter quotes
% parameter: author name
\newenvironment{chapterquote}[1][]%
{% This is the begin code
% http://www.latex-community.org/forum/viewtopic.php?f=5&t=4120
\renewcommand{\myTempParam}{#1}%% save parameter, we can't use #1 in enddef
\begin{minipage}{\textwidth}
\begin{flushright}
\begin{minipage}{10cm}
\raggedright
\em
}%
{% This is the end code
\\
\raggedleft\textbf{\myTempParam}
\end{minipage}
\end{flushright}
\end{minipage}
}

% Environment for keywords
\newenvironment{keywordlist}
{% This is the begin code
\begin{itemize}
\begin{multicols}{2}
}
{% This is the end code
\end{multicols}
\end{itemize}
}

% \usepackage[showboxes]{textpos} % for debug
\usepackage{textpos}
\usepackage{calc}
%\setlength{\TPHorizModule}{10mm}
%\setlength{\TPVertModule}{12pt}

% geek icon
\newcommand{\geek}[1][0pt]{
\begin{textblock*}{12mm}(-16mm,0pt+#1)
	\includegraphics[scale=.08]{template/icons/atom}
\end{textblock*}
}

% ufo icon
\newcommand{\ufo}[1][0pt]{
\begin{textblock*}{12mm}(-16mm,0pt+#1)
	\includegraphics[scale=.08]{template/icons/ufo}
\end{textblock*}
}

% note support
\usepackage[most]{tcolorbox}

\newtcolorbox{note}[1][]{%
	enhanced jigsaw, % better frame drawing
	borderline west={2pt}{0pt}{red}, % straight vertical line at the left edge
	sharp corners, % No rounded corners
	boxrule=0pt, % no real frame,
	fonttitle={\bfseries},
	coltitle={black},  % Black colour for title
	title={#1:\ },  % Fixed title
	attach title to upper, % Move the title into the box
}

% important
\newcommand{\important}[1][0pt]{
\begin{textblock*}{12mm}(-16mm,0pt+#1)
	\includegraphics[scale=.13]{template/icons/important}
\end{textblock*}
}

% package array for advanced table manipulation
\usepackage{array}

% package for multiline comments
\usepackage{verbatim}

% package for multirow command
\usepackage{multirow}

% package for euro symbol
\usepackage{eurosym}

% package for professional tables
\usepackage{booktabs}

% http://www.latex-community.org/forum/viewtopic.php?f=5&t=1876
\usepackage{tocloft}
% section
\renewcommand{\cftchapindent}{0 em}
\renewcommand{\cftchapnumwidth}{1.9 em}
% section
\renewcommand{\cftsecindent}{1.9 em}
\renewcommand{\cftsecnumwidth}{2.8 em}
% subsection
\renewcommand{\cftsubsecindent}{4.8 em}
\renewcommand{\cftsubsecnumwidth}{3.7 em}

% start chapter index from 0
\setcounter{chapter}{-1}

% hack - we don't like this, but we want to sleep more
% creates blank page with centered number in footer
\newcommand{\blankpage}{
  \cleardoublepage
  \hspace{1em}
  \thispagestyle{empty}
}
