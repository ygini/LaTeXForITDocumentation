\ProvidesClass{demo}[2016/09/24 Custom class, V1.0]
 
\LoadClass[a4paper,10pt]{report}

\RequirePackage{geometry} % Handle proper geometry with fancy headers
\RequirePackage{color} % Manage colors
\RequirePackage{soul} % Manage highligted text
\RequirePackage{hyperref} % Manage links from ToC + regular URLs
\RequirePackage{titlesec} % Allow title customization in body area
\RequirePackage{titletoc} % Allow title customization in ToC
\RequirePackage{fontspec} % Allow font management
\RequirePackage{parskip} % Avoid auto indent and handle paragraph spacing
\RequirePackage{fancyhdr} % Allow fancy page style
\RequirePackage{tikz} % Draw colors dot for traffic light
\RequirePackage{lastpage} % Needed to print the page count
\RequirePackage{verbatim} % To allow unformated content
\RequirePackage{listings} % Used for code inclusion
\RequirePackage{ltablex} % Improved table management
\RequirePackage{tabularx} % Improved table management
\RequirePackage{float} % Improved figure position
\RequirePackage[frenchb]{babel} % Use french version of automatic content (like the date)

%%% Options

%% Password management

\newcommand{\sourcevolumeforpassword}{\jobname}

%% Traffic light commands

\newcommand{\trafficlightcolor}{
	
}

\newcommand{\trafficlightdescription}{
 	
}

\DeclareOption{white}{
	\renewcommand{\trafficlightcolor}{
		\Large\tikz\draw[black,fill=white] (0,0) circle (6pt) ;
	}
	
	\renewcommand{\trafficlightdescription}{
	No restrictions except copyright
	}
}

\DeclareOption{green}{
	\renewcommand{\trafficlightcolor}{
		\Large\tikz\draw[green,fill=green] (0,0) circle (6pt) ;
	}
	
	\renewcommand{\trafficlightdescription}{
	Allowed for identified peers
	}
}

\DeclareOption{amber}{
	\renewcommand{\trafficlightcolor}{
		\Large\tikz\draw[orange,fill=orange] (0,0) circle (6pt) ;
	}
	
	\renewcommand{\trafficlightdescription}{
	For internal use only
	}
}

\DeclareOption{red}{
	\renewcommand{\trafficlightcolor}{
		\Large\tikz\draw[red,fill=red] (0,0) circle (6pt) ;
	}
	
	\renewcommand{\trafficlightdescription}{
	Do not share
	}
}

\ProcessOptions

%%% Global settings

% Avoid single line as much as possible.
\widowpenalty=10000
\clubpenalty=10000

\setlength{\headsep}{2cm}

% Extend URLs break system to all alphabetic char
\expandafter\def\expandafter\UrlBreaks\expandafter{\UrlBreaks
  \do\a\do\b\do\c\do\d\do\e\do\f\do\g\do\h\do\i\do\j
  \do\k\do\l\do\m\do\n\do\o\do\p\do\q\do\r\do\s\do\t
  \do\u\do\v\do\w\do\x\do\y\do\z\do\A\do\B\do\C\do\D
  \do\E\do\F\do\G\do\H\do\I\do\J\do\K\do\L\do\M\do\N
  \do\O\do\P\do\Q\do\R\do\S\do\T\do\U\do\V\do\W\do\X
  \do\Y\do\Z}
  
% Configure linebreak for code listing with red arrow
\lstset{
	frame=l,
	breaklines=true,
	postbreak=\raisebox{0ex}[0ex][0ex]{\ensuremath{\color{red}\hookrightarrow\space}}
}

%%% Custom font

\definecolor{MainCompanyColor}{RGB}{255, 153, 0}

\defaultfontfeatures{Mapping=tex-text,Scale=MatchLowercase}

\renewcommand\large{\@setfontsize\large{14pt}{14}}
\renewcommand\Large{\@setfontsize\Large{16pt}{16}}
\renewcommand\LARGE{\@setfontsize\LARGE{18pt}{18}}
\renewcommand\huge{\@setfontsize\huge{20pt}{20}}
\renewcommand\Huge{\@setfontsize\Huge{40pt}{40}}

