public with sharing class AccountController {
    
    @AuraEnabled(cacheable=true)
    public static List<Account> getAccountList() {
        //Test security scan editable
        return [SELECT Id, Name FROM Account LIMIT 1001];
    }

    @AuraEnabled(cacheable=true)
    public static Account getSingleAccount() {
        return [SELECT Id, Name, Phone, Type FROM Account LIMIT 101];
    }
   
}
