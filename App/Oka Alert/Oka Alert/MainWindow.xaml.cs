using System.Windows;

namespace Oka_Alert {
    /// <summary>
    /// Logique d'interaction pour MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window {

        public jsonManager json { get {
                return new jsonManager();
            }
            set {}
        }
        public MainWindow() {
            InitializeComponent();
        }
        
        private void btnSend_Click(object sender, RoutedEventArgs e) {
            if (MessageToSend.Text.Length < 40) {
                if (CheckStatus.IsChecked.Value != json.apiData.state) {
                    if (CheckStatus.IsChecked.Value) {
                        txtStatus.Text = "Une notif va être envoyée (max 30sec)";
                    }
                    else {
                        txtStatus.Text = "L'add-on est offline (max 30sec)";
                    }
                }
                else {
                    txtStatus.Text = "Message mis à jour";
                }
                json.sendJson(CheckStatus.IsChecked.Value, MessageToSend.Text);
            }
            else txtStatus.Text = "Le message doit être inférieur à 40 lettres (il en fait "+ MessageToSend.Text.Length+")";
            txtStatus.ToolTip = txtStatus.Text;


        }

        private void Window_Loaded(object sender, RoutedEventArgs e) {
            txtStatus.Text = "L'add-on est offline";
            if (json.apiData.state) {
                txtStatus.Text = "L'add-on est online";
                CheckStatus.IsChecked = true;
            }
            MessageToSend.Text = json.apiData.message;
        }
    }
}
