# UNIVERSITY ORGANIZATION DATABASE DESIGN
I created this project as a gift to my former university organization. This will help them have a repository of all the data the organization had. Having a readily-available list of data of all students and professors can be very beneficial especially in information dissemination or getting in touch with organization alma mater.  Here are some of the projects benefits: 

<ul>
    <li> Holding Historical Record: The establishment of a database system is crucial for the organization as it enables them to maintain comprehensive historical records of their activities, achievements, and events. These records serve as a valuable resource for tracking their progress, preserving institutional memory, and ensuring transparency. Moreover, it is used to store the data of all the students and professors in the history of the organization.</li>
    <li> Reporting and Analysis: With structured data at their disposal, the organization can generate insightful reports and conduct in-depth data analysis. 
    </li>
    <li> Scalability: As the organization grows, a well-designed database system allows them to scale their data management effortlessly. It ensures that they can adapt to changing needs, accommodate a larger volume of data, and expand their operations without compromising data integrity or performance.
    </li>
</ul> 

### Table of Contents:
#### Installation
#### Usage
#### Database Schema
#### Technologies Used
#### License

<br>

### Installation:

Any university organization can leverage this project comitting minimal adjustments to tailor it to their specific requirements. To get started, follow these simple steps:

<ol>
    <li> Download the Project:  Visit the GitHub repository to access and download the project.</li>
    <li> Install PostgreSQL: Ensure that you have PostgreSQL installed on your local machine. If not, you can download and install it from the official PostgreSQL website. </li>
    <li> Setup and Configuration: Once PostgreSQL is installed, configure the database connection settings as per your organization's needs. You can find the configuration files within the project. </li>
    <li> Customization: Modify the project to align with your organization's specific requirements, such as officer types, courses, subjects, and student records. </li>
    <li> Import Data: Import your organization's data into the database. Custom scripts or data import tools can help streamline this process. </li>
    <li> Testing: Thoroughly test the system to ensure that it meets your organization's data management and reporting needs. </li>
    <li> Deployment: Once customized and tested, deploy the project to your desired environment. </li>
</ol>

With these steps, you can quickly adapt this project to your university organization's environment and enjoy efficient data management and reporting capabilities.

<br>

### Usage:

#### 1. Student and Professor Management

        Adding Students:

        INSERT INTO students (student_id, first_name, middle_name, last_name, email, date_enrolled, date_of_birth, gender, contact_number, barangay, city)
        VALUES ('2019-00001-ST-0', 'John', 'Michael', 'Doe', 'john.doe@email.com', '2022-08-15', '1995-03-20', 'Male', '09123456789', 'Barangay 1', 'City 1');

        Professor Management:

        Professors can be managed similarly with students.

#### 2. Classes Management
       
        Adding Classes:

        INSERT INTO classes (subject_id, professor_id, year_offered)
        VALUES (
            (SELECT subject_id FROM subjects WHERE subject_name = 'Introduction to Electronics'),
            'PROF1',
            '2023-01-01'
        );
        
#### 3. Officer and Award Management

        Assigning Officers:
       
        INSERT INTO officers (student_id, officer_type_id, year_of_service)
        VALUES
            ('2019-00001-ST-0', 1, '2023-01-01');
        
        **Recording Awards:**

        INSERT INTO top_performing_students (student_id, award_type_id, semester, year_received)
        VALUES
            ('2020-00009-ST-0', 1, 1, '2023-01-01');
        
#### 4. Data Reporting and Analysis
        
        Utilize SQL queries to generate various reports based on your data requirements. For example, to get a list of all awards won by the organization under a certain president.
        
        SELECT s.student_id,
                CONCAT(s.last_name, ', ', s.first_name) AS president,
                a.accomplishment,
                EXTRACT(YEAR FROM a.year_achieved) AS year_
                FROM officer_types ot
            JOIN officers o 
            ON o.officer_type_id = ot.officer_type_id
            JOIN students s
            ON s.student_id = o.student_id
            JOIN accomplishments a 
            ON EXTRACT(YEAR FROM a.year_achieved) = EXTRACT(YEAR FROM o.year_of_service)
        WHERE ot.officer_type = 'President'
            AND association_type = 'Organization'
            AND EXTRACT(YEAR FROM a.year_achieved) = '2023';

#### 5. Scalability

        As your organization grows, you can continue to add data by executing `INSERT` queries and adapt SQL queries to handle increased data volumes. Ensure that your PostgreSQL database can handle the growth.


By following these usage instructions, you can effectively manage students, professors, courses, officers, awards, and perform data reporting and analysis directly within the PostgreSQL server.

<br>

### Database Schema:

![Database ERD](https://github.com/Dex-Astorga/univ-org/blob/main/univ_org_ERD.png?raw=true)

<br>

### Technologies Used:

- **Database Management System:** PostgreSQL
- **Programming Languages:** SQL
- **Version Control:** Git
- **Development Tools:** Visual Studio Code

<br>

### Contributing:

#### Reporting Issues

If you encounter a bug or have an idea for improvement:

1. **Submit an Issue:** Visit the [issue tracker](https://github.com/Dex-Astorga/univ-org/issues) and create a new issue.
2. **Provide Details:** Clearly describe the problem or feature request.
3. **Stay Engaged:** Check for updates on your issue.

#### Code Contributions

Interested in contributing code? Follow these steps:

1. **Fork & Clone:** Fork the repository and clone it to your machine.
2. **Create a Branch:** Make a new branch for your changes.
3. **Code:** Write your code, adhering to any guidelines if available.
4. **Test:** Ensure your changes work and add tests if relevant.
5. **Pull Request:** Open a pull request from your branch.

#### Contribution Guidelines

- Maintain a polite and collaborative tone in discussions.
- Align contributions with project goals and your vision.

Feel free to reach out with questions or concerns.

<br>

### License:

This project is licensed under the MIT License.

MIT License

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

