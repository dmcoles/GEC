  OPT MODULE
  OPT EXPORT

  OPT PREPROCESS

#define RASSIZE(w,h) (Mul((h),Shr((w)+15,3) AND $FFFE))

#define BITMAPFLAGS_ARE_EXTENDED(a) ((a AND BMF_CHECKMASK) = BMF_CHECKVALUE)

CONST BITSET=$8000,
      BITCLR=0,
      AGNUS=1,
      DENISE=1

OBJECT bitmap
  bytesperrow:INT  -> This is unsigned
  rows:INT  -> This is unsigned
  flags:CHAR
  depth:CHAR
  pad:INT
  planes[8]:ARRAY OF LONG
ENDOBJECT     /* SIZEOF=40 */

OBJECT rectangle
  minx:INT
  miny:INT
  maxx:INT
  maxy:INT
ENDOBJECT     /* SIZEOF=8 */

OBJECT rect32
  minx:LONG
  miny:LONG
  maxx:LONG
  maxy:LONG
ENDOBJECT     /* SIZEOF=16 */

OBJECT tpoint
  x:INT
  y:INT
ENDOBJECT     /* SIZEOF=4 */

CONST BMB_CLEAR=0,
      BMB_DISPLAYABLE=1,
      BMB_INTERLEAVED=2,
      BMB_STANDARD=3,
      BMB_MINPLANES=4,
      BMB_HIJACKED=7,
      BMB_RTGTAGS=8,
      BMB_RTGCHECK=9,
      BMB_FRIENDISTAG=10,
      BMB_INVALID=11,
      BMF_CLEAR=1,
      BMF_DISPLAYABLE=2,
      BMF_INTERLEAVED=4,
      BMF_STANDARD=8,
      BMF_MINPLANES=16,
      BMF_HIJACKED=128,
      BMF_RTGTAGS=256,
      BMF_RTGCHECK=512,
      BMF_FRIENDISTAG=1024,
      BMF_INVALID=2048,
      BMA_HEIGHT=0,
      BMA_DEPTH=4,
      BMA_WIDTH=8,
      BMA_FLAGS=12,
      BMF_CHECKMASK=$3E0,
      BMF_CHECKVALUE=$700,
      BMATAGS_FRIEND=$80000000,
      BMATAGS_DEPTH=$80000001,
      BMATAGS_PIXELFORMAT=$80000002,
      BMATAGS_CLEAR=$80000003,
      BMATAGS_DISPLAYABLE=$80000004,
      BMATAGS_PRIVATE1=$80000005,
      BMATAGS_NOMEMORY=$80000006,
      BMATAGS_NOSPRITE=$80000007,
      BMATAGS_PRIVATE2=$80000008,
      BMATAGS_PRIVATE3=$80000009,
      BMATAGS_MODEWIDTH=$8000000A,
      BMATAGS_MODEHEIGHT=$8000000B,
      BMATAGS_RENDERFUNC=$8000000C,
      BMATAGS_SAVEFUNC=$8000000D,
      BMATAGS_USERDATA=$8000000E,
      BMATAGS_ALIGNMENT=$8000000F,
      BMATAGS_CONSTANTBYTESPERROW=$80000010,
      BMATAGS_USERPRIVATE=$80000011,
      BMATAGS_PRIVATE4=$80000012,
      BMATAGS_PRIVATE5=$80000013,
      BMATAGS_PRIVATE6=$80000014,
      BMATAGS_PRIVATE7=$80000015,
      BMATAGS_DISPLAYID=$80000032,
      BMATAGS_BITMAPINVISIBLE=$80000037,
      BMATAGS_BITMAPCOLORS=$80000029,
      BMATAGS_BITMAPCOLORS32=$80000043,
      BMATAGS_BITMAPERRORCODE=$8000002A
      