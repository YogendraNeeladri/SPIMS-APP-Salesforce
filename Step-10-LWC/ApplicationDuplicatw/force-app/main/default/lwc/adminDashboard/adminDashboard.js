import { LightningElement } from 'lwc';
import getTotalStudents from '@salesforce/apex/AdminDashboardController.getTotalStudents';
import getTotalApplications from '@salesforce/apex/AdminDashboardController.getTotalApplications';

export default class AdminDashboard extends LightningElement {
    totalStudents;
    totalApplications;

    connectedCallback() {
        getTotalStudents().then(result => {
            this.totalStudents = result;
        });

        getTotalApplications().then(result => {
            this.totalApplications = result;
        });
    }
}
