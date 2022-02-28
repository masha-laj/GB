using MaterialDesignThemes.Wpf;
using SimpleWPF.Input;
using SimpleWPF.ViewModels;
using System.ComponentModel;
using System.Windows.Input;

namespace Material.ViewModels
{
    public class OperationDialogViewModel
    {
        public Operation Operation { get; set; }
        public DialogMode Mode { get; set; }
        public BindingList<OperationCategory> Categories { get; set; }

        public OperationDialogViewModel(BindingList<OperationCategory> categories)
        {
            Categories = categories;
            Operation = new Operation { Description = "", Invoice = 0, Summary = 0 };
            this.Mode = DialogMode.Add;
        }

        public OperationDialogViewModel(Operation operation, BindingList<OperationCategory> categories)
        {
            Categories = categories;
            Operation = new Operation { Id = operation.Id, Category = operation.Category, CategoryID = operation.CategoryID, Summary = operation.Summary, Invoice = operation.Invoice, Description = operation.Description };
            this.Mode = DialogMode.Change;
        }
    }
}
