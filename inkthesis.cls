\NeedsTeXFormat{LaTeX2e}

\ProvidesPackage{inkthesis}[2019/5/26 v 0.01 Thesis template.]

\LoadClass[11pt,a4paper,fancyhdr]{book}

\RequirePackage{kvoptions}
\RequirePackage{ifthen}
\RequirePackage{ifxetex}
\RequirePackage{etoolbox}
\RequirePackage{calc}
\RequirePackage{zhnumber}
\RequirePackage{color}
\RequirePackage{booktabs}
\RequirePackage[colorlinks,linkcolor=blue]{hyperref}
\AtEndOfClass{\RequirePackage{microtype}}

\SetupKeyvalOptions{family=INK, prefix=INK@, setkeys=\kvsetkeys}
\newcommand{\ekv}[1]{\kvsetkeys{ELEGANT}{#1}}


\newtoks\institute
\newtoks\version
\newtoks\supervisor
\newtoks\advisor
\newtoks\equote


\DeclareStringOption[en]{lang}
\DeclareVoidOption{cn}{\ekv{lang = cn}}
\DeclareVoidOption{en}{\ekv{lang = en}}
\DeclareStringOption[include]{coverhead}
\DeclareVoidOption{include}{\ekv{coverhead = include}}
\DeclareVoidOption{noinclude}{\ekv{coverhead = noinclude}}

    \RequirePackage{ifxetex}
\ifxetex
	\RequirePackage{fontenc}
	\RequirePackage[no-math]{fontspec}
	\setmainfont{Times New Romans}[NFSSFamily=ntxtlf]
    \setsansfont{Arial}
    \setmonofont[Scale=0.7]{Courier New}
	%\setmonofont[Scale=0.7]{Courier New}
	\RequirePackage{xeCJK}
	\RequirePackage{xunicode}
	\setCJKmainfont[BoldFont={SimHei},ItalicFont={KaiTi}]{SimSun}
	\setCJKsansfont[BoldFont={SimHei},ItalicFont={KaiTi}]{KaiTi}
	\setCJKmonofont[BoldFont={SimHei},ItalicFont={KaiTi},Scale=0.7]{Microsoft YaHei}
	\XeTeXlinebreaklocale "zh"
	\XeTeXlinebreakskip = 0pt plus 1pt minus 0.1pt
	\RequirePackage{newtxmath}
	%\DeclareSymbolFont{operators}{OT1}{ntxtlf}{m}{n}
	%\SetSymbolFont{operators}{bold}{OT1}{ntxtlf}{b}{n}
	\setCJKfamilyfont{zhsong}{SimSun}
	\setCJKfamilyfont{zhhei}{SimHei}
	\setCJKfamilyfont{zhkai}{KaiTi}
	\setCJKfamilyfont{zhfs}{FangSong}
	\newcommand*{\songti}{\CJKfamily{zhsong}} 
	\newcommand*{\heiti}{\CJKfamily{zhhei}}   
	\newcommand*{\kaishu}{\CJKfamily{zhkai}} 
	\newcommand*{\fangsong}{\CJKfamily{zhfs}} 
\else
	\RequirePackage{fontenc}
	\RequirePackage{newtxtext}
	\RequirePackage{newtxmath}
	\RequirePackage[UTF8, scheme=plain]{ctex}
\fi

\renewcommand*\maketitle{%
	\thispagestyle{empty}
	\let\footnotesize\small
	%\let\footnoterule\hrule\vspace{5pt}
	\let \footnote \thanks
	\begin{flushright}%
		\zihao{-3}{\the\institute}
		\vspace{50pt}%
		\hrule%
		\vspace{50pt}%
		{\LARGE \@title \par}%
		\vspace{50pt}%
		\hrule%
		\vspace{50pt}%
		{\Large \@author \par}
		\vspace{5pt}
		{\Large \@date \par}
		\vspace{50pt}
		{\Large 导师:\the\advisor \par}
		{\Large 审阅人:\the\supervisor \par}
	\end{flushright}%
	\vspace{50pt}
	\begin{center}
		{\Large \the\equote \par}
	\end{center}
	\@thanks
	\vfil\null
	\setcounter{footnote}{0}%
 \global\let\thanks\relax
 \global\let\maketitle\relax
 \global\let\@thanks\@empty
 \global\let\@author\@empty
 \global\let\@date\@empty
 \global\let\@title\@empty
 \global\let\title\relax
 \global\let\author\relax
 \global\let\date\relax
 \global\let\and\relax

}