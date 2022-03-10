  OPT MODULE
  OPT EXPORT
  OPT PREPROCESS

  MODULE 'exec/ports','exec/lists','intuition/intuition','workbench/startup','graphics/rastport','utility/tagitem'

CONST WORKBENCH_WORKBENCH_I=1,
      WBDISK=1,
      WBDRAWER=2,
      WBTOOL=3,
      WBPROJECT=4,
      WBGARBAGE=5,
      WBDEVICE=6,
      WBKICK=7,
      WBAPPICON=8
OBJECT olddrawerdata
  newwindow:nw
  currentx:LONG
  currenty:LONG
ENDOBJECT     /* SIZEOF=56 */
CONST OLDDRAWERDATAFILESIZE=$38

OBJECT drawerdata
  newwindow:nw
  currentx:LONG
  currenty:LONG
  flags:LONG
  viewmodes:INT  -> This is unsigned
ENDOBJECT     /* SIZEOF=62 */

CONST DRAWERDATAFILESIZE=$3E

CONST DDVM_BYDEFAULT=0,
      DDVM_BYICON=1,
      DDVM_BYNAME=2,
      DDVM_BYDATE=3,
      DDVM_BYSIZE=4,
      DDVM_BYTYPE=5,
      DDFLAGS_SHOWMASK=$00000003,
      DDFLAGS_SHOWDEFAULT=$00000000,
      DDFLAGS_SHOWICONS=$00000001,
      DDFLAGS_SHOWALL=$00000002,
      DDFLAGS_SORTMASK=$00000300,
      DDFLAGS_SORTDEFAULT=$00000000,
      DDFLAGS_SORTASC=$00000100,
      DDFLAGS_SORTDESC=$00000200

OBJECT diskobject
  magic:INT  -> This is unsigned
  version:INT  -> This is unsigned
  gadget:gadget
  type:CHAR
  pad_byte:CHAR
  defaulttool:PTR TO CHAR
  tooltypes:PTR TO LONG
  currentx:LONG
  currenty:LONG
  drawerdata:PTR TO drawerdata
  toolwindow:PTR TO CHAR
  stacksize:LONG
ENDOBJECT     /* SIZEOF=78 */

CONST WB_DISKMAGIC=$E310,
      WB_DISKVERSION=1,
      WB_DISKREVISION=1,
      WB_DISKREVISIONMASK=$FF

OBJECT freelist
  numfree:INT
  memlist:lh
ENDOBJECT     /* SIZEOF=16 */

CONST GFLG_GADGBACKFILL=1,
      GADGBACKFILL=1,
      NO_ICON_POSITION=$80000000,
      AM_VERSION=1,
      AMTYPE_APPWINDOW=7,
      AMTYPE_APPICON=8,
      AMTYPE_APPMENUITEM=9,
      AMTYPE_APPWINDOWZONE=10
#define WORKBENCH_NAME 'workbench.library'

OBJECT appmessage
  message:mn
  type:INT  -> This is unsigned
  userdata:LONG
  id:LONG
  numargs:LONG
  arglist:PTR TO wbarg
  version:INT  -> This is unsigned
  class:INT  -> This is unsigned
  mousex:INT
  mousey:INT
  seconds:LONG
  micros:LONG
  reserved[8]:ARRAY OF LONG
ENDOBJECT     /* SIZEOF=86 */

OBJECT appwindow
  private:LONG
ENDOBJECT     /* SIZEOF=4 */

OBJECT appicon
  private:LONG
ENDOBJECT     /* SIZEOF=4 */

OBJECT appmenuitem
  private:LONG
ENDOBJECT     /* SIZEOF=4 */

OBJECT setupcleanuphookmsg
  length:LONG
  state:LONG
ENDOBJECT

OBJECT appiconrendermsg
  rastport:PTR TO rastport
  icon:PTR TO diskobject
  label:PTR TO CHAR
  tags:PTR TO tagitem
  left:INT
  top:INT
  width:INT
  height:INT
  state:LONG
