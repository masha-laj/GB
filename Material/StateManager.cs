using System.ComponentModel;
using System.Data.Entity;
using System.Runtime.CompilerServices;

namespace Material
{
    public class StateManager : INotifyPropertyChanged
    {
        private static StateManager instance = new StateManager();
        public event PropertyChangedEventHandler PropertyChanged;
        public void OnPropertyChanged([CallerMemberName]string prop = "")
        {
            PropertyChanged?.Invoke(this, new PropertyChangedEventArgs(prop));
        }

        public StateManager()
        {
            DB = new ApplicationContext();
            DB.OperationCategories.Load();
            DB.Operations.Load();
        }

        public StateManager Instance
        {
            get { return instance; }
        }

        public ApplicationContext DB { get; set; }
    }
}
