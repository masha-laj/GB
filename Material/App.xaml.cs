using Material.ViewModels;
using SimpleWPF.Core;
using System.Windows;

namespace Material
{
    public partial class App : Application
    {
        protected override void OnStartup(StartupEventArgs e)
        {
            base.OnStartup(e);
            SimpleCore core = new SimpleCore();
            core.Startup(new AppViewModel(), new OperationsViewModel(), true);

            DataTemplateManager manager = new DataTemplateManager();
            manager.LoadDataTemplatesByConvention();
        }
    }
}
