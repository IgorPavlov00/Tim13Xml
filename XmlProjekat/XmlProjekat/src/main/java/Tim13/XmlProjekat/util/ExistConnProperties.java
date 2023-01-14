package Tim13.XmlProjekat.util;

import java.io.IOException;
import java.io.InputStream;
import java.util.Properties;

public class ExistConnProperties {
    private static String connectionUri = "xmldb:exist://%1$s:%2$s/exist/xmlrpc";

        public String host;
        public int port = -1;
        public String user;
        public String password;
        public String driver;
        public String uri;

        public ExistConnProperties(Properties props) {
            super();

            user = props.getProperty("conn.user").trim();
            password = props.getProperty("conn.password").trim();

            host = props.getProperty("conn.host").trim();
            port = Integer.parseInt(props.getProperty("conn.port"));

            uri = String.format(connectionUri, host, port);

            driver = props.getProperty("conn.driver").trim();
        }


    /**
     * Read the configuration properties for the example.
     *
     * @return the configuration object
     */
    public static ExistConnProperties loadProperties() throws IOException {
        String propsName = "exist.properties";

        InputStream propsStream = openStream(propsName);
        if (propsStream == null)
            throw new IOException("Could not read properties " + propsName);

        Properties props = new Properties();
        props.load(propsStream);

        return new ExistConnProperties(props);
    }

    /**
     * Read a resource for an example.
     *
     * @param fileName
     *            the name of the resource
     * @return an input stream for the resource
     * @throws IOException
     */
    public static InputStream openStream(String fileName) throws IOException {
        return ExistConnProperties.class.getClassLoader().getResourceAsStream(fileName);
    }

}

