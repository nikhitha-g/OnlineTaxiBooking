﻿using System.Web;
using System.Web.Mvc;

namespace OnlineTaxiBookingApi.BusinessLayer
{
    public class FilterConfig
    {
        public static void RegisterGlobalFilters(GlobalFilterCollection filters)
        {
            filters.Add(new HandleErrorAttribute());
        }
    }
}
