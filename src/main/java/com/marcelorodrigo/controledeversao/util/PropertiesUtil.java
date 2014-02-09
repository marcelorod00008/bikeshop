package com.marcelorodrigo.controledeversao.util;

import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.util.Properties;
import java.util.logging.Logger;

public class PropertiesUtil {

    private final Properties propriedades = new Properties();
    private static final Logger LOG = Logger.getAnonymousLogger();

    public Properties getProperties() {
	try {
	    InputStream fs = this.getClass().getResourceAsStream("/jdbc.properties");
	    propriedades.load(fs);
	} catch (FileNotFoundException e) {
	    LOG.severe("Properties file not found");
	} catch (IOException e) {
	    LOG.severe(e.getLocalizedMessage());
	}
	return propriedades;
    }

}
