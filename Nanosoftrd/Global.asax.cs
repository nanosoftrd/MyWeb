﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.SessionState;
using System.Web.UI;

namespace Nanosoftrd
{
    public class Global : System.Web.HttpApplication
    {
        protected void Application_Start(object sender, EventArgs e)
        {
            /*ScriptManager.ScriptResourceMapping.AddDefinition("jquery",new ScriptResourceDefinition
            {
            Path = "~/Scripts/jquery-1.4.1.min.js",
            DebugPath = "~/Scripts/jquery-1.4.1.js",
            CdnPath = "http://ajax.microsoft.com/ajax/jQuery/jquery-1.4.1.min.js",
            CdnDebugPath = "http://ajax.microsoft.com/ajax/jQuery/jquery-1.4.1.js"
            });*/
        }
    }
}