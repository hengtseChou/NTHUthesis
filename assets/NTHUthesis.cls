\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{NTHUthesis}[Typesetting theses for members of National Tsing Hua University, Hsinchu, Taiwan.]

% ---------------------------------------------- %
%              using 12pt font size              %
% ---------------------------------------------- %

\LoadClass[a4paper,12pt]{report}

% ---------------------------------------------- %
%                packages required               %
% ---------------------------------------------- %

\RequirePackage[top=1in,bottom=1in]{geometry}
\RequirePackage{fontspec}
\RequirePackage{indentfirst}
\RequirePackage{setspace}
\RequirePackage{tikz}
\RequirePackage[encoding=UTF8]{zhnumber}
\RequirePackage{amsthm}
\RequirePackage{thmtools}
\RequirePackage[ruled]{algorithm2e}
\RequirePackage[colorlinks=true, allcolors = black, citecolor=blue]{hyperref}
\RequirePackage{titlesec}

% ---------------------------------------------- %
%                     options                    %
% ---------------------------------------------- %

\DeclareOption{master}{\gdef\@degreeZH{碩}}
\DeclareOption{doctor}{\gdef\@degreeZH{博}}
\DeclareOption{nowatermark}{\gdef\nowatermark{1}}
\ProcessOptions\relax

% Watermark of NTHU
\ifdefined \nowatermark \else
\AtBeginShipout{
  \AtBeginShipoutAddToBox{
    \begin{tikzpicture}[overlay,remember picture]
      \node[opacity=0.7] at (current page.center){
        \includegraphics[height=170pt, width=170pt]{./assets/nthu-logo.png}
      };
    \end{tikzpicture}
  }
}
\fi

% Default spacing
\setstretch{1.8}

% ---------------------------------------------- %
%               creating cover page              %
% ---------------------------------------------- %

\newcommand{\titleZH}[1]{\gdef\@titleZH{#1}}
\newcommand{\titleEN}[1]{\gdef\@titleEN{#1}}
\newcommand{\instituteZH}[1]{\gdef\@instituteZH{#1}}
\newcommand{\studentID}[1]{\gdef\@studentID{#1}}
\newcommand{\studentZH}[1]{\gdef\@studentZH{#1}}
\newcommand{\studentEN}[1]{\gdef\@studentEN{#1}}
\newcommand{\advisorZH}[1]{\gdef\@advisorZH{#1}}
\newcommand{\advisorEN}[1]{\gdef\@advisorEN{#1}}
\newcommand{\yearZH}[1]{\gdef\@yearZH{#1}}
\newcommand{\monthZH}[1]{\gdef\@monthZH{#1}}

\newcommand{\makecover}{
\begin{titlepage}
    \begin{center}
    \begin{spacing}{2.5}
        \Huge
        國~~立~~清~~華~~大~~學\\
        \@degreeZH~~士~~論~~文
    \end{spacing}
    \begin{spacing}{1.5}
    \LARGE
    \@titleZH\\
    \@titleEN
    \vfill
    \Large
    \begin{tabular}{l}
        系別：\@instituteZH\\
        學號：\@studentID\\
        研\hspace{0.3cm}究\hspace{0.3cm}生：\@studentZH~(\@studentEN)\\
        指導教授：\@advisorZH~(\@advisorEN)
    \end{tabular}\\
    \vspace{1.5\baselineskip}
    中~~華~~民~~國~~\@yearZH~~年~~\@monthZH~~月
    \end{spacing}
    \end{center}
\end{titlepage}
}

% ---------------------------------------------- %
%    setting up theorem environment in chinese   %
% ---------------------------------------------- %

\newtheoremstyle{nopunct}{3pt}{3pt}{\itshape}{}{\bfseries}{}{ }{}
\theoremstyle{nopunct}
\newtheorem{theorem}{\bf 定理\ignorespaces}
\newtheorem{definition}{\bf 定義\ignorespaces}
\newtheorem{corollary}{\bf 推論\ignorespaces}
\newtheorem{proposition}{\bf 性質\ignorespaces}
\newtheorem{lemma}{\bf 引理\ignorespaces}
\newtheorem{example}{\bf 例\ignorespaces}

% ---------------------------------------------- %
%          setting up chinese characters         %
% ---------------------------------------------- %

\setlength{\parindent}{24pt}
\titleformat{\chapter}{\Huge\bfseries}{\zhdigits{\thechapter}、}{0pt}{}
\titlespacing*{\chapter}{0pt}{0pt}{24pt}
\renewcommand{\contentsname}{目錄}
\renewcommand{\figurename}{圖}
\renewcommand{\tablename}{表}
\renewcommand{\algorithmcfname}{演算法}
\renewcommand{\listfigurename}{圖目錄}
\renewcommand{\listtablename}{表目錄}
\renewcommand{\listalgorithmcfname}{演算法目錄}
\renewcommand{\bibname}{參考文獻}
\renewcommand\thetheorem{\zhnum{theorem}}
\renewcommand\thedefinition{\zhnum{definition}}
\renewcommand\thecorollary{\zhnum{corollary}}
\renewcommand\theproposition{\zhnum{proposition}}
\renewcommand\thelemma{\zhnum{lemma}}
\renewcommand\theexample{\zhnum{example}}
\renewenvironment{proof}[1][\bf 證明\ignorespaces]{\par\noindent{\bfseries #1\ }\itshape}{\hfill$\square$\par}
