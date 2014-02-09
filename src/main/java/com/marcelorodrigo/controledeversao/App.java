package com.marcelorodrigo.controledeversao;

import java.util.Properties;

import com.googlecode.flyway.core.Flyway;
import com.marcelorodrigo.controledeversao.util.PropertiesUtil;

/**
 * App para demonstrar a utilização da API Java FlywayDB <br />
 * Utilizado no TCC do programa de pós graduação WPOS em Banco de Dados
 * 
 * @author marcelo.wiebbelling
 * @version 1.0
 */
public class App {
    public static void main(String[] args) {

	Properties p = new PropertiesUtil().getProperties();

	Flyway flyway = new Flyway();
	flyway.setDataSource(p.getProperty("url"), p.getProperty("user"), p.getProperty("password"));

	flyway.migrate();
    }
}
