using MaterialDesignThemes.Wpf;
using System;
using System.ComponentModel;
using System.ComponentModel.DataAnnotations.Schema;
using System.Windows.Media;
using System.Runtime.CompilerServices;
using System.Collections.Generic;

namespace Material
{
    [Table("Categories")]
    public class OperationCategory : INotifyPropertyChanged
    {
        public int Id { get; set; }
        private string name;
        private PackIconKind icon;
        private string color;
        private string borderColor;
        private CategoryType type;
        public ICollection<Operation> Operations { get; set; }

        public OperationCategory()
        {
            Operations = new List<Operation>();
        }

        public CategoryType Type
        {
            get { return type; }
            set
            {
                type = value;
                OnPropertyChanged("Type");
            }
        }

        public string Name
        {
            get { return name; }
            set
            {
                name = value;
                OnPropertyChanged("Name");
            }
        }

        [Column("Icon")]
        public string IconDB
        {
            get { return Enum.GetName(typeof(PackIconKind), Icon); }
            set { Icon = (PackIconKind)Enum.Parse(typeof(PackIconKind), value); }
        }

        [NotMapped]
        public PackIconKind Icon
        {
            get { return icon; }
            set
            {
                icon = value;
                OnPropertyChanged("Icon");
            }
        }

        [Column("Color")]
        public string IconColor
        {
            get { return color; }
            set
            {
                color = value;
                Color tempColor = (Color)ColorConverter.ConvertFromString(value);
                BorderColor = ChangeColorBrightness(tempColor, -0.2f).ToString();
                OnPropertyChanged("IconColor");
            }
        }

        [NotMapped]
        public string BorderColor { get => borderColor; set => borderColor = value; }

        public event PropertyChangedEventHandler PropertyChanged;
        public void OnPropertyChanged([CallerMemberName]string prop = "")
        {
            if (PropertyChanged != null)
                PropertyChanged(this, new PropertyChangedEventArgs(prop));
        }

        public static Color ChangeColorBrightness(Color color, float correctionFactor)
        {
            float red = (float)color.R;
            float green = (float)color.G;
            float blue = (float)color.B;

            if (correctionFactor < 0)
            {
                correctionFactor = 1 + correctionFactor;
                red *= correctionFactor;
                green *= correctionFactor;
                blue *= correctionFactor;
            }
            else
            {
                red = (255 - red) * correctionFactor + red;
                green = (255 - green) * correctionFactor + green;
                blue = (255 - blue) * correctionFactor + blue;
            }

            return Color.FromArgb(color.A, (byte)red, (byte)green, (byte)blue);
        }
    }
}
