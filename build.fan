#! /usr/bin/env fan
//
// Copyright (c) 2016, Acme
// All Rights Reserved
//
// History:
//   1 Feb 16   aparlato   Creation
//

using build

**
** Build: httpExt
**
class Build : BuildPod
{
  new make()
  {
    podName = "httpExt"
    summary = "Provides connector for access to data over HTTP with optional basic authentication"
    version = Version("1.0")
    meta    = [
                "org.name":     "UCF",
                //"org.uri":      "http://acme.com/",
                //"proj.name":    "Project Name",
                //"proj.uri":     "http://acme.com/product/",
                "license.name": "Commercial",
              ]
    depends = ["sys 1.0",
               "haystack 2.1",
               "proj 2.1",
               "connExt 2.1",
               "gfx 1.0",
               "dom 1.0",
               "fwt 1.0",
               "chart 2.1",
               "webfwt 1.0",
               "fresco 2.1",
               "web 1.0",
               "hisExt 1.0+",
               "sqlExt 0.1+"]
    srcDirs = [`fan/`,
               `fan/ui/`,
               `test/`]
    resDirs = [`locale/`,
               `lib/`,
               `res/img/`]
    index   =
    [
      "proj.ext": "httpExt::HttpExt",
      "proj.lib": "httpExt::HttpLib",
    ]
  }
}
