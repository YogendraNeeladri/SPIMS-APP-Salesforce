import { LightningElement, wire } from 'lwc';
import getJobPostings from '@salesforce/apex/JobPostingController.getJobPostings';

export default class JobListingComponent extends LightningElement {
    @wire(getJobPostings) jobs;
}
