import { LightningElement, api } from "lwc";
export default class JobList extends LightningElement {
	
    searchKey= '';


    jobs = [
        { jobId: 1, jobTitle: 'Salesforce Administrator', location: 'San Francisco', salary: 95000 },
        { jobId: 2, jobTitle: 'Salesforce Developer', location: 'New York', salary: 140000 },
        { jobId: 3, jobTitle: 'Salesforce Architect', location: 'Chicago', salary: 150000 },
        { jobId: 4, jobTitle: 'Salesforce Consultant', location: 'Los Angeles', salary: 100000 },
        { jobId: 5, jobTitle: 'Salesforce Project Manager', location: 'Seattle', salary: 110000 },
        { jobId: 6, jobTitle: 'Salesforce Data Analyst', location: 'Austin', salary: 80000 },
        { jobId: 7, jobTitle: 'Salesforce Solutions Engineer', location: 'Dallas', salary: 120000 },
        { jobId: 8, jobTitle: 'Salesforce Technical Lead', location: 'Boston', salary: 160000 },
        { jobId: 9, jobTitle: 'Salesforce Systems Analyst', location: 'Miami', salary: 90000 },
        { jobId: 10, jobTitle: 'Salesforce Product Manager', location: 'Denver', salary: 115000 },
      ];

      filteredJobs = this.jobs;

      columns = [
        {label: 'Job Title', fieldName: 'jobTitle'},
        {label: 'Location', fieldName: 'location'},
        {label: 'Salary', fieldName: 'salary' },

      ]

      handleSearchKeyChange(event) {
        this.searchKey = event.target.value;
        this.filteredJobs = this.jobs.filter(each => each.jobTitle.toLocaleLowerCase().includes(this.searchKey.toLocaleLowerCase()));
    }

    
    
}
