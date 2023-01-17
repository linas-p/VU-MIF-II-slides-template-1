\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{VUMIFSlides}[2023/01/16 VU MIF Slides]

\LoadClass[aspectratio=169]{beamer}

\RequirePackage[utf8]{inputenc}

\setbeamertemplate{frametitle}[default][center]

\usetheme{Madrid}
\useinnertheme{circles}

\definecolor{UBCblue}{rgb}{0.4823, 0.0, 0.2471} % VU (primary)
\definecolor{UBCgrey}{rgb}{0.8627, 0.8627, 0.8627} % VU (secondary)

%R:123 G:0 B:63
\setbeamercolor{palette primary}{bg=UBCblue,fg=white}
\setbeamercolor{palette secondary}{bg=UBCblue,fg=white}
\setbeamercolor{palette tertiary}{bg=UBCblue,fg=white}
\setbeamercolor{palette quaternary}{bg=UBCblue,fg=white}
\setbeamercolor{structure}{fg=UBCblue} % itemize, enumerate, etc
\setbeamercolor{section in toc}{fg=UBCblue} % TOC sections

% Override palette coloring with secondary
\setbeamercolor{subsection in head/foot}{bg=UBCgrey,fg=white}

\setbeamertemplate{caption}[numbered]{}% Number

\providecommand{\btVFill}{\vskip0pt plus 1filll}

\newcommand{\todo}[1]{\textcolor{red}{//\textbf{TODO: {#1}}} }

\newcommand{\eng}[1] {(angl. \textit{#1})}
\newcommand{\engp}[2] {(angl. \textit{#1}, toliau: #2)}

\RequirePackage{tikz}
\RequirePackage{tabularx}
\RequirePackage{booktabs}

\usetikzlibrary{matrix,shapes,arrows,fit,tikzmark}
\newcolumntype{.}{D{.}{.}{-1}}

% Some options common to all the nodes and paths
\tikzset{   
        every picture/.style={remember picture,baseline},
        every node/.style={anchor=base,align=center,outer sep=1.5pt},
        every path/.style={thick},
        }

\newcommand\marktopleft[1]{%
    \tikz[overlay,remember picture] 
        \node (marker-#1-a) at (.1em,.3em) {};%
}
\newcommand\markbottomright[1]{%
    \tikz[overlay,remember picture] 
        \node (marker-#1-b) at (.1em,.3em) {};%
    \tikz[overlay,remember picture,inner sep=3pt]
        \node[draw=red,rounded corners,fit=(marker-#1-a.north west) (marker-#1-b.south east)] {};%
}

\newcolumntype{P}[1]{>{\centering\arraybackslash}p{#1}}

\addtobeamertemplate{frametitle}{}{%
    \begin{textblock*}{100mm}(.95\textwidth,-0.95cm)
        \includegraphics[height=1cm,width=1cm]{img/VU_Logo_pilkas.png}
    \end{textblock*}
}

\RequirePackage[
    alldates=iso,
    seconds=true,
    autolang=other,
    backend=biber,
    sortcites=true,
    style=trad-alpha,
    abbreviate=true,
    minalphanames=3,
    maxalphanames=3,
    maxnames=9,
    minnames=4,
]{biblatex}
\RequirePackage[style=lithuanian]{csquotes}

\setbeamertemplate{bibliography item}{\insertbiblabel}

\RequirePackage{caption}
\DeclareCaptionLabelFormat{simple}{#2 #1}
\captionsetup*[table]{labelsep=period}
\captionsetup*[figure]{labelsep=period, name=pav}