\newfontfamily\titlefont[]{Helvetica Neue UltraLight}
\newfontfamily\mainfont[]{Helvetica Neue Light}
\newfontfamily\footfont[]{Helvetica Neue Light}
\newfontfamily\boldfootfont[]{Helvetica Neue Bold}
\newfontfamily\chapterfont[]{Helvetica Neue UltraLight}
\newfontfamily\sectionfont[]{Helvetica Neue Bold}
\newfontfamily\subsectionfont[]{Helvetica Neue Bold Italic}
\newfontfamily\subsubsectionfont[]{Helvetica Neue Medium}

\setmainfont{Helvetica Neue Light}
%\setmonofont{Lucida Sans Typewriter}

%%% Custom titles

%% Chapters
\titleformat{\chapter}
	{\bfseries\color{MainCompanyColor}\Huge} %Format
	{} %Label before title (like Chaper:)
	{0em} %Separation between label and title body
	{} %Code to insert before title body
	{} %Code to insert after title body

\titlespacing*{\chapter}
	{0pt} %Left margin
	{-10ex} %Vertical space before title
	{7ex} %Separation between title and text

\titlecontents{chapter}
              [0em]
              {\addvspace{15pt}\chapterfont\fontsize{13pt}{13pt}\selectfont}
              {}
              {}
              {\hfill\contentspage}

%% Sections
\titleformat{\section}
	{\bfseries\color{MainCompanyColor}\huge} 
	{\thesection} 
	{5pt} 
	{} 
	{} 

\titlespacing*{\section}
	{0pt} 
	{3.5ex} 
	{2.3ex}

\titlecontents{section}
              [1em]
              {\addvspace{2pt}\sectionfont\color{MainCompanyColor}}
              {}
              {}
              {\hfill\contentspage}

%% Sub Sections
\titleformat{\subsection}
	{\bfseries\color{MainCompanyColor}\LARGE} 
	{\thesubsection} 
	{5pt} 
	{} 
	{} 

\titlespacing*{\subsection}
	{0pt} 
	{3.5ex} 
	{1.5ex}


\titlecontents{subsection}
              [2em]
              {\addvspace{2pt}\subsectionfont\color{MainCompanyColor}}
              {}
              {}
              {\hfill\contentspage}

%% Sub Sub Sections
\titleformat{\subsubsection}
	{\bfseries\color{MainCompanyColor}\Large\itshape} 
	{\thesubsubsection} 
	{5pt} 
	{} 
	{} 

\titlespacing*{\subsubsection}
	{0pt} 
	{3.5ex} 
	{1.5ex}


\titlecontents{subsubsection}
              [3em]
              {\addvspace{2pt}\subsubsectionfont\color{MainCompanyColor}}
              {}
              {}
              {\hfill\contentspage}
              
%%% Custom commands

%% Custom command to manage passwods

\sethlcolor{black} %Used for importpassword if password unaccessible