ENDOBJECT

OBJECT appwindowdropzonemsg
  rastport:PTR TO rastport
  dropzonebox:ibox
  id:LONG
  userdata:LONG
  action:LONG
ENDOBJECT

OBJECT iconselectmsg
  length:LONG
  drawer:LONG
  name:PTR TO CHAR
  type:INT
  selected:INT
  tags:PTR TO tagitem
  drawerwindow:PTR TO window
  parentwindow:PTR TO window
  left:INT
  top:INT
  width:INT
  height:INT
ENDOBJECT

OBJECT copydatamsg
  length:LONG
  action:LONG
  sourcelock:LONG
  sourcename:PTR TO CHAR
  destinationlock:LONG
  destinationname:PTR TO CHAR
  destinationx:LONG
  destinationy:LONG
ENDOBJECT

OBJECT copyendmsg
  length:LONG
  action:LONG
ENDOBJECT

OBJECT deletebeginmsg
  length:LONG
  action:LONG
ENDOBJECT

OBJECT deletedatamsg
  length:LONG
  action:LONG
  lock:LONG
  name:PTR TO CHAR
ENDOBJECT

OBJECT deleteendmsg
  length:LONG
  action:LONG
ENDOBJECT

OBJECT textinputmsg
  length:LONG
  action:LONG
  prompt:PTR TO CHAR
ENDOBJECT

