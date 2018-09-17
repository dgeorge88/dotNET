using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(ProtectedContent.Startup))]
namespace ProtectedContent
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
