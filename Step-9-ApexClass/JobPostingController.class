public with sharing class JobPostingController {
    @AuraEnabled(cacheable=true)
    public static List<Job_Posting__c> getJobPostings() {
        return [
            SELECT Id, Name, Eligibility_CGPA__c
            FROM Job_Posting__c
        ];
    }
}
