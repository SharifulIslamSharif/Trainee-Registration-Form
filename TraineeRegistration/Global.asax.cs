using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.SessionState;

namespace TraineeRegistration
{
    public class Global : System.Web.HttpApplication
    {
        protected void Application_Start(object sender, EventArgs e)
        {
            System.Web.Routing.RouteTable.Routes.MapPageRoute("TraineeInfo", "Trainee", "~/Trainee.aspx");
            System.Web.Routing.RouteTable.Routes.MapPageRoute("DetailsViewList", "DetailsView", "~/Details View.aspx");
            //System.Web.Routing.RouteTable.Routes.MapPageRoute("TraineeListView", "ListView", "~/Batch.aspx");
            System.Web.Routing.RouteTable.Routes.MapPageRoute("TraineeRegistration", "Registration", "~/Registration.aspx");
            System.Web.Routing.RouteTable.Routes.MapPageRoute("TraineeLogin", "Login", "~/Login.aspx");

        }
    }
}