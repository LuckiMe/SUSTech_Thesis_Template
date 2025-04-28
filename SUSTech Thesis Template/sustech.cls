\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{sustech}[SUSTech Thesis Class]
\LoadClass[a4paper,12pt]{article}

% 页面设置
\RequirePackage{geometry}
\geometry{a4paper, left=3cm, right=2.5cm, top=2.5cm, bottom=2cm}
% \setlength{\textheight}{25cm}

% 字体字号
\RequirePackage[UTF8]{ctex}  % 中文字体 ctex默认宋体
\RequirePackage{xeCJK}
\setCJKmainfont{simsun.ttc}[AutoFakeBold]  % 宋体常规
\setCJKfamilyfont{kaiti}{simkai.ttf}  % 楷体常规
\newcommand{\kaiti}{\CJKfamily{kaiti}}
\RequirePackage{times}  % 英文字体 Times New Roman
\setmainfont{Times New Roman}

\renewcommand{\normalsize}{\fontsize{12pt}{18pt}\selectfont}
\newcommand{\xiaochu}{\fontsize{36pt}{45pt}\selectfont}  % 小初, 1.25倍行距
\newcommand{\erhao}{\fontsize{22pt}{33pt}\selectfont}  % 二号, 1.5倍行距
\newcommand{\xiaoer}{\fontsize{18pt}{27pt}\selectfont}  % 小二, 1.5倍行距
\newcommand{\sanhao}{\fontsize{16pt}{24pt}\selectfont}  % 三号, 1.5倍行距
\newcommand{\xiaosan}{\fontsize{15pt}{22pt}\selectfont}  % 小三, 1.5倍行距
\newcommand{\sihao}{\fontsize{14pt}{21pt}\selectfont}  % 四号, 1.5 倍行距
\newcommand{\xiaosi}{\fontsize{12pt}{18pt}\selectfont}  % 小四, 1.5倍行距
\newcommand{\wuhao}{\fontsize{10.5pt}{15.75pt}\selectfont}  % 五号, 1.5倍行距
\newcommand{\xiaowu}{\fontsize{9pt}{13.5pt}\selectfont}  % 小五, 1.5倍行距

\RequirePackage{setspace}
\setlength{\parindent}{2em}  % 设置段落缩进

% 内封面
\newcommand{\thesistitle}{}
\newcommand{\thesisauthor}{}
\newcommand{\studentID}{}
\newcommand{\department}{}
\newcommand{\major}{}
\newcommand{\advisor}{}
\newcommand{\completiontime}{}

