using MaterialDesignThemes.Wpf;

namespace Material.ViewModels
{
    public enum DialogMode
    {
        Add, Change
    }

    public class CategoryDialogViewModel
    {
        public OperationCategory Category { get; set; }
        public DialogMode Mode { get; set; }

        public CategoryDialogViewModel()
        {
            Category = new OperationCategory { Name = "Новая категория", Icon = PackIconKind.Account, IconColor = "#ffffff", Type = CategoryType.Consumable };
            this.Mode = DialogMode.Add;
        }

        public CategoryDialogViewModel(OperationCategory category)
        {
            Category = new OperationCategory { Id = category.Id, Name = category.Name, Icon = category.Icon, IconColor = category.IconColor, Type = category.Type };
            this.Mode = DialogMode.Change;
        }
    }
}
