package ua.nure.taran.database;
import ua.nure.taran.mail.SendMail;

import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.Properties;

/**
 * Created by Александр Таран on 15.01.2019.
 */
public class Connect {
    public static Connection getConnection(String dataBase) throws IOException {
        Properties properties = new Properties();
        properties.load(Connect.class.getClassLoader().getResourceAsStream("ua/nure/taran/properties/DataBase.properties"));
        Connection connection = null;
        if (properties==null){
            System.err.println("Error");
        }else {
            try{
                Class.forName(properties.getProperty("JDBC_DRIVER"));
                connection = DriverManager.getConnection(properties.getProperty("JDBC_DATABASE_URL") + dataBase + "?serverTimezone=" + properties.get("TIME_ZONE"),
                        properties.getProperty("DATABASE_USER"),
                        properties.getProperty("DATABASE_PASSWORD"));
            } catch (ClassNotFoundException e) {
                e.printStackTrace();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        return connection;
    }
}
