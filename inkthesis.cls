\NeedsTeXFormat{LaTeX2e}
\ProvidesPackage[Thesis template.]{inkthesis}
\LoadClass[11pt]{article}

\RequirePackage{kvoptions}
\RequirePackage{ifthen}
\RequirePackage{ifxetex}
\RequirePackage{etoolbox}
\RequirePackage{calc}
\AtEndOfClass{\RequirePackage{microtype}}

\SetupKeyvalOptions{family=INK, prefix=INK@, setkeys=\kvsetkeys}
\newcommand{\ekv}[1]{\kvsetkeys{ELEGANT}{#1}}

\DeclareStringOption[en]{lang}
\DeclareVoidOption{cn}{\ekv{lang = cn}}
\DeclareVoidOption{en}{\ekv{lang = en}}