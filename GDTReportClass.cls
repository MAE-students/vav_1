%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%  @LaTeX-class-file{
%     filename        = "GDTReportClass.cls",
%     codetable       = "ISO/ASCII",
%     keywords        = "LaTeX, UniPD, PoliMi, Report",
%     docstring       = "A minimal and academic class for writing reports"
%   }
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Require LaTeX2e format
\NeedsTeXFormat{LaTeX2e}

% Provide class name and description
\ProvidesClass{GDTReportClass}[A minimal and academic class for writing reports]

% Load the 'report' class as a base with default options
\LoadClass[12pt, a4paper]{report}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Page Layout and Geometry Settings
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\RequirePackage[headheight=2cm, bottom=2.0cm, top=2.0cm, left=2.0cm, right=2.0cm, footskip=1.5cm, footnotesep=1cm, a4paper]{geometry}
\raggedbottom  % Prevents stretching vertical spaces to fill the page height

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% External settings and customizations
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\input{XX_dontTouch/01_packages}       % Load required packages
\input{XX_dontTouch/02_customSetup}    % Custom document setup
\input{XX_dontTouch/03_python&Matlab}  % Python & MATLAB syntax highlighting
\input{XX_dontTouch/04_arduinoLanguage} % Arduino language support
\input{XX_dontTouch/05_supercollider}   % Supercollider language support
\input{XX_dontTouch/06_tikZModules}     % Modules tikZ to represent technical diagrams

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Header and Footer Configuration
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\renewcommand{\headrulewidth}{0ex}   % Remove header rule

% Fancy header and footer setup
\newcommand{\setfancyhf}{
    \fancyhf{}  % Clear all fields
    \fancyhead[R]{\footnotesize\leftmark}
    \fancyhead[L]{} 
    \fancyfoot[C]{\thepage}
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Abstract Environment
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Define the abstract environment with custom styling
\renewenvironment{abstract}{
    \centerline{\rule{1.0\textwidth}{0.4pt}} % Horizontal line
    \vspace{5pt}
    \Large\bfseries\scshape{\textcolor{bluePoliMI}{Abstract}} % Styled title
    \hfill\vspace{5pt}\\\normalsize\normalfont
}{
    \begin{tcolorbox}[arc=0pt, boxrule=0pt, colback=bluePoliMI!60, width=\textwidth, colupper=white]
    \end{tcolorbox}
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Front Matter
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Configure front matter settings (title page, abstract, table of contents)
\newcommand{\settingfrontmatter}{ 
    \pagestyle{fancy}               % Enable fancy headers/footers
    \setfancyhf                     % Reset header/footer formatting
    \setlength{\headwidth}{\textwidth} % Match header width to text width
    
    \setcounter{page}{1}            % Start page numbering
    \pagenumbering{Roman}           % Use Roman numerals for front matter
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Main Content
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Configure settings for the main document content
\newcommand{\settingmaincontent}{
    \setlength{\parindent}{0pt}   % Disable paragraph indentation
    \cleardoublepage              % Ensure a clean start for main content

    \setcounter{page}{1}         % Restart page numbering
    \pagenumbering{arabic}       % Use Arabic numerals for main text

    \setcounter{chapter}{0}      % Reset chapter counter
}
