//
// Copyright (c) 2016, Acme
// All Rights Reserved
//
// History:
//   1 Feb 16   aparlato   Creation
//

using haystack
using proj
using connExt

**
** HttpModel
**
@Js
const class HttpModel : ConnModel
{
  new make() : super(HttpModel#.pod)
  {
    connProto = Etc.makeDict([
      "dis": "Http Conn",
      "httpConn": Marker.val,
      "username": "",
      "uri": "http://host/http/"
    ])
  }

  override const Dict connProto
  override Bool isPollingSupported() { false }
  override Bool isLearnSupported() { false }
  override Bool isCurSupported() { false }
  override Bool isWriteSupported() { false }
  override Bool isHisSupported() { true }
  override Type? pointAddrType() { Str# }
}

