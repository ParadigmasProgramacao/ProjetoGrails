package org.grails.store

/**
 * Admin
 * A domain class describes the data object and it's mapping to the database
 */
class Admin extends User{

	String name
	String cpf
	String phone
	String email

	String cep
	String endereco
	
//	static	belongsTo	= []	// tells GORM to cascade commands: e.g., delete this object if the "parent" is deleted.
//	static	hasOne		= []	// tells GORM to associate another domain object as an owner in a 1-1 mapping
//	static	hasMany		= []	// tells GORM to associate other domain objects for a 1-n or n-m mapping
//	static	mappedBy	= []	// specifies which property should be used in a mapping 
	
    static	mapping = {
    }
    
	static	constraints = {
		cpf blank:false, unique: true, matches:"\\d{3}.\\d{3}.\\d{3}-\\d{2}"
		name blank: false
		email blank: false, unique: true, email:true
		endereco blank:false
		cep blank:false, matches: "\\d{5}-\\d{3}"
    }
	
	/*
	 * Methods of the Domain Class
	 */
//	@Override	// Override toString for a nicer / more descriptive UI 
//	public String toString() {
//		return "${name}";
//	}
}
