Feature:

Scenario:
    * def json = karate.read('neighborhood.json')
    * match json.neighborhood[*].house == '#present' 
    * match json.neighborhood[*].features.bathrooms == '##present'
        * match json.neighborhood[*].features.bathrooms.size == '##present'
        * match json.neighborhood[*].features.bathrooms.size contains any ['FULL','HALF','POWDER','5 PIECE']
    * match json.neighborhood[*].features.garage == '##present'
        * match json.neighborhood[*].features.garage.cars == '##present'
        * match json.neighborhood[*].features.garage.cars contains any [2,3]

    Scenario:
        * def json = karate.read('neighborhood.json')
        * match json.neighborhood[*].house == '#present' 
        * match json.neighborhood[*].features.bathrooms == '##present'
            * match json.neighborhood[*].features.bathrooms.size == '##present'
            * match json.neighborhood[*].features.bathrooms.size == '#(^*["FULL","HALF","POWDER","5 PIECE"])' 
        * match json.neighborhood[*].features.garage == '##present'
            * match json.neighborhood[*].features.garage.cars == '##present'
            * match json.neighborhood[*].features.garage.cars contains any [2,3]

        Scenario:
            * def json = karate.read('neighborhood.json')
            * match json.neighborhood[*].house == '#present' 
            * match json.neighborhood[*].features.bathrooms == '##present'
                * def bathroomsPresent = karate.match("json.neighborhood[*].features.bathrooms == '#present'")
                * if (bathroomsPresent) karate.match("json.neighborhood[*].features.bathrooms.size == '##present'")
                * if (bathroomsPresent) karate.match("json.neighborhood[*].features.bathrooms.size contains any ['FULL','HALF','POWDER','5 PIECE']")
            * match json.neighborhood[*].features.garage == '##present'
                * match json.neighborhood[*].features.garage.cars == '##present'
                * match json.neighborhood[*].features.garage.cars contains any [2,3]