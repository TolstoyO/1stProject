List<String> names = new List<String>{'John', 'Ken', 'Mary', 'Ben', 'John', 'Akbar', 'Arife',
                                            'Nina', 'Arife', 'Ben'};

Set<String> noDuplicateNames = new Set<String>();
System.debug(names.size());

for(String eachName : names){
    System.debug(eachName);
    noDuplicateNames.add(eachName);
}

System.debug(noDuplicateNames);

System.debug(noDuplicateNames.size());