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
** Http Extension
**
@ExtMeta
{
  name    = "http"
//  app     = HttpApp#
  icon24  = `fan://httpExt/res/img/icon24.png`
  icon72  = `fan://httpExt/res/img/icon72.png`
  depends = ["conn"]
}
const class HttpExt : ConnImplExt
{
  @NoDoc new make(Proj proj) : super(proj, HttpModel()) {}
}