CONST AMCLASSICON_OPEN=0,
      AMCLASSICON_COPY=1,
      AMCLASSICON_RENAME=2,
      AMCLASSICON_INFORMATION=3,
      AMCLASSICON_SNAPSHOT=4,
      AMCLASSICON_UNSNAPSHOT=5,
      AMCLASSICON_LEAVEOUT=6,
      AMCLASSICON_PUTAWAY=7,
      AMCLASSICON_DELETE=8,
      AMCLASSICON_FORMATDISK=9,
      AMCLASSICON_EMPTYTRASH=10,
      AMCLASSICON_SELECTED=11,
      AMCLASSICON_UNSELECTED=12,
      AMCLASSICON_EJECTDISK=13,
      WBAPPICONA_SUPPORTSOPEN=$8000A001,
      WBAPPICONA_SUPPORTSCOPY	=$8000A002,
      WBAPPICONA_SUPPORTSRENAME=$8000A003,
      WBAPPICONA_SUPPORTSINFORMATION=$8000A004,
      WBAPPICONA_SUPPORTSSNAPSHOT=$8000A005,
      WBAPPICONA_SUPPORTSUNSNAPSHOT=$8000A006,
      WBAPPICONA_SUPPORTSLEAVEOUT=$8000A007,
      WBAPPICONA_SUPPORTSPUTAWAY=$8000A008,
      WBAPPICONA_SUPPORTSDELETE=$8000A009,
      WBAPPICONA_SUPPORTSFORMATDISK=$8000A00A,
      WBAPPICONA_SUPPORTSEJECTDISK=$8000A09E,
      WBAPPICONA_SUPPORTSEMPTYTRASH=$8000A00B,
      WBAPPICONA_PROPAGATEPOSITION=$8000A00C,
      WBAPPICONA_RENDERHOOK=$8000A00D,
      WBAPPICONA_NOTIFYSELECTSTATE=$8000A00E,
      WBAPPMENUA_COMMANDKEYSTRING=$8000A00F,
      WBAPPMENUA_GETKEY=$8000A041,
      WBAPPMENUA_USEKEY=$8000A042,
      WBAPPMENUA_GETTITLEKEY=$8000A04D,
      WBOPENA_ARGLOCK=$8000A010,
      WBOPENA_ARGNAME=$8000A011,
      WBOPENA_SHOW=$8000A04B,
      WBOPENA_VIEWBY=$8000A04C,
      WBCTRLA_ISOPEN=$8000A012,
      WBCTRLA_DUPLICATESEARCHPATH=$8000A013,
      WBCTRLA_FREESEARCHPATH=$8000A014,
      WBCTRLA_GETDEFAULTSTACKSIZE=$8000A015,
      WBCTRLA_SETDEFAULTSTACKSIZE=$8000A016,
      WBCTRLA_REDRAWAPPICON=$8000A017,
      WBCTRLA_GETPROGRAMLIST=$8000A018,
      WBCTRLA_FREEPROGRAMLIST=$8000A019,
      WBCTRLA_GETSELECTEDICONLIST=$8000A024,
      WBCTRLA_FREESELECTEDICONLIST=$8000A025,
      WBCTRLA_GETOPENDRAWERLIST=$8000A026,
      WBCTRLA_FREEOPENDRAWERLIST=$8000A027,
      WBCTRLA_GETHIDDENDEVICELIST=$8000A02A,
      WBCTRLA_FREEHIDDENDEVICELIST=$8000A02B,
      WBCTRLA_ADDHIDDENDEVICENAME=$8000A02C,
      WBCTRLA_REMOVEHIDDENDEVICENAME=$8000A02D,
      WBCTRLA_GETTYPERESTARTTIME=$8000A02F,
      WBCTRLA_SETTYPERESTARTTIME=$8000A030,
      WBCTRLA_GETCOPYHOOK=$8000A045,
      WBCTRLA_SETCOPYHOOK=$8000A046,
      WBCTRLA_GETDELETEHOOK=$8000A047,
      WBCTRLA_SETDELETEHOOK=$8000A048,
      WBCTRLA_GETTEXTINPUTHOOK=$8000A049,
      WBCTRLA_SETTEXTINPUTHOOK=$8000A04A,
      WBCTRLA_ADDSETUPCLEANUPHOOK=$8000A04E,
      WBCTRLA_REMSETUPCLEANUPHOOK=$8000A04F,
      WBCTRLA_SETGLOBALFLAGS=$8000A082,
      WBCTRLA_GETGLOBALFLAGS=$8000A083,
      WBCTRLA_GETDISKINFOHOOK=$8000A09F,
      WBCTRLA_SETDISKINFOHOOK=$8000A0A0,
      SCHMSTATE_TRYCLEANUP=0,
      SCHMSTATE_CLEANUP=1,
      SCHMSTATE_SETUP=2,
      WBF_DRAWERPOSMASK=3,
      WBF_DRAWERPOSFREE=0,
      WBF_DRAWERPOSHEAD=1,
      WBF_DRAWERPOSTAIL=2,
      WBF_BOUNDTEXTVIEW=$80,
      WBF_OLDDATESFIRST=$10000,
      WBDZA_LEFT=$8000A01A,
      WBDZA_RELRIGHT=$8000A01B,
      WBDZA_TOP=$8000A01C,
      WBDZA_RELBOTTOM=$8000A01D,
      WBDZA_WIDTH=$8000A01E,
      WBDZA_RELWIDTH=$8000A01F,
      WBDZA_HEIGHT=$8000A020,
      WBDZA_RELHEIGHT=$8000A021,
      WBDZA_BOX=$8000A022,
      WBDZA_HOOK=$8000A023,
      WBOBJA_TYPE=$8000A056,
      WBOBJA_LEFT=$8000A057,
      WBOBJA_TOP=$8000A058,
      WBOBJA_WIDTH=$8000A059,
      WBOBJA_HEIGHT=$8000A05A,
      WBOBJA_STATE=$8000A05B,
      WBOBJA_ISFAKE=$8000A05C,
      WBOBJA_NAME=$8000A05D,
      WBOBJA_NAMESIZE=$8000A05E,
      WBOBJA_FULLPATH=$8000A05F,
      WBOBJA_FULLPATHSIZE=$8000A060,
      WBOBJA_ISLINK=$8000A061,
      WBOBJA_DRAWERPATH=$8000A062,
      WBOBJA_DRAWERPATHSIZE=$8000A063,
      WBOBJA_DRAWERFLAGS=$8000A074,
      WBOBJA_DRAWERMODES=$8000A075,
      WBO_NONE=0,
      WBO_DRAWER=1,
      WBO_ICON=2,
      WBA_RESERVED1=$8000A028,
      WBA_RESERVED2=$8000A029,
      WBA_RESERVED3=$8000A02E,
      WBA_RESERVED4=$8000A031,
      WBA_RESERVED5=$8000A032,
      WBA_RESERVED6=$8000A033,
      WBA_RESERVED7=$8000A034,
      WBA_RESERVED8=$8000A035,
      WBA_RESERVED9=$8000A036,
      WBA_RESERVED10=$8000A037,
      WBA_RESERVED11=$8000A038,
      WBA_RESERVED12=$8000A039,
      WBA_RESERVED13=$8000A03A,
      WBA_RESERVED14=$8000A03B,
      WBA_RESERVED15=$8000A03C,
      WBA_RESERVED16=$8000A03D,
      WBA_RESERVED17=$8000A03E,
      WBA_RESERVED18=$8000A03F,
      WBA_RESERVED19=$8000A040,
      WBA_RESERVED20=$8000A043,
      WBA_RESERVED21=$8000A044,
      WBA_RESERVED22=$8000A050,
      WBA_RESERVED23=$8000A051,
      WBA_RESERVED24=$8000A052,
      WBA_RESERVED25=$8000A053,
      WBA_RESERVED26=$8000A054,
      WBA_RESERVED27=$8000A055,
      WBA_RESERVED28=$8000A064,
      WBA_RESERVED29=$8000A065,
      WBA_RESERVED30=$8000A066,
      WBA_RESERVED31=$8000A067,
      WBA_RESERVED32=$8000A068,
      WBA_RESERVED33=$8000A069,
      WBA_RESERVED34=$8000A06C,
      WBA_RESERVED35=$8000A06D,
      WBA_RESERVED36=$8000A070,
      WBA_RESERVED37=$8000A071,
      WBA_RESERVED38=$8000A072,
      WBA_RESERVED39=$8000A073,
      WBA_RESERVED40=$8000A076,
      WBA_RESERVED41=$8000A077,
      WBA_RESERVED42=$8000A078,
      WBA_RESERVED43=$8000A079,
      WBA_RESERVED44=$8000A07A,
      WBA_RESERVED45=$8000A07B,
      WBA_RESERVED46=$8000A07C,
      WBA_RESERVED47=$8000A07D,
      WBA_RESERVED48=$8000A07E,
      WBA_RESERVED49=$8000A07F,
      WBA_RESERVED50=$8000A080,
      WBA_RESERVED51=$8000A081,
      WBA_RESERVED52=$8000A082,
      WBA_RESERVED53=$8000A083,
      WBA_RESERVED54=$8000A084,
      WBA_RESERVED55=$8000A085,
      WBA_RESERVED56=$8000A086,
      WBA_RESERVED57=$8000A087,
      WBA_RESERVED58=$8000A088,
      WBA_RESERVED59=$8000A089,
      WBA_RESERVED60=$8000A08A,
      WBA_RESERVED61=$8000A08B,
      WBA_RESERVED62=$8000A08C,
      WBA_RESERVED63=$8000A08D,
      WBA_RESERVED64=$8000A08E,
      WBA_RESERVED65=$8000A08F,
      WBA_RESERVED66=$8000A090,
      WBA_RESERVED67=$8000A091,
      WBA_RESERVED68=$8000A092,
      WBA_RESERVED69=$8000A093,
      WBA_RESERVED70=$8000A094,
      WBA_RESERVED71=$8000A095,
      WBA_RESERVED72=$8000A096,
      WBA_RESERVED73=$8000A097,
      WBA_RESERVED74=$8000A098,
      WBA_RESERVED75=$8000A099,
      WBA_RESERVED76=$8000A09A,
      WBA_RESERVED77=$8000A09B,
      WBA_RESERVED78=$8000A09C,
      WBA_RESERVED79=$8000A09D


