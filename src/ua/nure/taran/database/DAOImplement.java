package ua.nure.taran.database;

import ua.nure.taran.bins.Announcement;
import ua.nure.taran.bins.User;
import ua.nure.taran.interfaces.DAO;

import java.io.IOException;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by Александр Таран on 15.01.2019.
 */
public class DAOImplement implements DAO {
    Connection connection = null;

    private static final String SELECT_ALL_FROM_TABLE_USERS = "SELECT * FROM users";
    private static final String SELECT_ALL_FROM_TABLE_ADMINS = "SELECT * FROM admins";
    private static final String SELECT_ALL_FROM_TABLE_ANNOUNCEMENTS = "SELECT * FROM announcements";
    private static final String INSERT_TO_TABLE_USERS = "INSERT INTO users (NameUser,SecondName,login,password,mail,isActive) VALUES (?,?,?,?,?,?)";
    private static final String SELECT_FROM_TABLE_BY_ID = "SELECT * FROM users WHERE id = ?";
    private static final String SELECT_FROM_TABLE_BY_LOGIN = "SELECT * FROM users WHERE login = ?";
    private static final String DELETE_FROM_TABLE_ANNOUNCEMENTS= "DELETE FROM announcements WHERE id=?";
    private static final String DELETE_ALL_FROM_TABLE = "DELETE FROM ?";
    private static final String UPDATE_IS_ACTIVE_TABLE = "UPDATE users SET isActive=? WHERE id=?";
    private static final String UPDATE_IMAGE_USERS = "UPDATE users SET Image=? WHERE id=?";
    private static final String USERS_TABLE = "users";
    //private static final String ANNOUNCEMENT_TABLE = "announcement";

    public DAOImplement(String dataBase) throws IOException {
        connection = Connect.getConnection(dataBase);
    }


