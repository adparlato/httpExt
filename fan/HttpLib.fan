//
// Copyright (c) 2016, Acme
// All Rights Reserved
//
// History:
//   1 Feb 16   aparlato   Creation
//

using haystack
using proj
using web
using connExt

**
** Axon functions for http
**
const class HttpLib
{
  **
  ** httpSyncHis stub function
  **
  @Axon { admin = true }
  static Str httpSyncHis(Obj points, Obj? dates)
  {
    proj := Context.cur.proj
    he := HttpExt(proj)
    results := he.syncHis(points, dates)
    return results.toStr
  }
  
  **
  ** httpRead stub function
  **
  @Axon { admin = true }
  static Str httpRead(Dict conn, Str uri)
  {
    user := conn->username
    pass := Context.cur.proj.passwords.get(conn->id.toStr) 
    wc := WebClient()
    wc.reqUri = Uri.fromStr(uri)
    wc.followRedirects = true
    wc.reqHeaders["Authorization"] = "Basic " + "$user:$pass".toBuf.toBase64   
    s := wc.getStr
    return s
  }
  
  @Axon { admin = true }
  static Str httpPost(Str data, Str uri)
  {
    wc := WebClient()
    wc.reqUri = Uri.fromStr(uri) 
    s := wc.postStr(data)
    return s.resCode.toStr + " " + s.resPhrase
  }
} 