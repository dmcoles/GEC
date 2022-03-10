  OPT MODULE
  OPT EXPORT

  MODULE 'utility/tagitem','intuition/cghooks','intuition/screens','utility/hooks','graphics/gfx','exec/nodes','graphics/rastport'

OBJECT lbaddnode
  methodid:LONG
  ginfo:PTR TO gadgetinfo
  node:PTR TO ln
  nodeattrs:PTR TO tagitem
ENDOBJECT

OBJECT lbremnode
  methodid:LONG
  ginfo:PTR TO gadgetinfo
  node:PTR TO ln
ENDOBJECT

OBJECT lbeditnode
  methodid:LONG
  ginfo:PTR TO gadgetinfo
  node:PTR TO ln
  nodeattrs:PTR TO tagitem
ENDOBJECT

OBJECT lbsort
  methodid:LONG
  ginfo:PTR TO gadgetinfo
  column:LONG
  UNION
  [direction:LONG]
  [reverse:LONG]   ->for compatibilty only
  ENDUNION
  comparehook:PTR TO hook
ENDOBJECT

OBJECT lbshowchildren
  methodid:LONG
  ginfo:PTR TO gadgetinfo
  node:PTR TO ln
  depth:INT
ENDOBJECT

OBJECT lbhidechildren
  methodid:LONG
  ginfo:PTR TO gadgetinfo
  node:PTR TO ln
  depth:INT
ENDOBJECT

OBJECT lbdrawmsg
  methodid:LONG
  rastport:PTR TO rastport
  drawinfo:PTR TO drawinfo
  bounds:rectangle
  state:LONG
ENDOBJECT

OBJECT lbsortmsg
  typea:LONG
  UNION
  [integera:LONG]
  [texta:LONG]
  ENDUNION
  userdataa:LONG
  typeb:LONG
  UNION
  [integerb:LONG]
  [textb:LONG]
  ENDUNION
  userdatab:LONG
  column:INT
  direction:LONG
ENDOBJECT

OBJECT columninfo
  width:INT
  title:PTR TO CHAR
  flags:LONG