    //Извлечение юзеров из таблицы users
    @Override
    public List<User> SelectAllFromTableUsers() {
        //"SELECT * FROM ?"
        List<User> list = new ArrayList<>();
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(SELECT_ALL_FROM_TABLE_USERS);
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                User user = new User();
                user.setId(resultSet.getInt("id"));
                user.setName(resultSet.getString("NameUser"));
                user.setSecondName(resultSet.getString("SecondName"));
                user.setLogin(resultSet.getString("login"));
                user.setPassword(resultSet.getString("password"));
                user.setBalance(resultSet.getDouble("Balance"));
                user.setMail(resultSet.getString("mail"));
                user.setImage(resultSet.getString("Image"));
                user.setIsActive(resultSet.getString("isActive"));
                list.add(user);
            }
            resultSet.close();
            preparedStatement.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return list;
    }

    @Override
    public List<User> SelectAllFromTableAdmins() {
        List<User> list = new ArrayList<>();
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(SELECT_ALL_FROM_TABLE_ADMINS);
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                User user = new User();
                user.setId(resultSet.getInt("id"));
                user.setLogin(resultSet.getString("login"));
                user.setPassword(resultSet.getString("password"));
                list.add(user);
            }
            resultSet.close();
            preparedStatement.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return list;
    }

    @Override
    public List<Announcement> SelectAllFromTableAnnouncements(){
        List<Announcement> list = new ArrayList<>();
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(SELECT_ALL_FROM_TABLE_ANNOUNCEMENTS);
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                Announcement announcement = new Announcement();
                announcement.setId(resultSet.getInt("id"));
                announcement.setTitle(resultSet.getString("title"));
                announcement.setText(resultSet.getString("text"));
                announcement.setImage(resultSet.getString("image"));
                announcement.setDate(resultSet.getDate("date"));
                announcement.setViews(resultSet.getInt("views"));
                list.add(announcement);
            }
            resultSet.close();
            preparedStatement.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return list;
    }

    //Добавление юзера в таблицу users
    @Override
    public boolean InserToTableUsers(String name, String secondName, String login, String password, String mail, String img, String isActive) {
        //INSERT INTO users (NameUser,SecondName,login,password,mail,isActive) VALUES (?,?,?,?,?,?)
        if (name != null && secondName != null && login != null && password != null && mail != null && isActive != null) {
            try {
                connection.setAutoCommit(false);
                PreparedStatement preparedStatement = connection.prepareStatement(INSERT_TO_TABLE_USERS);
                preparedStatement.setString(1, name);
                preparedStatement.setString(2, secondName);
                preparedStatement.setString(3, login);
                preparedStatement.setString(4, password);
                preparedStatement.setString(5, mail);

                preparedStatement.setString(6, isActive);
                preparedStatement.execute();
                connection.commit();
                preparedStatement.close();
            } catch (SQLException e) {
                try {
                    connection.rollback();
                } catch (SQLException e1) {
                    e1.printStackTrace();
                }
                e.printStackTrace();
                return false;
            }
        } else {
            System.out.println("null in field");
        }
        return true;
    }

    @Override
    public boolean InserToTableAdmins(String login, String pass) {
        return false;/////////////////////////////////////////////////InsertAdminToDataBase-----
    }

    //////////////////////////////////

    //Извлечение юзера из таблицы users
    @Override
    public User SelectFromTableUsersbyLogin(String login) {
        //SELECT_FROM_TABLE = "SELECT * FROM users WHERE login = ?";
        User user = new User();
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(SELECT_FROM_TABLE_BY_LOGIN);
            preparedStatement.setString(1, login);

            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                user.setId(resultSet.getInt("id"));
                user.setName(resultSet.getString("NameUser"));
                user.setSecondName(resultSet.getString("SecondName"));
                user.setLogin(resultSet.getString("login"));
                user.setPassword(resultSet.getString("password"));
                user.setMail(resultSet.getString("mail"));
                user.setImage(resultSet.getString("Image"));

                user.setIsActive(resultSet.getString("isActive"));
            }
            resultSet.close();
            preparedStatement.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return user;
    }

    @Override
    public User SelectFromTableUsersbyid(int id) {
        //SELECT_FROM_TABLE = "SELECT * FROM users WHERE id = ?";
        User user = new User();
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(SELECT_FROM_TABLE_BY_ID);
            preparedStatement.setInt(1, id);

            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                user.setId(resultSet.getInt("id"));
                user.setName(resultSet.getString("NameUser"));
                user.setSecondName(resultSet.getString("SecondName"));
                user.setLogin(resultSet.getString("login"));
                user.setPassword(resultSet.getString("password"));
                user.setMail(resultSet.getString("mail"));
                user.setImage(resultSet.getString("Image"));
                user.setIsActive(resultSet.getString("isActive"));
            }
            resultSet.close();
            preparedStatement.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return user;
    }

    //////////////////////////////////

    //Удаление строки из таблицы
    @Override
    public boolean DeleteFromTable(int id, String table) {
        try {//"DELETE FROM ? WHERE ?=?"
            connection.setAutoCommit(false);
            PreparedStatement preparedStatement = connection.prepareStatement(DELETE_FROM_TABLE_ANNOUNCEMENTS);
            preparedStatement.setString(1, String.valueOf(id));
            preparedStatement.executeUpdate();
            connection.commit();
            preparedStatement.close();
        } catch (SQLException e) {
            try {
                connection.rollback();
            } catch (SQLException e1) {
                e1.printStackTrace();
            }
            e.printStackTrace();
            return false;
        }
        return true;
    }

    //Удаление всех строк из таблицы
    @Override
    public boolean DeleteAllFromTable(String table) {
        //"DELETE FROM ?"
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(DELETE_ALL_FROM_TABLE);
            preparedStatement.setString(1, table);
            preparedStatement.executeUpdate();
            preparedStatement.close();
        } catch (SQLException e) {
            try {
                connection.rollback();
            } catch (SQLException e1) {
                e1.printStackTrace();
            }
            e.printStackTrace();
            return false;
        }
        return true;
    }

    //Изменения в таблице
    @Override
    public boolean UpdateIsActiveInTable(String set, String id) {
        //UPDATE users SET isActive=? WHERE id=?
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(UPDATE_IS_ACTIVE_TABLE);
            preparedStatement.setString(1, set);
            preparedStatement.setString(2, id);
            preparedStatement.executeUpdate();
            preparedStatement.close();
        } catch (SQLException e) {
            try {
                connection.rollback();
            } catch (SQLException e1) {
                e1.printStackTrace();
            }
            e.printStackTrace();
            return false;
        }
        return true;
    }

    @Override
    public boolean UpdateImageInTableUsers(String set, int id) {
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(UPDATE_IMAGE_USERS);
            preparedStatement.setString(1, set);
            preparedStatement.setInt(2, id);
            preparedStatement.executeUpdate();
            preparedStatement.close();
        } catch (SQLException e) {
            try {
                connection.rollback();
            } catch (SQLException e1) {
                e1.printStackTrace();
            }
            e.printStackTrace();
            return false;
        }
        return true;
    }
}
