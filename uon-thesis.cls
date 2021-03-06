% Copyright (c) 2020 Ian Knight, Juan Martinez Avila, and Max Wilson

% Permission is hereby granted, free of charge, to any person obtaining a copy 
% of this software and associated documentation files (the "Software"), to deal
% in the Software without restriction, including without limitation the rights
% to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies
% of the Software, and to permit persons to whom the Software is furnished to do
% so, subject to the following conditions:

% The above copyright notice and this permission notice shall be included in all
% copies or substantial portions of the Software.

% THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED,
% INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A
% PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT
% HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION
% OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE
% SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{uon-thesis}[2020/11/04 Document class for UoN PhD theses]

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{report}}
\ProcessOptions\relax
\LoadClass[12pt,a4paper,oneside]{report}

% Custom titlepage
\makeatletter
\def\@maketitle{%
\begin{titlepage}
    \centering

    \vspace*{1cm}
    \Huge
    \textbf{\@title}

    \vspace{0.5cm}
    \LARGE
    by~\@author

    \vfill
    \Large
    Thesis submitted to the University of Nottingham \\
    for the degree of Doctor of Philosophy,~\@date

    \vspace*{10mm}
    \includegraphics[width=60mm]{UoN_Primary_Logo_CMYK.jpg}
\end{titlepage}
}
\makeatother

% Configure font and layout of the document
\RequirePackage{zi4}
\RequirePackage{libertine}
\RequirePackage{newtxmath}
\RequirePackage{fancyvrb}
\RequirePackage[T1]{fontenc}
\RequirePackage[utf8]{inputenc}
\RequirePackage[a4paper,left=1.5in,top=1in,right=1in,bottom=1in]{geometry}
\RequirePackage{pdflscape}
\renewcommand{\baselinestretch}{1.5}

% Configure support for graphics and tables
\RequirePackage{graphicx}
\graphicspath{{images/} {../images/}}
\RequirePackage{booktabs}
\RequirePackage{tabularx}
\RequirePackage{longtable}
\RequirePackage{caption}
\RequirePackage{subcaption}
\RequirePackage{hypdoc}

% Create a new float for code listings
\RequirePackage{listings}
\lstset{
    basicstyle=\footnotesize\ttfamily,
    frame=single
}

\RequirePackage{float}
\newfloat{lstfloat}{htbp}{lop}
\floatname{lstfloat}{Listing}
\def\lstfloatautorefname{Listing}

% Other packages
\RequirePackage[english=british]{csquotes}
\RequirePackage[nottoc]{tocbibind}
\RequirePackage[style=iso-numeric,sorting=nyt]{biblatex}
\RequirePackage{subfiles}