ENDOBJECT

  CONST LBM_ADDNODE=$580001,
        LBM_REMNODE=$580002,
        LBM_EDITNODE=$580003,
        LBM_SORT=$580004,
        LBM_SHOWCHILDREN=$580005,
        LBM_HIDECHILDREN=$580006,
        LBNA_DUMMY=$85003500,
        LBNA_SELECTED=$85003501,
        LBNA_FLAGS=$85003502,
        LBNA_USERDATA=$85003503,
        LBNA_COLUMN=$85003504,
        LBNCA_TEXT=$85003505,
        LBNCA_INTEGER=$85003506,
        LBNCA_FGPEN=$85003507,
        LBNCA_BGPEN=$85003508,
        LBNCA_IMAGE=$85003509,
        LBNCA_SELIMAGE=$8500350A,
        LBNCA_HORIZJUSTIFY=$8500350B,
        LBNCA_JUSTIFICATION=$8500350B,
        LBNA_GENERATION=$8500350C,
        LBNCA_EDITABLE=$8500350D,
        LBNCA_MAXCHARS=$8500350E,
        LBNCA_COPYTEXT=$8500350F,
        LBNA_CHECKBOX=$85003510,
        LBNA_CHECKED=$85003511,
        LBNA_NODESIZE=$85003512,
        LBNCA_EDITTAGS=$85003513,
        LBNCA_RENDERHOOK=$85003514,
        LBNCA_HOOKHEIGHT=$85003516,
        LBNA_MEMPOOL=$85003517,
        LBNA_NUMCOLUMNS=$85003518,
        LBNA_PRIORITY=$85003519,
        LBNCA_COPYINTEGER=$8500351A,
        LBNCA_WORDWRAP=$8500351B,
        LBNCA_VERTJUSTIFY=$8500351C,
        LBNCA_FILLPEN=$8500351D,       
        LBCIA_MEMPOOL=$85003532,
        LBCIA_COLUMN=$85003533,
        LBCIA_TITLE=$85003534,
        LBCIA_WEIGHT=$85003535,
        LBCIA_WIDTH=$85003536,
        LBCIA_FLAGS=$85003537,
        LBNCA_SOFTSTYLE=$85003538, -> OS4ONLY
        LBCIA_USERDATA=$85003539,
        LBCIA_AUTOSORT=$8500353A,
        LBCIA_SORTDIRECTION=$8500353B,
        LBCIA_COMPAREHOOK=$8500353C,
        LBCIA_SORTABLE=$8500353D,
        LBCIA_DRAGGABLESEPARATOR=$8500353E,
        LBCIA_SEPARATOR=$8500353F,
        LBCIA_SORTARROW=$85003540,
        LBCIA_COPYTITLE=$85003541, -> OS4ONLY
        LBCIA_SOFTSTYLE=$85003542, -> OS4ONLY
        LBCIA_HORIZJUSTIFY=$85003543, -> OS4ONLY
        LBFLG_READONLY=1,
        LBFLG_CUSTOMPENS=2,
        LBFLG_HASCHILDREN=4,
        LBFLG_SHOWCHILDREN=8,
        LBFLG_HIDDEN=16,
        LCJ_LEFT=0,
        LCJ_CENTER=1,
        LCJ_RIGHT=2,
        LCJ_CENTRE=1,
        LRJ_BOTTOM=0,
        LRJ_CENTER=1,
        LRJ_TOP=2,
        LRJ_CENTRE=1,
        LB_DRAW=$202,
        LBCB_OK=0,
        LBCB_UNKNOWN=1,
        LBR_NORMAL=0,
        LBR_SELECTED=1,
        CIF_WEIGHTED=0,
        CIF_FIXED=1,
        CIF_DRAGGABLE=2,
        CIF_NOSEPARATORS=4,
        CIF_SORTABLE=8,
        CIF_CENTER=16,
        CIF_RIGHT=32,
        CIF_CENTRE=16,
        LISTBROWSER_DUMMY=$85003000,
        LISTBROWSER_TOP=$85003001,
        LISTBROWSER_RESERVED1=$85003002,
        LISTBROWSER_LABELS=$85003003,
        LISTBROWSER_SELECTED=$85003004,
        LISTBROWSER_SELECTEDNODE=$85003005,
        LISTBROWSER_MULTISELECT=$85003006,
        LISTBROWSER_VERTSEPARATORS=$85003007,
        LISTBROWSER_SEPARATORS=$85003007,
        LISTBROWSER_COLUMNINFO=$85003008,
        LISTBROWSER_MAKEVISIBLE=$85003009,
        LISTBROWSER_VIRTUALWIDTH=$8500300A,
        LISTBROWSER_BORDERLESS=$8500300B,
        LISTBROWSER_VERTICALPROP=$8500300C,
        LISTBROWSER_HORIZONTALPROP=$8500300D,
        LISTBROWSER_LEFT=$8500300E,
        LISTBROWSER_RESERVED2=$8500300F,
        LISTBROWSER_AUTOFIT=$85003010,
        LISTBROWSER_COLUMNTITLES=$85003011,
        LISTBROWSER_SHOWSELECTED=$85003012,
        LISTBROWSER_VPROPTOTAL=$85003013,
        LISTBROWSER_VPROPTOP=$85003014,
        LISTBROWSER_VPROPVISIBLE=$85003015,
        LISTBROWSER_HPROPTOTAL=$85003016,
        LISTBROWSER_HPROPTOP=$85003017,
        LISTBROWSER_HPROPVISIBLE=$85003018,
        LISTBROWSER_MOUSEX=$85003019,
        LISTBROWSER_MOUSEY=$8500301A,
        LISTBROWSER_HIERARCHICAL=$8500301B,
        LISTBROWSER_SHOWIMAGE=$8500301C,
        LISTBROWSER_HIDEIMAGE=$8500301D,
        LISTBROWSER_LEAFIMAGE=$8500301E,
        LISTBROWSER_SCROLLRASTER=$8500301F,
        LISTBROWSER_SPACING=$85003020,
        LISTBROWSER_EDITABLE=$85003021,
        LISTBROWSER_EDITNODE=$85003023,
        LISTBROWSER_EDITCOLUMN=$85003024,
        LISTBROWSER_EDITTAGS=$85003027,
        LISTBROWSER_POSITION=$85003022,
        LISTBROWSER_RELEVENT=$85003025,
        LISTBROWSER_NUMSELECTED=$85003026,
        LISTBROWSER_RELCOLUMN=$85003028,
        LISTBROWSER_HORIZSEPARATORS=$85003029,
        LISTBROWSER_CHECKIMAGE=$8500302A,
        LISTBROWSER_UNCHECKEDIMAGE=$8500302B,
        LISTBROWSER_TOTALNODES=$8500302C,
        LISTBROWSER_MINNODESIZE=$8500302D,
        LISTBROWSER_TITLECLICKABLE=$8500302E,
        LISTBROWSER_MINVISIBLE=$8500302F,
        LISTBROWSER_RESERVED6=$85003030,
        LISTBROWSER_RESERVED7=$85003031,
        LISTBROWSER_PERSISTSELECT=$85003032,
        LISTBROWSER_CURSORSELECT=$85003033,
        LISTBROWSER_CURSORNODE=$85003034,
        LISTBROWSER_FASTRENDER=$85003035,
        LISTBROWSER_TOTALVISIBLENODES=$85003036,
        LISTBROWSER_WRAPTEXT=$85003037,
        LISTBROWSER_MEMPOOL=$85003038, -> OS4ONLY
        LISTBROWSER_BOTTOM=$85003039, -> OS4ONLY
        LISTBROWSER_MAKENODEVISIBLE=$8500303A, -> OS4ONLY
        LISTBROWSER_AUTOVIRTUALWIDTH=$8500303B, -> OS4ONLY
        LISTBROWSER_HINTINFOHOOK=$8500303C, -> OS4ONLY
        LISTBROWSER_SORTCOLUMN=$8500303D,
        LISTBROWSER_STRIPING=$8500303E,
        LISTBROWSER_ALLOWNOSELECTION=$8500303F, -> OS4ONLY
        LISTBROWSER_AUTOWHEEL=$85003040,
        LISTBROWSER_STAYACTIVE=$85003041,
        LISTBROWSER_EDITTRIGGER=$85003042,
        LBP_LINEUP=1,
        LBP_LINEDOWN=2,
        LBP_PAGEUP=3,
        LBP_PAGEDOWN=4,
        LBP_TOP=5,
        LBP_BOTTOM=6,
        LBP_SHIFTLEFT=10,
        LBP_SHIFTRIGHT=11,
        LBP_LEFTEDGE=12,
        LBP_RIGHTEDGE=13,
        LBP_PAGELEFT=14, ->OS4ONLY
        LBP_PAGERIGHT=15, ->OS4ONLY       
        LBRE_NORMAL=1,
        LBRE_HIDECHILDREN=2,
        LBRE_SHOWCHILDREN=4,
        LBRE_EDIT=8,
        LBRE_DOUBLECLICK=16,
        LBRE_CHECKED=32,
        LBRE_UNCHECKED=64,
        LBRE_TITLECLICK=128,
        LBRE_COLUMNADJUST=256,
        LBRE_EDITTABNEXT=512, ->OS4ONLY
        LBRE_EDITTABPREV=1024, -> OS4ONLY
        LBMSORT_FORWARD=0,
        LBMSORT_REVERSE=1,
        LBS_NONE=0,
        LBS_ROWS=1,
        LBS_COLUMNS=2,
        LBS_BOTH=3,
        LBET_DOUBLECLICK=0,
        LBET_DELAYEDSECOND=1