\newcommand{\importpasswordfrom}[2]{
	\IfFileExists{/Volumes/#1/#2.txt}
		{\input{/Volumes/#1/#2.txt}}
		{\textcolor{white}{\textbf{\hl{ REDACTED }}}}
}

\newcommand{\importpassword}[1]{
	\importpasswordfrom{\sourcevolumeforpassword}{#1}		
}
%%% Custom page style

%% Break URLs on any char
\expandafter\def\expandafter\UrlBreaks\expandafter{\UrlBreaks%  save the current one
  \do\a\do\b\do\c\do\d\do\e\do\f\do\g\do\h\do\i\do\j%
  \do\k\do\l\do\m\do\n\do\o\do\p\do\q\do\r\do\s\do\t%
  \do\u\do\v\do\w\do\x\do\y\do\z\do\A\do\B\do\C\do\D%
  \do\E\do\F\do\G\do\H\do\I\do\J\do\K\do\L\do\M\do\N%
  \do\O\do\P\do\Q\do\R\do\S\do\T\do\U\do\V\do\W\do\X%
  \do\Y\do\Z}
  
%% Custom style for bloc of code

\lstset{
	frame=l,
	breaklines=true,
	postbreak=\raisebox{0ex}[0ex][0ex]{\ensuremath{\color{red}\hookrightarrow\space}}
}
  
%% Custom table of content

%% Custom page style
\fancypagestyle{demo}{
	\renewcommand{\headrulewidth}{0pt}
	
	\fancyhf{}
	
	\fancyhead[L]{
		\textbf{\trafficlightdescription}
	}
	
	\fancyhead[R]{
		\includegraphics[
			height=0.7in,
			keepaspectratio=true]
			{acme}
	}
	
	\fancyfoot[L]{
		\trafficlightcolor
	}
	
	\fancyfoot[R]{
		\thepage/\pageref{LastPage}
	}
	
	\fancyfoot[C]{
		\boldfootfont\fontsize{7pt}{9pt}\selectfont ACME Consulting \footfont 3400 W Riverside Dr, Burbank, CA 91522, USA • T +1 000 000 000 • contact@acme.com • www.acme.com
	}
}

%% Custom first page

\newcommand{\fancytitlepage}[3]{
	\begingroup
		\thispagestyle{demo}	
		\vspace*{\fill}
		
		{\chapterfont\fontsize{40pt}{40pt}\selectfont#2}
		\newline
		\newline
		{\chapterfont\fontsize{25pt}{25pt}\selectfont#3}
		
		\vspace*{\fill}
		
		{\mainfont 
		Written by: #1}
		\newline
		{\mainfont 
		Last update on: \today}
		
		\vspace*{\fill}
	\endgroup
}

%%% Introduction

\newcommand{\customintro}{
\newpage
\begingroup
\thispagestyle{demo}
\mainfont{\chapterfont\fontsize{40pt}{40pt}\selectfont ACME Consulting}
\newline
\newline
\newline
\newline
\newline

{\sectionfont\fontsize{16pt}{16pt}\selectfont\color{MainCompanyColor}Introduction}

Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur non libero cursus, pulvinar ipsum at, porta odio. Sed malesuada orci a nibh faucibus, id venenatis sem iaculis. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Nunc eu justo nisl. Curabitur in est ipsum. Aliquam tempus, eros eleifend eleifend condimentum, nunc odio mattis tellus, eu tincidunt enim magna eget magna. In id turpis sem. Phasellus sollicitudin non enim sit amet pellentesque. Mauris consequat turpis vel mattis rhoncus. In vehicula arcu arcu, porttitor malesuada ex auctor a. Curabitur eget pellentesque quam. Quisque sodales metus fermentum, varius magna vitae, tincidunt nulla.

Sed ex urna, suscipit et ligula ut, volutpat ultrices ligula. Nullam sed neque leo. Maecenas quis velit arcu. Nunc ante lacus, ullamcorper non neque et, vehicula volutpat leo. In ultrices luctus velit, a imperdiet nibh egestas nec. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam molestie ornare fringilla. Fusce sollicitudin, mauris nec suscipit hendrerit, est lectus mollis arcu, vitae imperdiet urna odio sit amet metus. Proin tempus nulla massa, et feugiat libero malesuada maximus. Suspendisse tempor turpis vel suscipit sollicitudin. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Nulla facilisi. Vivamus elementum, libero vel pulvinar venenatis, sem ipsum blandit metus, vel eleifend nunc turpis eget risus. Etiam vehicula, orci id hendrerit hendrerit, ante nisl interdum mauris, vitae elementum lorem dui non tortor.

{\addvspace{2pt}\sectionfont\fontsize{16pt}{16pt}\selectfont\color{MainCompanyColor}Skills}

Curabitur iaculis arcu et eros egestas, viverra pharetra leo convallis. Fusce dui ligula, feugiat at arcu aliquet, tincidunt finibus risus. Duis vulputate fringilla rutrum. Nullam rhoncus purus nisl, et venenatis felis interdum eget. Phasellus et blandit mi. Nam dapibus nisl non nunc porttitor tempus. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Aliquam ut nulla non ex feugiat ullamcorper at a sapien. Nulla tempor felis sed ornare faucibus. Phasellus scelerisque metus eu consequat cursus. Pellentesque rutrum turpis tellus. Nunc lacinia mauris et dignissim porttitor. Quisque at velit a tellus lacinia interdum quis id arcu. Proin sed augue metus. Maecenas lacus turpis, imperdiet quis consectetur vitae, tempus nec odio. Maecenas hendrerit justo ut sapien ultricies congue.

\vfill
\centering
\includegraphics[width=.3\textwidth]{acme}
\vfill

\endgroup}

%%% Ready to go
\makeatletter
  \let\ps@plain\ps@demo
\makeatother
\pagestyle{demo}
