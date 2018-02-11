using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.IO;
using System.Net;
using System.Text;

namespace Oka_Alert {
    public class jsonManager
    {
        public string Url {
            get {
                return "http://celianbastien.fr/api/Okazuma/data.json";
            }
        }
        public string UrldataFtp {
            get {
                return "ftp://guest@celianbastien.fr/data.json";
            }
        }
        public apiFormat apiData { get; set; }

        public jsonManager() {
            var request = WebRequest.Create(Url);
            request.ContentType = "application/json; charset=utf-8";
            var response = (HttpWebResponse)request.GetResponse();

            using (var sr = new StreamReader(response.GetResponseStream())) {
                string data = sr.ReadToEnd();
                apiData = JsonConvert.DeserializeObject<apiFormat>(data);
            }
        }

        public void sendJson(bool state,string message) {
            apiData.state = state;
            apiData.message = message;

            sendToFTP(apiData);
        }
        public void sendToFTP(apiFormat api) {
            FtpWebRequest request = (FtpWebRequest)WebRequest.Create(UrldataFtp);

            request.Credentials = new NetworkCredential("user", "pass");
            request.Method = WebRequestMethods.Ftp.DeleteFile;

            FtpWebResponse response = (FtpWebResponse)request.GetResponse();

            Stream responseStream = response.GetResponseStream();
            StreamReader reader = new StreamReader(responseStream);
            response.Close();



            FtpWebRequest req = (FtpWebRequest)WebRequest.Create(UrldataFtp);
            req.Credentials = new NetworkCredential("user", "pass");

            string output = JsonConvert.SerializeObject(api);
            byte[] fileContents = Encoding.UTF8.GetBytes(output);

            req.Method = WebRequestMethods.Ftp.UploadFile;
            req.ContentLength = fileContents.Length;

            Stream requestStream = req.GetRequestStream();
            requestStream.Write(fileContents, 0, fileContents.Length);
            requestStream.Close();

            response = (FtpWebResponse)req.GetResponse();
            response.Close();
        }
    }
}
