\ProvidesClass{notes}[1999/09/17]
\NeedsTeXFormat{LaTeX2e}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{book}}
\ProcessOptions
\LoadClass[a4paper]{book}

\def\lecturer#1{\gdef\@lecturer{#1}}
\def\@lecturer{Dr.~A.~N.~Other}
\def\maintainer#1{\gdef\@maintainer{#1}}
\def\@maintainer{J.~Random~Student}
\def\titlepic#1{\gdef\@titlepic{#1}}
\def\@titlepic{\vspace*{\stretch{3}}}

\renewcommand{\maketitle}{%
  \begin{titlepage}
    \setlength{\parindent}{0mm}
    \vspace*{\stretch{1}}
    \rule{\linewidth}{1mm}
    \begin{flushright}
      {\LARGE \@title}\\[5mm]
      {\Large \@lecturer}\\[5mm]
      {\large \@date}
    \end{flushright}
    \rule{\linewidth}{1mm}
    \@titlepic
    \begin{flushright}
      These notes are maintained by \@maintainer{}..
    \end{flushright}
  \end{titlepage}}

\newcommand{\alsoavailable}{%
Other sets of notes are available for different courses.  At the time
of typing these courses were:

\begin{center}
\begin{tabular}{l | l}
Probability & Discrete Mathematics \\
Analysis & Further Analysis \\
Methods & Quantum Mechanics \\
Fluid Dynamics 1 & Quadratic Mathematics \\
Geometry & Dynamics of D.E.'s \\
Foundations of QM & Electrodynamics \\
Methods of Math.\ Phys & Fluid Dynamics 2 \\
Waves (etc.) & Statistical Physics \\
General Relativity & Dynamical Systems \\
Combinatorics & Bifurcations in Nonlinear Convection \\
\end{tabular}
\end{center}
}

\newcommand{\archimcopyright}{}

\RequirePackage{amsmath}
\RequirePackage{amsfonts}
\RequirePackage{amsthm}
\RequirePackage{amssymb}
\RequirePackage{times}

\newif\ifpdf
\ifx\pdfoutput\undefined
        \pdffalse               % not running pdflatex
\else
        \pdftrue                % running pdflatex
\fi

\ifpdf
   \pdfcompresslevel=9
   \RequirePackage[pdftex]{graphicx}
   \RequirePackage[pdftex,plainpages=false]{hyperref}
   \DeclareGraphicsExtensions{.pdf,.jpg,.png}
\else
   \RequirePackage{graphicx}
   \DeclareGraphicsExtensions{.eps}
\fi

\newcommand{\norm}[1]{\left\|#1\right\|}
\newcommand{\abs}[1]{\left|#1\right|}
\newcommand{\pd}[2]{\frac{\partial #1}{\partial #2}}
\newcommand{\diff}[2]{\frac{\ud#1}{\ud#2}}
\newcommand{\uD}{\mathrm{D}}
\newcommand{\ud}{\mathrm{d}}
\newcommand{\ddt}[1]{\diff{#1}{t}}
\newcommand{\DDt}[1]{\frac{\uD#1}{\uD t}}
\newcommand{\pddt}[1]{\pd{#1}{t}}
\newcommand{\vect}[1]{\mathbf{#1}}
\newcommand{\vx}{\vect{x}}
\newcommand{\vy}{\vect{y}}
\newcommand{\vf}{\vect{f}}
\newcommand{\vg}{\vect{g}}
\newcommand{\vu}{\vect{u}}
\newcommand{\vU}{\vect{U}}
\newcommand{\vn}{\vect{n}}
\newcommand{\vF}{\vect{F}}
\renewcommand{\@biblabel}[1]{$\circ$}
\newcommand{\R}{\mathbb{R}}
\newcommand{\C}{\mathbb{C}}
\newcommand{\Z}{\mathbb{Z}}
\newcommand{\N}{\mathbb{N}}
\newcommand{\erf}{\operatorname{erf}}
\newcommand{\erfc}{\operatorname{erfc}}
\newcommand{\sgn}{\operatorname{sgn}}
\renewcommand{\bibname}{References}
