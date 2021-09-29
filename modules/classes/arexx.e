OPT MODULE
OPT EXPORT

OBJECT apexecute
  methodid:LONG
  commandstring:PTR TO CHAR
  portname:PTR TO CHAR
  rc:LONG
  rc2:LONG
  result:PTR TO CHAR
  io:LONG
ENDOBJECT

OBJECT arexxcmd
  name:PTR TO CHAR
  id:INT
  func:LONG
  argtemplate:PTR TO CHAR
  flags:LONG
  arglist:PTR TO LONG
  rc:LONG
  rc2:LONG
  result:PTR TO CHAR
ENDOBJECT

CONST AREXX_DUMMY=$85030000,
      AREXX_HOSTNAME=$85030001,
      AREXX_DEFEXTENSION=$85030002,
      AREXX_COMMANDS=$85030003,
      AREXX_ERRORCODE=$85030004,
      AREXX_SIGMASK=$85030005,
      AREXX_NOSLOT=$85030006,
      AREXX_REPLYHOOK=$85030007,
      AREXX_MSGPORT=$85030008,
      RXERR_NO_COMMAND_LIST=1,
      RXERR_NO_PORT_NAME=2,
      RXERR_PORT_ALREADY_EXISTS=3,
      RXERR_OUT_OF_MEMORY=4,
      AM_HANDLEEVENT=$590001,
      AM_EXECUTE=$590002,
      AM_FLUSH=$590003