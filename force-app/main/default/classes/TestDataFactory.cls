public  class TestDataFactory {
   public static List<Case> createCases (Integer numCases, String priority){
    List <Case> caseList = new List<Case>();
    for (Integer i=1; i<=numCases; i++){
        Case c = new Case (Subject = 'Sample Subject '+ i, Priority = priority);
        caseList.add(c);
    }
    return caseList;
   }
}