using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Optimization;
using System.Web.Routing;
using System.Web.Security;
using System.Web.SessionState;
using System.Web.Http;
using Newtonsoft.Json;
using Newtonsoft.Json.Linq;

namespace TestWebFormsWebApi
{
    public class Global : HttpApplication
    {
        void Application_Start(object sender, EventArgs e)
        {
            //var deserializerSettings = new JsonSerializerSettings()
            //{
            //    ReferenceLoopHandling = ReferenceLoopHandling.Serialize,
            //    PreserveReferencesHandling = PreserveReferencesHandling.Objects
            //};

            //var serializer = JsonSerializer.CreateDefault(deserializerSettings);

            //JObject jsonObject = (JObject)JToken.FromObject(myse)

            JsonConvert.DefaultSettings = () => new JsonSerializerSettings
            {
                //Formatting = Newtonsoft.Json.Formatting.Indented,
                //ReferenceLoopHandling = Newtonsoft.Json.ReferenceLoopHandling.Ignore
                ReferenceLoopHandling = ReferenceLoopHandling.Serialize,
                PreserveReferencesHandling = PreserveReferencesHandling.Objects
            };

            // Code that runs on application startup
            GlobalConfiguration.Configure(WebApiConfig.Register);
            RouteConfig.RegisterRoutes(RouteTable.Routes);
            BundleConfig.RegisterBundles(BundleTable.Bundles);


        }
    }
}