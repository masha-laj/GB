using MaterialDesignColors;
using MaterialDesignThemes.Wpf;
using SimpleWPF.Input;
using SimpleWPF.ViewModels;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.ComponentModel;
using System.Data.Entity;
using System.Linq;
using System.Windows;
using System.Windows.Input;
using System.Windows.Media;

namespace Material.ViewModels
{

    public class CategoriesViewModel : NavigationViewModelBase
    {
        private StateManager stateManager = new StateManager();
        public StateManager StateManager
        {
            get { return stateManager.Instance; }
        }
        private ApplicationContext db;

        private const string DialogIdentifier = "RootDialogHost";
        public ICommand NewCategoryCommand { get; }
        public ICommand ChangeCategoryCommand { get; }
        public ICommand DeleteCategoryCommand { get; }
        public BindingList<OperationCategory> OperationCategories { get; set; }
        public IEnumerable<OperationCategory> ConsumableOperationCategories
        {
            get
            {
                return OperationCategories.Where((category, a) => category.Type == CategoryType.Consumable);
            }
        }
        public IEnumerable<OperationCategory> IncomeOperationCategories
        {
            get
            {
                return OperationCategories.Where((category, a) => category.Type == CategoryType.Income);
            }
        }
        private IEnumerable<Swatch> swatches;

        public ICommand GotoBackCommand { get; set; }
        public ICommand GotoBlueCommand { get; set; }

        public CategoriesViewModel()
        {
            GotoBackCommand = new RelayCommand(GotoBack);
            GotoBlueCommand = new RelayCommand(GotoBlue);
            NewCategoryCommand = new RelayCommand(NewCategory);
            ChangeCategoryCommand = new RelayCommand<OperationCategory>(ChangeCategory);
            DeleteCategoryCommand = new RelayCommand<OperationCategory>(DeleteCategory);

            swatches = new SwatchesProvider().Swatches;

            db = StateManager.DB;
            OperationCategories = db.OperationCategories.Local.ToBindingList();
        }

        private async void NewCategory()
        {
            var vm = new CategoryDialogViewModel();
            object dialogResult = await DialogHost.Show(vm, DialogIdentifier);
            if (dialogResult is bool boolResult && boolResult)
            {
                db.OperationCategories.Add(vm.Category);
                db.SaveChanges();
                OnPropertyChanged("ConsumableOperationCategories");
                OnPropertyChanged("IncomeOperationCategories");
            }
            else
            {
                //TODO: Do login canceled stuff
            }
        }

        private async void ChangeCategory(OperationCategory category)
        {
            var index = OperationCategories.IndexOf(category);
            var vm = new CategoryDialogViewModel(category);
            object dialogResult = await DialogHost.Show(vm, DialogIdentifier);
            if (dialogResult is bool boolResult && boolResult)
            {
                var foundedCategory = db.OperationCategories.Find(vm.Category.Id);
                if (foundedCategory != null)
                {
                    foundedCategory.Name = vm.Category.Name;
                    foundedCategory.IconColor = vm.Category.IconColor;
                    foundedCategory.Icon = vm.Category.Icon;
                    foundedCategory.Type = vm.Category.Type;
                    db.Entry(foundedCategory).State = EntityState.Modified;
                    db.SaveChanges();
                    OnPropertyChanged("ConsumableOperationCategories");
                    OnPropertyChanged("IncomeOperationCategories");
                }
            }
            else
            {
                //TODO: Do login canceled stuff
            }
        }

        private void DeleteCategory(OperationCategory category)
        {
            db.OperationCategories.Remove(category);
            db.SaveChanges();
            OnPropertyChanged("ConsumableOperationCategories");
            OnPropertyChanged("IncomeOperationCategories");
        }

        private Color GetColorByName(string name)
        {
            return swatches.Where(x => x.Name.ToLower() == name.ToLower()).First().PrimaryHues.ToArray()[5].Color;
        }

        private Color GetBorderColorByName(string name)
        {
            return swatches.Where(x => x.Name.ToLower() == name.ToLower()).First().PrimaryHues.ToArray()[7].Color;
        }

        private void GotoBack()
        {
            NavigateBack();
        }

        private void GotoBlue()
        {
            //Navigate(_blueViewModel);
        }
    }
}
