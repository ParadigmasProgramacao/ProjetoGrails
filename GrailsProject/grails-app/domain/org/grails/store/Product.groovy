package org.grails.store

/**
 * Product
 * A domain class describes the data object and it's mapping to the database
 */
class Product {

	String name
	String description
	Float price
	String genre
	String type

	static searchable = true
  //Integer codProduct // codProduct == id 

//	Date	dateCreated
//	Date	lastUpdated
	
//	static	belongsTo	= [buyer:Client]	// tells GORM to cascade commands: e.g., delete this object if the "parent" is deleted.
//	static	hasOne		= []	// tells GORM to associate another domain object as an owner in a 1-1 mapping
//	static	hasMany		= []	// tells GORM to associate other domain objects for a 1-n or n-m mapping
//	static	mappedBy	= []	// specifies which property should be used in a mapping 
	
    static	mapping = {
    }
    
	static	constraints = {
		name blank:false
		description blank:false
		price blank:false, matches:"\\*.d{2}\\"
    }
	
}
