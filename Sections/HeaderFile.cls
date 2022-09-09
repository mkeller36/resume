% Intro Options
\ProvidesClass{KellerResume}[2014/04/30 CV class]
\NeedsTeXFormat{LaTeX2e}
\DeclareOption{print}{\def\@cv@print{}}
\DeclareOption*{%
  \PassOptionsToClass{\CurrentOption}{article}
}
\ProcessOptions\relax
\LoadClass{article}

% Package Imports
\usepackage[hmargin=1.25cm, vmargin=0.7cm]{geometry}
\usepackage{ragged2e}
\usepackage[usenames,dvipsnames]{xcolor}
\usepackage[hidelinks]{hyperref}
\usepackage{titlesec}
\usepackage[absolute]{textpos}
\usepackage[UKenglish]{babel}
\usepackage[UKenglish]{isodate}
\usepackage{fontspec,xltxtra,xunicode}
\usepackage{blindtext}
\usepackage{lipsum}
\usepackage{amsmath}
\usepackage{fontawesome}
\usepackage{fontspec}
\usepackage{graphicx}
\usepackage[utf8]{inputenc}
\usepackage{eso-pic}
\usepackage{fancybox}
\usepackage{tikz}
\usetikzlibrary{shapes}
\usetikzlibrary{decorations.pathmorphing}
\usepackage[T1]{fontenc}
\usepackage{xcolor}
\usepackage{comment}


% Color definitions
\definecolor{date}{HTML}{000080}
\definecolor{primary}{HTML}{000080}
\definecolor{headings}{HTML}{000080}
\definecolor{subheadings}{HTML}{000080}
\definecolor{smcolor}{HTML}{000080}
\definecolor{gold}{HTML}{b4a469}
\definecolor{blue}{HTML}{000080}
\definecolor{FordBlue}{HTML}{0000ff}
\definecolor{JDgreen}{HTML}{008000}
\definecolor{bobcat}{HTML}{FF3600}
\definecolor{noskillgray}{gray}{0.85}
\definecolor{skilledblue}{HTML}{000080}
\definecolor{invisible}{HTML}{FFFFFF}

% Set main fonts
\defaultfontfeatures{Mapping=tex-text}
\setmainfont[Color=primary, Path = fonts/calibri/]{Calibri}
\setsansfont[Scale=MatchLowercase,Mapping=tex-text, Path = fonts/calibri/]{Calibri}
\newcommand{\custombold}[1]{\color{subheadings}\fontspec[Path = fonts/calibri/]{CALIBRIB}\selectfont #1 \normalfont}


% Header command
% \newcommand{\headername}{\color{headings}
% \fontspec[Path = fonts/calibri/]{Calibri}\fontsize{24pt}{32pt}\selectfont\raggedright}{} {0em}{}
\newcommand{\headername}[1]{\color{subheadings}
\fontspec[Path = fonts/calibri/]{CALIBRIB}\fontsize{24pt}{12pt}\selectfont\vspace{10pt}\raggedright {#1} \normalfont}


\titlespacing{\section}{0pt}{0pt}{0pt}

% Headings command
\titleformat{\section}{\color{headings}
\fontspec[Path = fonts/calibri/]{Calibri}\fontsize{16pt}{24pt}\selectfont\raggedright}{} {0em}{}

\newcommand{\SectionHead}[1]{\smash{\begin{tabular}{l} \hline #1 \\ \hline \end{tabular}\hspace*{-\tabcolsep}}}

% Subeadings command
\titleformat{\subsection}{\color{subheadings}
\fontspec[Path = fonts/calibri/]{Calibri}\fontsize{12pt}{12pt}\selectfont\bfseries\uppercase}{}{0em}{}
\titlespacing{\subsection}{0pt}{\parskip}{-\parskip}
\titlespacing{\subsubsection}{0pt}{\parskip}{-\parskip}
\newcommand{\runsubsection}[1]{\color{subheadings}
\fontspec[Path = fonts/calibri/]{CALIBRIB}\fontsize{12pt}{12pt}\selectfont\bfseries {#1} \normalfont}

% Descriptors command
\newcommand{\descript}[1]{\color{subheadings}\raggedright\hspace*{0pt}\hfill\vspace{3pt}\fontspec[Path = fonts/calibri/]{CALIBRIB}\fontsize{11pt}{13pt}\selectfont {#1 \\} \normalfont}

% Item Description command
\newcommand{\itemdes}[1]{\color{subheadings}\raggedright\vspace{2pt}\fontspec[Path = fonts/calibri/]{Calibri}\fontsize{11pt}{13pt}\selectfont {#1} \normalfont}

% Descriptors command
\newcommand{\descriptright}[1]{\color{subheadings}\raggedright\hspace*{0pt}\hfill\fontspec[Path = fonts/calibri/]{CALIBRII}\fontsize{11pt}{12pt}\selectfont {#1 \\} \normalfont}

% Descriptors datecolor
\newcommand{\datecolor}[1]{\color{smcolor}\raggedright\scshape\fontspec[Path = fonts/calibri/]{CALIBRII}\fontsize{11pt}{13pt}\selectfont {#1 } \normalfont}

% Section seperators command
\newcommand{\sectionsep}[0]{\vspace{4pt}}

% Bullet Lists with fewer gaps command
\newenvironment{tightemize}{\vspace{-\topsep}\begin{itemize}\itemsep1pt \parskip0pt \parsep0pt}{\end{itemize}\vspace{-\topsep}}

% MyBar def
\newcommand\mybar{\kern1pt\rule[-\dp\strutbox]{1pt}{\baselineskip}\kern1pt}

% Skill Bars
\makeatletter
\newdimen\skillb@level
\newdimen\skillb@length
\newdimen\skillb@height
\skillb@length=120pt%
\skillb@height=10pt%
\newcommand*{\skillbar}[1]{%
    \skillb@level=\dimexpr#1\skillb@length/100\relax%
    {\color{skilledblue}\rule{\skillb@level}{\skillb@height}}%
    {\color{noskillgray}%
        \rule{\dimexpr\skillb@length-\skillb@level\relax}{\skillb@height}}%
}
\newcommand*{\skill}[2]{%
    \par\noindent%
    {\hskip 1ex\small #1}\\%
    \skillbar{#2}%
}
\makeatother
