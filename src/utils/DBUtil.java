package utils;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

public class DBUtil {//DAO(データベースへ接続する部分やSQL文を実行する部分を担うクラス)

    private static final String PERSISTENCE_UNIT_NAME = "tasklist";//persistence.xml＞一般＞名前に合わせる
    private static EntityManagerFactory emf;

    public static EntityManager createEntityManager() {
        return _getEntityManagerFactory().createEntityManager();
    }

    private static EntityManagerFactory _getEntityManagerFactory() {
        if(emf == null) {
            emf = Persistence.createEntityManagerFactory(PERSISTENCE_UNIT_NAME);
        }

        return emf;
    }

}
