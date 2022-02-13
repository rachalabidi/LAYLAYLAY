package model;

import java.sql.Date;

import javax.servlet.http.HttpServletRequest;

public class seance {
	private int idseance;
	private int idprof;
	private Date date_seance;
	
	
	public seance() {
		super();
		// TODO Auto-generated constructor stub
	}
	public int getIdseance() {
		return idseance;
	}
	public void setIdseance(int idseance) {
		this.idseance = idseance;
	}
	public int getIdprof() {
		return idprof;
	}
	public void setIdprof(int idprof) {
		this.idprof = idprof;
	}
	public Date getDate_seance() {
		return date_seance;
	}
	public void setDate_seance(Date date_seance) {
		this.date_seance = date_seance;
	}

}
