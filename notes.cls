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
      These notes are maintained by \@maintainer{}.\\
      Comments and corrections to \texttt{soc-archim-notes@lists.cam.ac.uk}.
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

They may be downloaded from
\begin{center}
\texttt{http://www.istari.ucam.org/maths/} \quad or \\
\texttt{http://www.cam.ac.uk/CambUniv/Societies/archim/notes.htm}
\end{center}
or you can email \texttt{soc-archim-notes@lists.cam.ac.uk} to get a
copy of the sets you require.}

\newcommand{\archimcopyright}{%
\clearpage
\thispagestyle{empty}
\begin{center}
\large
Copyright (c) The Archimedeans, Cambridge University.\\
All rights reserved.
\end{center}

Redistribution and use of these notes in electronic or printed form,
with or without modification, are permitted provided that the
following conditions are met:

\begin{enumerate}
\item Redistributions of the electronic files must retain the above copyright
   notice, this list of conditions and the following disclaimer.
\item Redistributions in printed form must reproduce the above copyright
   notice, this list of conditions and the following disclaimer.
 \item All materials derived from these notes must display the
   following acknowledgement:

\begin{center}
  \parbox{4in}{ This product includes notes developed by The
    Archimedeans, Cambridge University and their contributors.}
\end{center}

\item Neither the name of The Archimedeans nor the names of their contributors
   may be used to endorse or promote products derived from these notes.
\item Neither these notes nor any derived products may be sold on a
   for-profit basis, although a fee may be required for the physical act
   of copying.
\item You must cause any edited versions to carry prominent notices
   stating that you edited them and the date of any change.
\end{enumerate}

THESE NOTES ARE PROVIDED BY THE ARCHIMEDEANS AND CONTRIBUTORS ``AS
IS'' AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED
TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A
PARTICULAR PURPOSE ARE DISCLAIMED.  IN NO EVENT SHALL THE ARCHIMEDEANS
OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,
SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES HOWEVER CAUSED AND ON ANY
THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
(INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
OF THESE NOTES, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
\clearpage}

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
