using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Xml;
using System.Xml.Xsl;

namespace ConversionFromXMLToHTML
{
    class Program
    {
        static void Main(string[] args)
        {
            XmlUrlResolver resolver = new XmlUrlResolver();
            resolver.Credentials = System.Net.CredentialCache.DefaultCredentials;
            XslTransform transform = new XslTransform();
            transform.Load(@"..\MusicHTML.xsl", resolver);
            transform.Transform(@"..\Music.xml", @"..\Music.html", resolver);
        }
    }
}
