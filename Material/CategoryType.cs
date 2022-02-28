using System.ComponentModel;

namespace Material
{
    public enum CategoryType
    {
        [Description("Расходы")]
        Consumable = 0,

        [Description("Доходы")]
        Income = 1
    }
}
