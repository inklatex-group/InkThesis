\NeedsTeXFormat{LaTeX2e}
\ProvidesPackage[Thesis template.]{inkthesis}
\LoadClass[11pt,a4paper,fancyhdr]{book}

\RequirePackage{kvoptions}
\RequirePackage{ifthen}
\RequirePackage{ifxetex}
\RequirePackage{etoolbox}
\RequirePackage{calc}
\RequirePackage{zhnumber}
\AtEndOfClass{\RequirePackage{microtype}}

\SetupKeyvalOptions{family=INK, prefix=INK@, setkeys=\kvsetkeys}
\newcommand{\ekv}[1]{\kvsetkeys{ELEGANT}{#1}}
\RequirePackage[scheme=plain]{ctex}


\DeclareStringOption[en]{lang}
\DeclareVoidOption{cn}{\ekv{lang = cn}}
\DeclareVoidOption{en}{\ekv{lang = en}}
\DeclareStringOption[include]{coverhead}
\DeclareVoidOption{include}{\ekv{coverhead = include}}
\DeclareVoidOption{noinclude}{\ekv{coverhead = noinclude}}
\ifdefstring{\INK@lang}{cn}{
    \RequirePackage{ifxetex}
\ifxetex
	\RequirePackage{fontenc}
	\RequirePackage[no-math]{fontspec}
	\setmainfont{Centaur}[NFSSFamily=ntxtlf]
	\setsansfont{Arial}
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
\RequirePackage[scale=0.7]{FiraMono}


    \renewcommand{\maketitle}{%
        \clearpage 
        \thispagestyle{empty} 
        \vspace{50pt}
        \begin{center}
            \ifdefstring{\INK@coverhead}{include}{

            }{\relax}
        \end{center}
    }
}{\relax}