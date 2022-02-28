using MaterialDesignThemes.Wpf;
using SimpleWPF.Input;
using SimpleWPF.ViewModels;
using System;
using System.Collections.ObjectModel;
using System.ComponentModel;
using System.Windows.Input;
using Material;
using System.Data.Entity;
using System.Linq;
using System.Collections.Generic;
using ClosedXML.Excel;
using System.Data;
using Microsoft.Win32;

namespace Material.ViewModels
{
    public class OperationsViewModel : NavigationViewModelBase
    {
        private StateManager stateManager = new StateManager();
        public StateManager StateManager
        {
            get { return stateManager.Instance; }
        }
        private ApplicationContext db;

        private const string DialogIdentifier = "RootDialogHost";
        public ICommand NewOperationCommand { get; }
        public ICommand ChangeOperationCommand { get; }
        public ICommand DeleteOperationCommand { get; }
        public ICommand ExportOperationsCommand { get; }

        private string _search = "";
        public string Search
        {
            get => _search; set
            {
                _search = value;
                OnPropertyChanged("Operations");
            }
        }
        private int _filterCategory = -1;
        public int FilterCategory
        {
            get => _filterCategory; set
            {
                _filterCategory = value;
                OnPropertyChanged("Operations");
            }
        }
        private BindingList<Operation> _operations;
        public BindingList<Operation> Operations
        {
            get
            {
                var arr = _operations.Where(o => string.IsNullOrWhiteSpace(Search) ? true : o.Description.ToLower().Contains(Search.ToLower()));
                arr = arr.Where(o => {
                    var res = FilterCategory == -1 ? true : o.CategoryID == FilterCategory;
                    return res;
                });
                return new BindingList<Operation>(arr.ToList());
            }
        }
        private BindingList<OperationCategory> _categories;
        public BindingList<OperationCategory> Categories { 
            get {
                List<OperationCategory> arr = new List<OperationCategory>()
                {
                    new OperationCategory { Id = -1, Name = "Все" }
                };
                arr.AddRange(_categories.ToList());
                return new BindingList<OperationCategory>(arr);
            }
        }

        public OperationsViewModel()
        {
            db = StateManager.DB;

            _operations = db.Operations.Local.ToBindingList();
            _categories = db.OperationCategories.Local.ToBindingList();
            NewOperationCommand = new RelayCommand(NewOperation);
            DeleteOperationCommand = new RelayCommand<Operation>(DeleteOperation);
            ExportOperationsCommand = new RelayCommand(ExportOperations);
            OnPropertyChanged("Operations");
            OnPropertyChanged("Categories");
        }

        private async void NewOperation()
        {
            var vm = new OperationDialogViewModel(db.OperationCategories.Local.ToBindingList());
            object dialogResult = await DialogHost.Show(vm, DialogIdentifier);
            if (dialogResult is bool boolResult && boolResult)
            {
                db.Operations.Add(vm.Operation);
                db.SaveChanges();
                OnPropertyChanged("Operations");
            }
            else
            {
                //TODO: Do login canceled stuff
            }
        }

        private void DeleteOperation(Operation operation)
        {
            db.Operations.Remove(operation);
            db.SaveChanges();
            OnPropertyChanged("Operations");
        }

        private void ExportOperations()
        {
            XLWorkbook wb = new XLWorkbook();
            var dt = new DataTable();
            SaveFileDialog saveFileDialog1 = new SaveFileDialog();

            saveFileDialog1.Filter = "Excel file (*.xlsx)|*.xlsx";
            saveFileDialog1.RestoreDirectory = true;
            if ((bool)saveFileDialog1.ShowDialog())
            {
                dt.Columns.Add("Описание");
                dt.Columns.Add("Категория");
                dt.Columns.Add("Сумма");
                foreach (var o in db.Operations)
                {
                    dt.Rows.Add(new string[] { o.Description, o.Category.Name, o.Summary.ToString() });
                }

                wb.Worksheets.Add(dt, "Операции");
                wb.SaveAs(saveFileDialog1.FileName);
            }
        }
    }
}
