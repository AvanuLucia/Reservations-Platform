package db;

import java.sql.*;

public class JavaBean {

    String error;
    Connection con;

    public JavaBean() {
    }

    public void connect() throws ClassNotFoundException, SQLException, Exception {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/aplicatie?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC","root", "scoala22");
        } catch (ClassNotFoundException cnfe) {
            error = "ClassNotFoundException: Nu s-a gasit driverul bazei de date.";
            throw new ClassNotFoundException(error);
        } catch (SQLException cnfe) {
            error = "SQLException: Nu se poate conecta la baza de date.";
            throw new SQLException(error);
        } catch (Exception e) {
            error = "Exception: A aparut o exceptie neprevazuta in timp ce se stabilea legatura la baza de date.";
            throw new Exception(error);
        }
    } 


    public void connect(String bd) throws ClassNotFoundException, SQLException, Exception {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/" + bd, "root", "Tomasiki99+");
        } catch (ClassNotFoundException cnfe) {
            error = "ClassNotFoundException: Nu s-a gasit driverul bazei de date.";
            throw new ClassNotFoundException(error);
        } catch (SQLException cnfe) {
            error = "SQLException: Nu se poate conecta la baza de date.";
            throw new SQLException(error);
        } catch (Exception e) {
            error = "Exception: A aparut o exceptie neprevazuta in timp ce se stabilea legatura la baza de date.";
            throw new Exception(error);
        }
    }

    public void connect(String bd, String ip) throws ClassNotFoundException, SQLException, Exception {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://" + ip + ":3306/" + bd, "root", "Tomasiki99+");
        } catch (ClassNotFoundException cnfe) {
            error = "ClassNotFoundException: Nu s-a gasit driverul bazei de date.";
            throw new ClassNotFoundException(error);
        } catch (SQLException cnfe) {
            error = "SQLException: Nu se poate conecta la baza de date.";
            throw new SQLException(error);
        } catch (Exception e) {
            error = "Exception: A aparut o exceptie neprevazuta in timp ce se stabilea legatura la baza de date.";
            throw new Exception(error);
        }
    } 


    public void disconnect() throws SQLException {
        try {
            if (con != null) {
                con.close();
            }
        } catch (SQLException sqle) {
            error = ("SQLException: Nu se poate inchide conexiunea la baza de date.");
            throw new SQLException(error);
        }
    } 
 
    
    public ResultSet afisareTabela(String tabela, String atribut, String orasAles) throws SQLException, Exception {
        ResultSet rs = null;
        try {
            String queryString = ("SELECT * FROM aplicatie." + tabela + " WHERE " + atribut + " = '" + orasAles + "'  ;");
            Statement stmt = con.createStatement();
            rs = stmt.executeQuery(queryString);
        } catch (SQLException sqle) {
            error = "SQLException: Interogarea nu a fost posibila.";
            throw new SQLException(error);
        } catch (Exception e) {
            error = "A aparut o exceptie in timp ce se extrageau datele.";
            throw new Exception(error);
        }
        return rs;
    }
    
    
    public ResultSet afisareUtilizatori() throws SQLException, Exception {
        ResultSet rs = null;
        try {
            String queryString = ("SELECT * FROM aplicatie.utilizatori;");
            Statement stmt = con.createStatement();
            rs = stmt.executeQuery(queryString);
        } catch (SQLException sqle) {
            error = "SQLException: Interogarea nu a fost posibila.";
            throw new SQLException(error);
        } catch (Exception e) {
            error = "A aparut o exceptie in timp ce se extrageau datele.";
            throw new Exception(error);
        }
        return rs;
    }
    
    
    public void adaugaUtilizator(String nume, String prenume, String telefon, String email)
			throws SQLException, Exception {
		if (con != null) {
			try {
				Statement stmt;
				stmt = con.createStatement();
				stmt.executeUpdate("INSERT INTO aplicatie.utilizatori(nume, prenume, telefon, email) VALUES('" + nume + "'  , '" + prenume + "', '" + telefon + "', '" + email + "');");

			} catch (SQLException sqle) {
				error = "ExceptieSQL: Reactualizare nereusita; este posibil sa existe duplicate.";
				throw new SQLException(error);
			}
		} else {
			error = "Exceptie: Conexiunea cu baza de date a fost pierduta.";
			throw new Exception(error);
		}
	}
    
    
    public void adaugaRezervareR(int idUtilizator, int idRestaurant, int nrPersoane, String data, String ora)
            throws SQLException, Exception {
        if (con != null) {
            try {
                Statement stmt;
                stmt = con.createStatement();
                stmt.executeUpdate("INSERT INTO aplicatie.rezervarirestaurante(idUtilizator, idRestaurant, nrPersoane, data, ora) VALUES('" + idUtilizator + "'  , '" + idRestaurant + "', '" + nrPersoane + "', '" + data + "', '" + ora + "');");


            } catch (SQLException sqle) {
                error = "ExceptieSQL: Reactualizare nereusita; este posibil sa existe duplicate.";
                throw new SQLException(error);
            }
        } else {
            error = "Exceptie: Conexiunea cu baza de date a fost pierduta.";
            throw new Exception(error);
        }
    }
    
    
    public void adaugaRezervareH(int idUtilizator, int idHotel, String dataSosire, String dataPlecare, int nrCamereRezervate)
            throws SQLException, Exception {
        if (con != null) {
            try {
                Statement stmt;
                stmt = con.createStatement();
                stmt.executeUpdate("INSERT INTO  aplicatie.rezervarihoteluri(idUtilizator, idHotel, dataSosire, dataPlecare, nrCamereRezervate) VALUES('" + idUtilizator + "'  , '" + idHotel + "', '" + dataSosire + "', '" + dataPlecare + "', '" + nrCamereRezervate + "');");


            } catch (SQLException sqle) {
                error = "ExceptieSQL: Reactualizare nereusita; este posibil sa existe duplicate.";
                throw new SQLException(error);
            }
        } else {
            error = "Exceptie: Conexiunea cu baza de date a fost pierduta.";
            throw new Exception(error);
        }
    }
    
    
    
    public int getIdUtilizator(String nume, String prenume, String telefon, String email) throws SQLException, Exception {
		ResultSet rs = null;
		int cod = 0;
		try {
			String queryString = ("SELECT idUtilizator FROM aplicatie.utilizatori WHERE nume = '" + nume + "' AND prenume = '" + prenume + "' AND telefon = '" + telefon + "' AND email = '" + email + "' ORDER BY idUtilizator DESC ;");
			Statement stmt = con.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_READ_ONLY);
			rs = stmt.executeQuery(queryString);
			rs.first();
			cod = rs.getInt(1);
		} catch (SQLException sqle) {
			error = "SQLException: Interogarea nu a fost posibila.";
			throw new SQLException(error);
		} catch (Exception e) {
			error = "A aparut o exceptie in timp ce se extrageau datele.";
			throw new Exception(error);
		}
		return cod;
	}
    
    
    public int getIdRezervareR(int idUtilizator, int idRestaurant, int nrPersoane, String data, String ora) throws SQLException, Exception {
		ResultSet rs = null;
		int cod = 0;
		try {
			String queryString = ("SELECT idRezervareR FROM aplicatie.rezervarirestaurante WHERE idUtilizator = '" + idUtilizator + "' AND idRestaurant = '" + idRestaurant + "' AND nrPersoane = '" + nrPersoane + "' AND data = '" + data + "' AND ora = '" + ora + "' ORDER BY idRezervareR DESC ;");
			Statement stmt = con.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_READ_ONLY);
			rs = stmt.executeQuery(queryString);
			rs.first();
			cod = rs.getInt(1);
		} catch (SQLException sqle) {
			error = "SQLException: Interogarea nu a fost posibila.";
			throw new SQLException(error);
		} catch (Exception e) {
			error = "A aparut o exceptie in timp ce se extrageau datele.";
			throw new Exception(error);
		}
		return cod;
	}
    
    
    public int getIdRezervareH(int idUtilizator, int idHotel, String dataSosire, String dataPlecare, int nrCamereRezervate) throws SQLException, Exception {
		ResultSet rs = null;
		int cod = 0;
		try {
			String queryString = ("SELECT idRezervareH FROM aplicatie.rezervarihoteluri WHERE idUtilizator = '" + idUtilizator + "' AND idHotel = '" + idHotel + "' AND dataSosire = '" + dataSosire + "' AND dataPlecare = '" + dataPlecare + "' AND nrCamereRezervate = '" + nrCamereRezervate + "'  ORDER BY idRezervareH DESC ;");
			Statement stmt = con.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_READ_ONLY);
			rs = stmt.executeQuery(queryString);
			rs.first();
			cod = rs.getInt(1);
		} catch (SQLException sqle) {
			error = "SQLException: Interogarea nu a fost posibila.";
			throw new SQLException(error);
		} catch (Exception e) {
			error = "A aparut o exceptie in timp ce se extrageau datele.";
			throw new Exception(error);
		}
		return cod;
	}
    
    
    public ResultSet afisareHoteluriSortate(String orasAles, String optiune) throws SQLException, Exception {
		ResultSet rs = null;
		String mod = "0";
		if(optiune.equals("scorH") || optiune.equals("nrCamere") || optiune.equals("nrPersoane")) {
			mod = "DESC";
		}else if(optiune.equals("numeH")) {
			mod = "ASC";
		}
		try {
			String queryString = ("SELECT * FROM aplicatie.hoteluri WHERE orasH = '" + orasAles + "' ORDER BY " + optiune + " " + mod + " ;");
			Statement stmt = con.createStatement();
			rs = stmt.executeQuery(queryString);
		} catch (SQLException sqle) {
			error = "SQLException: Interogarea nu a fost posibila.";
			throw new SQLException(error);
		} catch (Exception e) {
			error = "A aparut o exceptie in timp ce se extrageau datele.";
			throw new Exception(error);
		}
		return rs;
	}
    
    
    public ResultSet afisareRestauranteSortate(String orasAles, String optiune) throws SQLException, Exception {
		ResultSet rs = null;
		String mod = "0";
		if(optiune.equals("scorR") || optiune.equals("nrMese")) {
			mod = "DESC";
		}else if(optiune.equals("numeR")) {
			mod = "ASC";
		}
		try {
			String queryString = ("SELECT * FROM aplicatie.restaurante WHERE orasR = '" + orasAles + "' ORDER BY " + optiune + " " + mod + " ;");
			Statement stmt = con.createStatement();
			rs = stmt.executeQuery(queryString);
		} catch (SQLException sqle) {
			error = "SQLException: Interogarea nu a fost posibila.";
			throw new SQLException(error);
		} catch (Exception e) {
			error = "A aparut o exceptie in timp ce se extrageau datele.";
			throw new Exception(error);
		}
		return rs;
	}
    
    
    public ResultSet afisareRestauranteVegane(String orasAles, String optiune) throws SQLException, Exception {
		ResultSet rs = null;
		try {
			String queryString = ("SELECT * FROM aplicatie.restaurante WHERE orasR = '" + orasAles + "' AND " + optiune + "= 'da' ;");
			Statement stmt = con.createStatement();
			rs = stmt.executeQuery(queryString);
		} catch (SQLException sqle) {
			error = "SQLException: Interogarea nu a fost posibila.";
			throw new SQLException(error);
		} catch (Exception e) {
			error = "A aparut o exceptie in timp ce se extrageau datele.";
			throw new Exception(error);
		}
		return rs;
	}
    
    
    public ResultSet afisareHoteluriAnimale(String orasAles, String optiune) throws SQLException, Exception {
		ResultSet rs = null;
		try {
			String queryString = ("SELECT * FROM aplicatie.hoteluri WHERE orasH = '" + orasAles + "' AND " + optiune + "= 'da' ;");
			Statement stmt = con.createStatement();
			rs = stmt.executeQuery(queryString);
		} catch (SQLException sqle) {
			error = "SQLException: Interogarea nu a fost posibila.";
			throw new SQLException(error);
		} catch (Exception e) {
			error = "A aparut o exceptie in timp ce se extrageau datele.";
			throw new Exception(error);
		}
		return rs;
	}
    
    
    public ResultSet afisareRezervari(String tabela, int idUtilizator) throws SQLException, Exception {
        ResultSet rs = null;
        try {
            String queryString = ("SELECT * FROM aplicatie." + tabela + " WHERE idUtilizator = '" + idUtilizator + "' ;");
            Statement stmt = con.createStatement();
            rs = stmt.executeQuery(queryString);
        } catch (SQLException sqle) {
            error = "SQLException: Interogarea nu a fost posibila.";
            throw new SQLException(error);
        } catch (Exception e) {
            error = "A aparut o exceptie in timp ce se extrageau datele.";
            throw new Exception(error);
        }
        return rs;
    }
    
    
    
    public ResultSet afiseazaLinieDupaId(String tabela, String denumireId, int ID) throws SQLException, Exception {
		ResultSet rs = null;
		try {
			String queryString = ("SELECT * FROM aplicatie." + tabela + " WHERE " + denumireId + "=" + ID + ";");
			Statement stmt = con.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_READ_ONLY);
			rs = stmt.executeQuery(queryString); 
		} catch (SQLException sqle) {
			error = "SQLException: Interogarea nu a fost posibila.";
			throw new SQLException(error);
		} catch (Exception e) {
			error = "A aparut o exceptie in timp ce se extrageau datele.";
			throw new Exception(error);
		}
		return rs;
	}
    
    
	public void modificaTabela(String tabela, String IDTabela, int ID, String[] campuri, String[] valori) throws SQLException, Exception {
		String update = "UPDATE " + tabela + " SET ";
		String temp = "";
		if (con != null) {
			try {
				for (int i = 0; i < campuri.length; i++) {
					if (i != (campuri.length - 1)) {
						temp = temp + campuri[i] + "='" + valori[i] + "', ";
					} else {
						temp = temp + campuri[i] + "='" + valori[i] + "' WHERE " + IDTabela + " = '" + ID + "';";
					}
				}
				update = update + temp;
				Statement stmt;
				stmt = con.createStatement();
				stmt.executeUpdate(update);
			} catch (SQLException sqle) {
				error = "ExceptieSQL: Reactualizare nereusita; este posibil sa existe duplicate.";
				throw new SQLException(error);
			}
		} else {
			error = "Exceptie: Conexiunea cu baza de date a fost pierduta.";
			throw new Exception(error);
		}
	} 

}
        