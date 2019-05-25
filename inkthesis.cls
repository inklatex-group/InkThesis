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

\DeclareStringOption[en]{lang}
\DeclareVoidOption{cn}{\ekv{lang = cn}}
\DeclareVoidOption{en}{\ekv{lang = en}}
\DeclareStringOption[include]{coverhead}
\DeclareVoidOption{include}{\ekv{coverhead = include}}
\DeclareVoidOption{noinclude}{\ekv{coverhead = noinclude}}
\ifdefstring{\INK@lang}{cn}{
    \RequirePackage[scheme=plain]{ctex}
    \renewcommand{\maketitle}{%
        \clearpage 
        \thispagestyle{empty} 
        \vspace{50pt}
        \begin{center}
            \ifdefstring{\INK@coverhead}{include}

        \end{center}
    }
}