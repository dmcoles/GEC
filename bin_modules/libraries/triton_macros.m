EMOD        �P        	      
FWListSSN     vTROB_LISTVIEW,(),TRAT_FLAGS,TRLV_FWFONT OR TRLV_SHOWSELECTED OR TRLV_NONUMPADKEYS,TRAT_ID,,TRAT_VALUE,,TRLV_TOP,   ListSSN     fTROB_LISTVIEW,(),TRAT_FLAGS,TRLV_SHOWSELECTED OR TRLV_NONUMPADKEYS,TRAT_ID,,TRAT_VALUE,,TRLV_TOP,  SubItem     TRMN_SUB,(),TRAT_ID,   
MenuItem      TRMN_ITEM,(),TRAT_ID,  ObjectBackfillReq      "TRAT_BACKFILL,TRBF_REQUESTERBACK   WindowBackfillReq      "TRWI_BACKFILL,TRBF_REQUESTERBACK   WindowBackfillNone       TRWI_BACKFILL,TRBF_NONE  
EndArray       
EndGroup   
LineArray      2TRGR_VERT,TRGR_ARRAY OR TRGR_ALIGN OR TRGR_CENTER  ColumnArray      4TRGR_HORIZ,TRGR_ARRAY OR TRGR_ALIGN OR TRGR_CENTER   FWListSelC      pTROB_LISTVIEW,(),TRAT_FLAGS,TRLV_FWFONT OR TRLV_SELECT OR TRLV_NOCURSORKEYS,TRAT_ID,,TRAT_VALUE,0,TRLV_TOP,   
ListSelC      `TROB_LISTVIEW,(),TRAT_FLAGS,TRLV_SELECT OR TRLV_NOCURSORKEYS,TRAT_ID,,TRAT_VALUE,0,TRLV_TOP,  GetEntryButton      4TROB_BUTTON,TRBT_GETENTRY,TRAT_TEXT,'',TRAT_ID,()   GetDrawerButton     4TROB_BUTTON,TRBT_GETDRAWER,TRAT_TEXT,'',TRAT_ID,()  GetFileButton     2TROB_BUTTON,TRBT_GETFILE,TRAT_TEXT,'',TRAT_ID,()  EmptyButton     *TROB_BUTTON,NIL,TRAT_TEXT,'',TRAT_ID,()   CenteredButton      LHorizGroupSC,Space,TROB_BUTTON,NIL,TRAT_TEXT,(),TRAT_ID,(),Space,EndGroup  Button      *TROB_BUTTON,NIL,TRAT_TEXT,(),TRAT_ID,()  FWListSelN      pTROB_LISTVIEW,(),TRAT_FLAGS,TRLV_FWFONT OR TRLV_SELECT OR TRLV_NONUMPADKEYS,TRAT_ID,,TRAT_VALUE,0,TRLV_TOP,   
ListSelN      `TROB_LISTVIEW,(),TRAT_FLAGS,TRLV_SELECT OR TRLV_NONUMPADKEYS,TRAT_ID,,TRAT_VALUE,0,TRLV_TOP,  EndProject       TAG_END  TextNR      $TextN(),TRAT_FLAGS,TROF_RIGHTALIGN  FWListSelCN     �TROB_LISTVIEW,(),TRAT_FLAGS,TRLV_FWFONT OR TRLV_SELECT OR TRLV_NOCURSORKEYS OR TRLV_NONUMPADKEYS,TRAT_ID,,TRAT_VALUE,0,TRLV_TOP,  
ListSelCN     vTROB_LISTVIEW,(),TRAT_FLAGS,TRLV_SELECT OR TRLV_NOCURSORKEYS OR TRLV_NONUMPADKEYS,TRAT_ID,,TRAT_VALUE,0,TRLV_TOP,   EndRequester       Space,EndGroup,EndProject  BeginRequester      �WindowTitle(),WindowPosition(),WindowBackfillReq,  WindowFlags(TRWF_NOZIPGADGET OR TRWF_NOSIZEGADGET OR TRWF_NOCLOSEGADGET OR TRWF_NODELZIP OR TRWF_NOESCCLOSE),  VertGroupA,Space,HorizGroupA,Space,GroupBox,ObjectBackfillB  CenteredButtonRE      tHorizGroupSC,Space,TROB_BUTTON,NIL,TRAT_FLAGS,TRBU_RETURNOK OR TRBU_ESCOK,TRAT_TEXT,(),TRAT_ID,(),Space,EndGroup   
ButtonRE      RTROB_BUTTON,NIL,TRAT_TEXT,(),TRAT_ID,(),TRAT_FLAGS,TRBU_RETURNOK OR TRBU_ESCOK   VertGroupAC      $TRGR_VERT,TRGR_ALIGN OR TRGR_CENTER  HorizGroupAC       &TRGR_HORIZ,TRGR_ALIGN OR TRGR_CENTER   ObjectBackfillAB       &TRAT_BACKFILL,TRBF_SHADOW_BACKGROUND   
BeginSub      TRMN_ITEM,()  WindowBackfillAB       &TRWI_BACKFILL,TRBF_SHADOW_BACKGROUND   CenteredInteger     .HorizGroupSC,Space,Integer(),Space,EndGroup   Integer     TROB_TEXT,NIL,TRAT_VALUE,()   ObjectBackfillAF        TRAT_BACKFILL,TRBF_SHADOW_FILL   
FWListROC     rTROB_LISTVIEW,(),TRAT_FLAGS,TRLV_FWFONT OR TRLV_READONLY OR TRLV_NOCURSORKEYS,TRAT_ID,,TRAT_VALUE,0,TRLV_TOP,   ListROC     bTROB_LISTVIEW,(),TRAT_FLAGS,TRLV_READONLY OR TRLV_NOCURSORKEYS,TRAT_ID,,TRAT_VALUE,0,TRLV_TOP,  WindowBackfillAF        TRWI_BACKFILL,TRBF_SHADOW_FILL   
FWListRON     rTROB_LISTVIEW,(),TRAT_FLAGS,TRLV_FWFONT OR TRLV_READONLY OR TRLV_NUNUMPADKEYS,TRAT_ID,,TRAT_VALUE,0,TRLV_TOP,   ListRON     bTROB_LISTVIEW,(),TRAT_FLAGS,TRLV_READONLY OR TRLV_NUNUMPADKEYS,TRAT_ID,,TRAT_VALUE,0,TRLV_TOP,  ScreenTitle     TRWI_SCREENTITLE,()   WindowTitle     TRWI_TITLE,()   CenteredInteger3      .HorizGroupSC,Space,Integer3(),Space,EndGroup  
Integer3      0TROB_TEXT,NIL,TRAT_VALUE,(),TRAT_FLAGS,TRTX_3D  VertGroupA       TRGR_VERT,TRGR_ALIGN   HorizGroupA      TRGR_HORIZ,TRGR_ALIGN  Line      TROB_LINE,  EndLine      
EndGroup   
BeginLine      8TRGR_HORIZ,TRGR_PROPSHARE OR TRGR_ALIGN OR TRGR_CENTER   VertGroupC       TRGR_VERT,TRGR_CENTER  HorizGroupC      TRGR_HORIZ,TRGR_CENTER   BoopsiImageD      LTROB_Image,(),TRAT_MINWIDTH,(),TRAT_MINHEIGHT,(),TRAT_FLAGS,TRIM_BOOPSI   VertGroupE       TRGR_VERT,TRGR_EQUALSHARE  HorizGroupE      TRGR_HORIZ,TRGR_EQUALSHARE   CenteredButtonE     bHorizGroupSC,Space,TROB_BUTTON,NIL,TRAT_FLAGS,TRBU_ESCOK,TRAT_TEXT,(),TRAT_ID,(),Space,EndGroup  ButtonE     @TROB_BUTTON,NIL,TRAT_TEXT,(),TRAT_ID,(),TRAT_FLAGS,TRBU_ESCOK  BeginColumnI       DTRGR_VERT,TRGR_PROPSHARE OR TRGR_ALIGN OR TRGR_CENTER OR TRGR_INDEP  
CheckBox      TROB_CHECKBOX,NIL,TRAT_ID,  CenteredIntegerB      .HorizGroupSC,Space,IntegerB(),Space,EndGroup  
IntegerB      2TROB_TEXT,NIL,TRAT_VALUE,(),TRAT_FLAGS,TRTX_BOLD  ObjectBackfillWin      TRAT_BACKFILL,TRBF_WINDOWBACK  FWListSSCN      �TROB_LISTVIEW,(),TRAT_FLAGS,TRLV_FWFONT OR TRLV_SHOWSELECTED OR TRLV_NOCURSORKEYS OR TRLV_NONUMPADKEYS,TRAT_ID,,TRAT_VALUE,,TRLV_TOP,  
ListSSCN      |TROB_LISTVIEW,(),TRAT_FLAGS,TRLV_SHOWSELECTED OR TRLV_NOCURSORKEYS OR TRLV_NONUMPADKEYS,TRAT_ID,,TRAT_VALUE,,TRLV_TOP,   WindowBackfillWin      TRWI_BACKFILL,TRBF_WINDOWBACK  
MenuFlags     TRMN_FLAGS,()   PubScreenName     TRWI_PUBSCREENNAME,()   WindowFlags     TRWI_FLAGS,()   CenteredIntegerH      .HorizGroupSC,Space,IntegerH(),Space,EndGroup  
IntegerH      8TROB_TEXT,NIL,TRAT_VALUE,(),TRAT_FLAGS,TRTX_HIGHLIGHT   CenteredButtonR     fHorizGroupSC,Space,TROB_BUTTON,NIL,TRAT_FLAGS,TRBU_RETURNOK,TRAT_TEXT,(),TRAT_ID,(),Space,EndGroup   ButtonR     DTROB_BUTTON,NIL,TRAT_TEXT,(),TRAT_ID,(),TRAT_FLAGS,TRBU_RETURNOK   VertGroupS       TRGR_VERT,TRGR_PROPSPACES  HorizGroupS      TRGR_HORIZ,TRGR_PROPSPACES   GetEntryButtonS     4TROB_BUTTON,TRBT_GETENTRY,TRAT_TEXT,(),TRAT_ID,()  GetDrawerButtonS      6TROB_BUTTON,TRBT_GETDRAWER,TRAT_TEXT,(),TRAT_ID,()   GetFileButtonS      4TROB_BUTTON,TRBT_GETFILE,TRAT_TEXT,(),TRAT_ID,()   SubBarlabel      TRMN_SUB,TRMN_BARLABEL   ItemBarlabel       TRMN_ITEM,TRMN_BARLABEL  
EndGroup       TRGR_END,NIL   VertGroupEA      (TRGR_VERT,TRGR_EQUALSHARE OR TRGR_ALIGN  
VertGroup      TRGR_VERT,NIL  HorizGroupEA       *TRGR_HORIZ,TRGR_EQUALSHARE OR TRGR_ALIGN   HorizGroup       TRGR_HORIZ,NIL   
_TextBox       TROB_FRAMEBOX,TRFB_TEXT  TextBox     �_TextBox, ObjectBackfillB, VertGroup, SpaceS, HorizGroupSC, Space, TextN(),TRAT_ID,,TRAT_MINWIDTH,, Space, EndGroup, SpaceS, EndGroup   SpaceB       TROB_SPACE,TRST_BIG  VertGroupEC      *TRGR_VERT,TRGR_EQUALSHARE OR TRGR_CENTER   HorizGroupEC       *TRGR_HORIZ,TRGR_EQUALSHARE OR TRGR_CENTER  
CheckBoxC     ,TROB_CHECKBOX,NIL,TRAT_ID,,TRAT_VALUE,TRUE  
FWListSel     ZTROB_LISTVIEW,(),TRAT_FLAGS,TRLV_FWFONT OR TRLV_SELECT,TRAT_ID,,TRAT_VALUE,0,TRLV_TOP,  ListSel     LTROB_LISTVIEW,(),TRAT_FLAGS,TRLV_SELECT,TRAT_ID,,TRAT_VALUE,0,TRLV_TOP,   
PubScreen     TRWI_PUBSCREEN,()   CustomScreen      TRWI_CUSTOMSCREEN,()  VertGroupSA      (TRGR_VERT,TRGR_PROPSPACES OR TRGR_ALIGN  HorizGroupSA       *TRGR_HORIZ,TRGR_PROPSPACES OR TRGR_ALIGN   SpaceN       TROB_SPACE,TRST_NONE   VertGroupSC      *TRGR_VERT,TRGR_PROPSPACES OR TRGR_CENTER   HorizGroupSC       *TRGR_HORIZ,TRGR_PROPSPACES OR TRGR_CENTER  
SubItemD      0TRMN_SUB,(),MenuFlags(TRMF_DISABLED),TRAT_ID,  
MenuItemD     2TRMN_ITEM,(),MenuFlags(TRMF_DISABLED),TRAT_ID,   
FWListRO      \TROB_LISTVIEW,(),TRAT_FLAGS,TRLV_FWFONT OR TRLV_READONLY,TRAT_ID,,TRAT_VALUE,0,TRLV_TOP,  ListRO      NTROB_LISTVIEW,(),TRAT_FLAGS,TRLV_READONLY,TRAT_ID,,TRAT_VALUE,0,TRLV_TOP,   ObjectBackfillSA        TRAT_BACKFILL,TRBF_SHINE_SHADOW  WindowBackfillSA        TRWI_BACKFILL,TRBF_SHINE_SHADOW  ObjectBackfillSB       $TRAT_BACKFILL,TRBF_SHINE_BACKGROUND  
Disabled       TRAT_DISABLED,TRUE   SpaceS       TROB_SPACE,TRST_SMALL  WindowBackfillSB       $TRWI_BACKFILL,TRBF_SHINE_BACKGROUND  ObjectBackfillFB       $TRAT_BACKFILL,TRBF_FILL_BACKGROUND   WindowBackfillFB       $TRWI_BACKFILL,TRBF_FILL_BACKGROUND   ObjectBackfillSF       TRAT_BACKFILL,TRBF_SHINE_FILL  WindowBackfillSF       TRWI_BACKFILL,TRBF_SHINE_FILL  
MXGadgetR     PTROB_CYCLE,,TRAT_ID,(),TRAT_VALUE,(),TRAT_FLAGS,TRCY_MX OR TRCY_RIGHTLABELS   ObjectBackfillA      TRAT_BACKFILL,TRBF_SHADOW  WindowBackfillA      TRWI_BACKFILL,TRBF_SHADOW  ObjectBackfillB      TRAT_BACKFILL,TRBF_NONE  WindowUnderscore      TRWI_UNDERSCORE,()  
Progress      .TROB_PROGRESS,(),TRAT_ID,(),TRAT_VALUE,()   ObjectBackfillF      TRAT_BACKFILL,TRBF_FILL  WindowBackfillF      TRWI_BACKFILL,TRBF_FILL  WindowDimensions      TRWI_DIMENSIONS,()  
FWListSS      `TROB_LISTVIEW,(),TRAT_FLAGS,TRLV_FWFONT OR TRLV_SHOWSELECTED,TRAT_ID,,TRAT_VALUE,,TRLV_TOP,  ListSS      RTROB_LISTVIEW,(),TRAT_FLAGS,TRLV_SHOWSELECTED,TRAT_ID,,TRAT_VALUE,,TRLV_TOP,   IntegerBox      �GroupBox, ObjectBackfillB, VertGroup, SpaceS, HorizGroupSC, Space, Integer(),TRAT_ID,,TRAT_MINWIDTH,, Space, EndGroup, SpaceS, EndGroup   Space      TROB_SPACE,TRST_NORMAL   CenteredText3     ,HorizGroupSC,Space,Text3(),Space,EndGroup   Text3     .TROB_TEXT,NIL,TRAT_TEXT,,TRAT_FLAGS,TRTX_3D   BeginRequesterGads       Space,EndGroup,Space   ObjectBackfillS      TRAT_BACKFILL,TRBF_SHINE   WindowBackfillS      TRWI_BACKFILL,TRBF_SHINE   FWListROCN      �TROB_LISTVIEW,(),TRAT_FLAGS,TRLV_FWFONT OR TRLV_READONLY OR TRLV_NOCURSORKEYS OR TRLV_NONUMPADKEYS,TRAT_ID,,TRAT_VALUE,0,TRLV_TOP,  
ListROCN      xTROB_LISTVIEW,(),TRAT_FLAGS,TRLV_READONLY OR TRLV_NOCURSORKEYS OR TRLV_NONUMPADKEYS,TRAT_ID,,TRAT_VALUE,0,TRLV_TOP,   
TextRIGHT     .HorizGroupS, Space, TextN(), ID(), EndGroup  BoopsiImage     &TROB_IMAGE,(),TRAT_FLAGS,TRIM_BOOPSI  CenteredTextB     ,HorizGroupSC,Space,TextB(),Space,EndGroup   TextB     0TROB_TEXT,NIL,TRAT_TEXT,,TRAT_FLAGS,TRTX_BOLD   BeginLineI       FTRGR_HORIZ,TRGR_PROPSHARE OR TRGR_ALIGN OR TRGR_CENTER OR TRGR_INDEP   WindowPosition      TRWI_POSITION,()  ProjectDefinition     :=[]   CheckBoxCLEFT     ,HorizGroupS, CheckBoxC(), Space, EndGroup   CheckBoxLEFT      *HorizGroupS, CheckBox(), Space, EndGroup  CenteredTextH     ,HorizGroupSC,Space,TextH(),Space,EndGroup   TextH     4TROB_TEXT,NIL,TRAT_TEXT,,TRAT_FLAGS,TRTX_HIGHLIGHT  NamedSeparatorIN      XHorizGroupEC,Line(TROF_HORIZ),Space,TextT(),TRAT_ID,,Space,Line(TROF_HORIZ),EndGroup   TextN     TROB_TEXT,NIL,TRAT_TEXT,  PaletteGadget     ,TROB_PALETTE,NIL,TRAT_ID,(),TRAT_VALUE,()  SliderGadget      FTROB_SLIDER,NIL,TRSL_MIN,(),TRSL_MAX,(),TRAT_ID,(),TRAT_VALUE,()   
MXGadget      <TROB_CYCLE,,TRAT_ID,(),TRAT_VALUE,(),TRAT_FLAGS,TRCY_MX   CycleGadget     (TROB_CYCLE,,TRAT_ID,(),TRAT_VALUE,()  StringGadget      TROB_STRING,,TRAT_ID,()  
WindowID      TRWI_ID,()  CenteredText      ,HorizGroupSC,Space,TextN(),Space,EndGroup   DropBox     TROB_DROPBOX,NIL,TRAT_ID,()   
GroupBox       TROB_FRAMEBOX,TRFB_GROUPING  TextT     0TROB_TEXT,NIL,TRAT_TEXT,,TRAT_FLAGS,TRTX_TITLE  ID      
TRAT_ID,  
EndColumn      
EndGroup   BeginColumn      6TRGR_VERT,TRGR_PROPSHARE OR TRGR_ALIGN OR TRGR_CENTER  NamedSeparator      ZHorizGroupEC,Space,Line(TROF_HORIZ),Space,TextT(),Space,Line(TROF_HORIZ),Space,EndGroup   VertSeparator      2VertGroupEC,Space,Line(TROF_VERT),Space,EndGroup   HorizSeparator       4HorizGroupEC,Space,Line(TROF_HORIZ),Space,EndGroup   CenteredText_BS     .HorizGroupSC,SpaceB,TextN(),SpaceB,EndGroup   CenteredTextID      .HorizGroupSC,Space,TextID(,),Space,EndGroup  TextID      $TROB_TEXT,NIL,TRAT_TEXT,,TRAT_ID,  NamedSeparatorI     dHorizGroupEC,Space,Line(TROF_HORIZ),Space,TextT(),TRAT_ID,,Space,Line(TROF_HORIZ),Space,EndGroup   NamedFrameBox     *TROB_FRAMEBOX,TRFB_FRAMING,TRAT_TEXT,()   NamedSeparatorN     NHorizGroupEC,Line(TROF_HORIZ),Space,TextT(),Space,Line(TROF_HORIZ),EndGroup   VertGroupSAC       8TRGR_VERT,TRGR_PROPSPACES OR TRGR_ALIGN OR TRGR_CENTER   HorizGroupSAC      8TRGR_HORIZ,TRGR_PROPSPACES OR TRGR_ALIGN OR TRGR_CENTER  
FWListSSC     vTROB_LISTVIEW,(),TRAT_FLAGS,TRLV_FWFONT OR TRLV_SHOWSELECTED OR TRLV_NOCURSORKEYS,TRAT_ID,,TRAT_VALUE,,TRLV_TOP,   ListSSC     fTROB_LISTVIEW,(),TRAT_FLAGS,TRLV_SHOWSELECTED OR TRLV_NOCURSORKEYS,TRAT_ID,,TRAT_VALUE,,TRLV_TOP,  VertGroupEAC       8TRGR_VERT,TRGR_EQUALSHARE OR TRGR_ALIGN OR TRGR_CENTER   HorizGroupEAC      8TRGR_HORIZ,TRGR_EQUALSHARE OR TRGR_ALIGN OR TRGR_CENTER  
BeginMenu     TRMN_TITLE,()   TRITONNAME       'triton.library'      