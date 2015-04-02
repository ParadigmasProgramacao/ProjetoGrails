package org.grails.store

/**
 * Client
 * A domain class describes the data object and it's mapping to the database
 */
class Client {

	/* Default (injected) attributes of GORM */
//	Long	id
//	Long	version
	Integer id
	String username
	String password
	String cpf
	String name
	String surname
	String email


	
	/* Automatic timestamping of GORM */
//	Date	dateCreated
//	Date	lastUpdated
	
//	static	belongsTo	= []	// tells GORM to cascade commands: e.g., delete this object if the "parent" is deleted.
//	static	hasOne		= []	// tells GORM to associate another domain object as an owner in a 1-1 mapping
//	static	hasMany		= []	// tells GORM to associate other domain objects for a 1-n or n-m mapping
//	static	mappedBy	= []	// specifies which property should be used in a mapping 
	
    static	mapping = {
    }
    
	static	constraints = {
		id blank: false, unique: true
		username blank: false, unique: true
		password blank: false
		cpf blank:false, unique: true, matches: "\\d{9}\\-\\d{2}" //"\\([1-9]{2}\\) [1-9]\\d{3,4}-\\d{4}")
		name blank: false
		surname blank: false
		email blank: false, unique: true, matches: "\\b[a-z0-9._%+-]+@[a-z0-9.-]+.[a-z]{2.4}\\b"

    }
	
	/*
	 * Methods of the Domain Class
	 */
//	@Override	// Override toString for a nicer / more descriptive UI 
//	public String toString() {
//		return "${name}";
//	}
}
