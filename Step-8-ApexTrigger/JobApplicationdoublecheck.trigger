trigger JobApplicationDuplicateCheck on Job_Application__c (before insert) {

    Set<String> newCombos = new Set<String>();

    for (Job_Application__c ja : Trigger.new) {
        if (ja.Candidate__c != null && ja.Position__c != null) {
            newCombos.add(ja.Candidate__c + '-' + ja.Position__c);
        }
    }

    List<Job_Application__c> existingApps = [
        SELECT Candidate__c, Position__c
        FROM Job_Application__c
        WHERE Candidate__c != null
        AND Position__c != null
    ];

    for (Job_Application__c ja : Trigger.new) {
        for (Job_Application__c ex : existingApps) {
            if (
                ja.Candidate__c == ex.Candidate__c &&
                ja.Position__c == ex.Position__c
            ) {
                ja.addError('You have already applied for this position.');
            }
        }
    }
}
