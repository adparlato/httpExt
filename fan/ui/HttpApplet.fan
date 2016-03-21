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
using fresco

**
** HttpApplet
**
@Js
class HttpApplet : ConnApplet
{
  override Bool hasPassword() { true }

  override TagSpec[] connTagSpecs()
  {
    m := Marker.val
    return [
      // hide id/mod
      TagSpec("id",  Ref#,      ["req"]),
      TagSpec("mod", DateTime#, ["req"]),

      // config tags
      TagSpec("dis",          Str#,    ["req", "summary"]),
      TagSpec("uri",          Uri#,    ["req", "summary"]),
      TagSpec("username",     Str#,    ["req"]),
      TagSpec("httpConn",     Marker#, ["req"]),

      // status tags
      TagSpec("disabled",     Str#, ["hidden"]),
      TagSpec("connStatus",   Str#, ["summary", "hidden"]),
      TagSpec("connState",    Str#, ["summary", "hidden"]),
      TagSpec("connErr",      Str#, ["summary", "hidden"]),
    ]
  }
}

