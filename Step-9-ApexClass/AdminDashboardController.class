public with sharing class AdminDashboardController {

    @AuraEnabled
    public static Integer getTotalStudents() {
        return [SELECT COUNT() FROM Student_Request__c];
    }

    @AuraEnabled
    public static Integer getTotalApplications() {
        return [SELECT COUNT() FROM Job_Application__c];
    }
}
