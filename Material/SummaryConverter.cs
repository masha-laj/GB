using System;
using System.Windows.Data;

namespace Material
{
    class SummaryConverter: IMultiValueConverter
    {
        public object Convert(object[] values, Type targetType, object parameter, System.Globalization.CultureInfo culture)
        {
            string sign = "-";
            double summary = (double)values[0];
            OperationCategory category = (OperationCategory)values[1];
            if (category != null)
            {
                switch (category.Type)
                {
                    default:
                    case CategoryType.Consumable:
                        sign = "-";
                        break;
                    case CategoryType.Income:
                        sign = "+";
                        break;
                }
            }
            else sign = "-";
            return $"{sign}{summary} руб";
        }

        public object[] ConvertBack(object value, Type[] targetType, object parameter, System.Globalization.CultureInfo culture)
        {
            throw new NotImplementedException();
        }
    }
}
