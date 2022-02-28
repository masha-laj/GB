using System.Windows.Input;

namespace Material
{
    public class MenuItem
    {
        private string caption;
        private string icon;
        private ICommand command;
        private object commandParameter;

        public string Caption { get { return caption; } set { caption = value; } }
        public string Icon { get { return icon; } set { icon = value; } }
        public ICommand Command { get { return command; } set { command = value; } }
        public object CommandParameter { get { return commandParameter; } set { commandParameter = value; } }

        public MenuItem(string caption, string icon, ICommand command, object commandParameter = null)
        {
            this.caption = caption;
            this.icon = icon;
            this.command = command;
            this.commandParameter = commandParameter;
        }
    }
}
