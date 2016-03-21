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
using hisExt

**
** HttpConn
**
class HttpConn : Conn
{
  new make(ConnActor actor, Dict rec) : super(actor, rec) {}

  override Obj? receive(ConnMsg msg) { return super.receive(msg) }

  override Void onOpen() {}

  override Void onClose() {}

  override Dict onPing() { Etc.emptyDict }
  
  override Obj? onSyncHis(ConnPoint point, DateTimeSpan dates)
  {
    try{
      conn := point.rec
      Str syncFunc := conn->httpSyncHisExpr
      args := [conn,point.rec,dates]
      HisItem[] items := Context.cur.call(syncFunc, args)
      return point.updateHisOk(items, dates) 
    }catch(Err e){
      echo("$point: updating his err  $e")
      return point.updateHisErr(e)
    }
  }
}

