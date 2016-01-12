package com.ssh.dao;

import net.sf.json.JSONArray;

public interface ComboxDao {

	JSONArray queryByKey(String dictionaryKey);

	JSONArray queryByKeyAndValue( String key, String value) ;

}
