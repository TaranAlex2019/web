package ua.nure.taran.interfaces;

        import ua.nure.taran.bins.Announcement;
        import ua.nure.taran.bins.User;

        import java.util.List;

/**
 * Created by Александр Таран on 15.01.2019.
 */
public interface DAO{
    List<User> SelectAllFromTableUsers();
    List<User> SelectAllFromTableAdmins();
    List<Announcement> SelectAllFromTableAnnouncements();

    boolean InserToTableUsers(String name, String secondName, String login, String password, String mail, String img, String isActive);
    boolean InserToTableAdmins(String login, String pass);

    User SelectFromTableUsersbyLogin(String login);
    public User SelectFromTableUsersbyid(int id);

    boolean DeleteFromTable(int id, String table);
    boolean DeleteAllFromTable(String table);

    public boolean UpdateIsActiveInTable(String set, String id);
    public boolean UpdateImageInTableUsers(String set, int id);
}
