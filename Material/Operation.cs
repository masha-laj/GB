using System.ComponentModel;
using System.Runtime.CompilerServices;
using System.ComponentModel.DataAnnotations.Schema;

namespace Material
{
    [Table("Operations")]
    public class Operation : INotifyPropertyChanged
    {
        public int Id { get; set; }
        public string Description { get; set; }
        public double Summary { get; set; }
        public OperationInvoice Invoice { get; set; }
        public int? CategoryID { get; set; }
        public OperationCategory Category { get; set; }

        public event PropertyChangedEventHandler PropertyChanged;
        public void OnPropertyChanged([CallerMemberName]string prop = "")
        {
            PropertyChanged?.Invoke(this, new PropertyChangedEventArgs(prop));
        }
    }
}