\renewcommand{\title}[1]{\renewcommand{\thesistitle}{#1}}
\renewcommand{\author}[1]{\renewcommand{\thesisauthor}{#1}}
\renewcommand{\studentID}[1]{\renewcommand{\studentID}{#1}}
\renewcommand{\department}[1]{\renewcommand{\department}{#1}}
\renewcommand{\major}[1]{\renewcommand{\major}{#1}}
\renewcommand{\advisor}[1]{\renewcommand{\advisor}{#1}}
\renewcommand{\completiontime}[1]{\renewcommand{\completiontime}{#1}}

\RequirePackage{adjustbox}
\newlength\myheight
\newcommand\Mysavedprevdepth{}%

\ifisChinese
    \newcommand\UnderlineCentered[3]{%
        \begin{adjustbox}{minipage=[t]{\dimexpr#1\relax},gstore totalheight=\myheight,margin=0pt}%
            \centering\leavevmode#3\par\xdef\Mysavedprevdepth{\the\prevdepth}%
        \end{adjustbox}%
        \hspace*{-\dimexpr#1\relax}%
        \begin{adjustbox}{minipage=[t][\myheight]{\dimexpr#1\relax},margin=0pt}%
            \vphantom{Eg}\lower\dimexpr#2\relax
            \hbox to \hsize{\leaders\hrule\hfill\kern0pt}\par
            \kern-\dimexpr#2\relax
            \xleaders\vbox to\baselineskip {\vspace{1cm} \hbox{\lower\dimexpr#2\relax\hbox to \hsize{\leaders\hrule\hfill\kern0pt}
            \kern-\dimexpr#2 - 5pt\relax}
            }\vfill
            \kern\Mysavedprevdepth
        \end{adjustbox}%
    }%
    \newcommand\info[2]{\makebox[3cm][s]{\sanhao \textbf{#1}} \UnderlineCentered{9cm}{2mm}{\centering \sanhao #2}}
    \newcommand\topinfo[1]{\makebox[1.5cm][s]{\xiaosi #1} \underline{\hspace{2cm}}}
    
    \renewcommand{\maketitle}{
        \begin{titlepage}
            \centering
    
            \noindent
            \topinfo{分类号} \hfill \topinfo{编号}  
            \newline
            \topinfo{U~D~C} \hfill \topinfo{密级}  
            \newline
            \vspace*{1cm}
            
            \includegraphics[width=1.0\linewidth]{Images/SUSTech_title_Ch.png}
            
            \vspace*{1cm}
            
            % 论文标题
            {\bfseries
            {\xiaochu \bfseries 本科生毕业设计（论文）}  
            \vspace*{2cm}
            
            % 学生信息 
            \info{题目：}{\thesistitle}  
            \vspace*{1cm}
            
            \info{姓名：}{\thesisauthor}  
            \vspace*{0.5cm}
            
            \info{学号：}{\studentID}  
            \vspace*{0.5cm}
            
            \info{系别：}{\department}  
            \vspace*{0.5cm}
            
            \info{专业：}{\major}  
            \vspace*{0.5cm}
            
            \info{指导老师：}{\advisor}} 
            \vspace*{2cm}
            
            {\sanhao \completiontime}
        
            \vfill
        \end{titlepage}
    }
\else
    \newcommand\UnderlineCentered[3]{%
        \begin{adjustbox}{minipage=[t]{\dimexpr#1\relax},gstore totalheight=\myheight,margin=0pt}%
            \centering\leavevmode#3\par\xdef\Mysavedprevdepth{\the\prevdepth}%
        \end{adjustbox}%
        \hspace*{-\dimexpr#1\relax}%
        \begin{adjustbox}{minipage=[t][\myheight]{\dimexpr#1\relax}, margin=0pt}%
            \vphantom{Eg}
            \lower\dimexpr#2\relax
            \hbox to \hsize{\leaders\hrule\hfill\kern0pt} \par
            \kern-\dimexpr#2 \relax
            \xleaders
            \vbox to \baselineskip{
                \vspace{1cm}
                \hbox{
                    \lower\dimexpr#2\relax
                    \hbox to \hsize{\leaders\hrule\hfill\kern0pt} \par
                    \kern-\dimexpr#2 - 5pt\relax
                }
            }
            \vfill
            \kern\Mysavedprevdepth
        \end{adjustbox}%
    }%
    
    \newcommand\info[2]{\makebox[3cm][r]{\sanhao \textbf{#1}} \UnderlineCentered{9cm}{2mm}{\centering \sanhao #2}}
    
    \renewcommand{\maketitle}{
        \begin{titlepage}
            \centering
    
            \noindent
            CLC \hfill Number \underline{\hspace{2cm}}  
            \newline
            UDC \hfill Available for reference \quad $\Box$ \ Yes \quad $\Box$ \ No 
            \newline
            \vspace*{0.5cm}
            
            \includegraphics[width=1.0\linewidth]{Images/SUSTech_title_En.png}

            \vspace*{1cm}
            
            % 论文标题
            {\bfseries
            {\xiaochu Undergraduate Thesis}  
            \vspace*{2cm}
            
            % 学生信息 
            \info{Thesis Title: }{\thesistitle}  
            \vspace*{1cm}
            
            \info{Student Name: }{\thesisauthor}  
            \vspace*{0.5cm}
            
            \info{Student ID: }{\studentID}  
            \vspace*{0.5cm}
            
            \info{Department: }{\department}  
            \vspace*{0.5cm}
            
            \info{Program: }{\major}  
            \vspace*{0.5cm}
            
            \info{Thesis Advisor: }{\advisor}}
            \vspace*{2cm}
    
            {\sanhao Date: \ \completiontime}
        
            \vfill
        \end{titlepage}
    }
\fi

% 摘要及关键词
\newenvironment{abstractC}
  {\noindent \heiti \sanhao \textbf{[摘要]} \par
   \setlength{\parindent}{2em} \songti \sihao}
  {\par}

\newenvironment{keywordsC}
  {\noindent \heiti \sanhao \textbf{[关键词]} 
   \setlength{\parindent}{2em} \songti \sihao}
  {\par}

\newenvironment{abstractE}
  {\noindent \sanhao \textbf{[ABSTRACT]} \par
   \rmfamily \sihao}
  {\par}

\newenvironment{keywordsE}
  {\noindent \sanhao \textbf{[Key words]} 
   \rmfamily \sihao}
  {\par}


% 目录格式
\RequirePackage{tocloft}
\setcounter{tocdepth}{3}  % 至多显示三级标题
\renewcommand{\cftbeforesecskip}{1.5ex}  % 行距
% \renewcommand{\cftbeforesubsecskip}{1.5ex}
% \renewcommand{\cftbeforesubsubsecskip}{1.5ex}
\RequirePackage[
    colorlinks=true,        % 彩色链接
    linkcolor=black,        % 目录、交叉引用链接颜色
    citecolor=black,        % 文献引用颜色
    urlcolor=black,         % URL 链接颜色
    pdfstartview=FitH,      % PDF 打开时缩放到适合宽度
    bookmarks=true,         % 生成书签
    bookmarksopen=false,     % 展开书签
    bookmarksnumbered=true, % 书签编号
    breaklinks=true,        % 允许链接换行（对长链接）
    backref=true,           % 启用“回退引用”
    hyperindex=true         % 超链接索引
]{hyperref}


\ifisChinese
    \renewcommand{\contentsname}{\centerline{\xiaoer \heiti \textbf{目~~~录}}}
    \renewcommand{\listfigurename}{\centerline{\xiaoer \textbf{图~~~目~~~录}}}
    \renewcommand{\listtablename}{\centerline{\xiaoer \textbf{表~~~目~~~录}}}
\else
    \renewcommand{\contentsname}{\centerline{\xiaoer \textbf{CONTENTS}}}
    \renewcommand{\listfigurename}{\centerline{\xiaoer \textbf{FIGURE CONTENTS}}}
    \renewcommand{\listtablename}{\centerline{\xiaoer \textbf{TABLE CONTENTS}}}
\fi

\renewcommand{\cftsecfont}{\sihao \bfseries}
\renewcommand{\cftsecpagefont}{\sihao \bfseries}
\renewcommand{\cftsecindent}{0pt}

\renewcommand{\cftsubsecfont}{\sihao}
\renewcommand{\cftsubsecpagefont}{\sihao}
\renewcommand{\cftsubsecindent}{2em}

\renewcommand{\cftsubsubsecfont}{\sihao}
\renewcommand{\cftsubsubsecpagefont}{\sihao}
\renewcommand{\cftsubsubsecindent}{4em}

\renewcommand{\cftfigfont}{\sihao}
\renewcommand{\cftfigpagefont}{\sihao}

\renewcommand{\cfttabfont}{\sihao}
\renewcommand{\cfttabpagefont}{\sihao}

\ifisChinese
    \renewcommand{\cftfigpresnum}{图~}
    \renewcommand{\cftfigaftersnum}{.}
    \settowidth{\cftfignumwidth}{图~88.\quad}
    
    \renewcommand{\cfttabpresnum}{表~}
    \renewcommand{\cfttabaftersnum}{.}
    \settowidth{\cfttabnumwidth}{表~88.\quad}
\else
    \renewcommand{\cftfigpresnum}{Fig~}
    \renewcommand{\cftfigaftersnum}{.}
    \settowidth{\cftfignumwidth}{Fig~88.\quad}
    
    \renewcommand{\cfttabpresnum}{Table~}
    \renewcommand{\cfttabaftersnum}{.}
    \settowidth{\cfttabnumwidth}{Table~88.\quad}
\fi


% 标题格式
\RequirePackage{titlesec}
\ifisChinese
    \titleformat{\section}{\bfseries \heiti \sanhao}{\thesection}{0.5em}{}
    \titleformat{\subsection}{\bfseries \heiti \sihao}{\thesubsection}{0.5em}{}
    \titleformat{\subsubsection}{\bfseries \heiti \xiaosi}{\thesubsubsection}{0.5em}{}
    \titleformat{name=\section,numberless}{\centering \bfseries \heiti \sanhao}{}{0pt}{}  % 居中，无编号，加粗，黑体，三号字
\else
    \titleformat{\section}{\bfseries \sanhao}{\thesection}{0.5em}{}
    \titleformat{\subsection}{\bfseries \sihao}{\thesubsection}{0.5em}{}
    \titleformat{\subsubsection}{\bfseries \xiaosi}{\thesubsubsection}{0.5em}{}
    \titleformat{name=\section,numberless}{\centering \bfseries \sanhao}{}{0pt}{}
\fi


% 页眉页脚
\RequirePackage{fancyhdr}
\pagestyle{fancy}
\fancyhf{}  % 清空默认页眉页脚
\fancyfoot[C]{\wuhao \rmfamily \thepage}  % 页码居中，五号新罗马体
\renewcommand{\headrulewidth}{0pt}  % 移除页眉的横线
% \renewcommand{\footrulewidth}{0pt}  % 移除页脚的横线
% \setlength{\footskip}{1.5cm}  % 调整页脚与正文的距离，确保下边距 2cm


% 正文开始页码
\newcommand{\nopagenumber}{\pagenumbering{gobble}}
\newcommand{\startpagenumber}{\clearpage \pagenumbering{arabic}}

% 公式设置
\RequirePackage{etoolbox}
% \everydisplay{\setstretch{1.2}}
% \setlength{\arraycolsep}{7pt}

% 图片设置
\RequirePackage{caption}
\RequirePackage{chngcntr} % 控制计数器
\DeclareCaptionFont{wuhao}{\wuhao}
\DeclareCaptionFont{heiti}{\heiti}
\renewcommand{\thefigure}{\arabic{figure}}  % 全文统一编号，如 1, 2
% \counterwithin{figure}{section} % 让 figure 编号依附于 section
% \renewcommand{\thefigure}{\thesection.\arabic{figure}} % 按章编号，如 1.1, 1.2
\ifisChinese
    \captionsetup[figure]{  % 设置图题格式：五号宋体加黑
        labelfont={bf,wuhao},  % 加粗五号字
        labelsep=period,  % space: 使用空格作为图序与图题之间的分隔符
        name={图},
        textfont={bf,wuhao},  % 五号加黑宋体
        justification=centering,  % 图题居中
    }
    \captionsetup[subfigure]{
        labelfont={bf,wuhao},
        labelsep=space,
        textfont={bf,wuhao},
        justification=centering,
    }
\else
    \captionsetup[figure]{
        labelfont={bf,wuhao},
        labelsep=period,  % space
        name={Fig},
        textfont={bf,wuhao},
        justification=centering,
    }
    \captionsetup[subfigure]{
        labelfont={bf,wuhao},
        labelsep=space,
        textfont={bf,wuhao},
        justification=centering,
    }
\fi

% 表格设置
\RequirePackage{booktabs}
\RequirePackage{multirow}
\renewcommand{\thetable}{\arabic{table}}  % 全文统一编号，如 1, 2
% \counterwithin{table}{section} % 让 table 编号依附于 section
% \renewcommand{\thetable}{\thesection.\arabic{table}} % 按章编号，如 1.1, 1.2
\ifisChinese
    \captionsetup[table]{  % 设置表格标题格式：五号宋体加黑
        labelfont={bf,wuhao},  % 表序：加粗五号字
        labelsep=period,  % space: 使用空格作为表序与表题之间的分隔符
        name={表},  % 使用表格前缀
        textfont={bf,wuhao},  % 表题：五号加黑宋体
        justification=centering,  % 表题居中
    }
\else
    \captionsetup[table]{
        labelfont={bf,wuhao},
        labelsep=period,  % space
        name={Table},
        textfont={bf,wuhao},
        justification=centering,
    }
\fi
\newcommand{\settablefont}{\centering \wuhao}  % 表格内容五号字

% 注释
\newcommand{\footnoteformat}{\xiaowu}  % 注释为小五号字

% 参考文献
\RequirePackage[numbers,sort&compress]{natbib}
% \RequirePackage{gbt7714}
\renewcommand{\bibsection}{
    \begin{center}
        \ifisChinese 
            {\sanhao \heiti \textbf{参考文献}}
        \else 
            {\sanhao \textbf{References}}
        \fi
    \end{center}
}
\renewcommand{\bibname}{\wuhao \rmfamily References}  % 参考文献为五号字
\AtBeginEnvironment{thebibliography}{\wuhao}
\ifisChinese
    \newcommand{\Reference}{\addcontentsline{toc}{section}{参考文献} \bibliography{references} \bibliographystyle{gbt7714-numerical}}
    \renewcommand{\cite}[1]{\textsuperscript{\citep{#1}}}  % 右上角标
\else
    \newcommand{\Reference}{\addcontentsline{toc}{section}{References} \bibliography{references} \bibliographystyle{ieeetr}}
\fi

% 附录和致谢
\ifisChinese
    \newcommand{\Appendix}{\addcontentsline{toc}{section}{附~~~录} \section*{附~~~录}}
    \newcommand{\Acknowledgement}{\addcontentsline{toc}{section}{致~~~谢} \section*{致~~~谢}}
\else
    \newcommand{\Appendix}{\addcontentsline{toc}{section}{Appendix} \section*{Appendix}}
    \newcommand{\Acknowledgement}{\addcontentsline{toc}{section}{Acknowledgement} \section*{Acknowledgement}}
\fi

\endinput
