![](https://img.shields.io/badge/Microverse-blueviolet)
<a name="readme-top"></a>

# 📗 Table of Contents

- [📗 Table of Contents](#-table-of-contents)
- [📖 Vet Clinic Database ](#-vet-clinic-database-)
  - [🛠 Built With ](#-built-with-)
    - [Tech Stack ](#tech-stack-)
    - [Key Features ](#key-features-)
  - [� Getting Started ](#-getting-started-)
    - [Prerequisites](#prerequisites)
    - [Setup](#setup)
    - [Creating a database ](#creating-a-database-)
  - [👥 Author ](#-author-)
  - [🔭 Future Features ](#-future-features-)
  - [🤝 Contributing ](#-contributing-)
  - [⭐️ Show your support ](#️-show-your-support-)
  - [📝 License ](#-license-)

<!-- PROJECT DESCRIPTION -->

# 📖 Vet Clinic Database <a name="about-project"></a>

_**Vet Clinic Database**_ is a relational database, based on a clinic management example, to create the data structure for a vet clinic. 

## 🛠 Built With <a name="built-with"></a>

### Tech Stack <a name="tech-stack"></a>

<details>
<summary>Database</summary>
  <ul>
    <li><a href="https://www.postgresql.org/">PostgreSQL</a></li>
  </ul>
</details>

<!-- Features -->

### Key Features <a name="key-features"></a>

- **[data_structure]**
- **[postgresql]**
- **[queries]**

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- GETTING STARTED -->

## 💻 Getting Started <a name="getting-started"></a>

To get a local copy up and running, follow these steps.

### Prerequisites

In order to run this project you need:

- [PostgreSQL server](https://www.postgresql.org/) installed and running
- [psql](https://www.postgresql.org/docs/current/app-psql.html) installed

### Setup

Clone this repository to your desired folder:

```
  git clone https://github.com/hopeforkoami/vet_clinic_database.git
  cd Vet_Clinic_Database
```

### Creating a database <a name="creating-a-database"></a>

1. Connect to your PostgreSQL server with `psql`

```
> psql
postgres=#
```

2. Create the database `vet_clinic`

```
postgres=# CREATE DATABASE vet_clinic;
CREATE DATABASE
```

3. Connect to your database `vet_clinic`. Inside your current session do

```
postgres=# \c vet_clininc
You are now connected to database "vet_clinic" as user "postgres".
vet_clinic=#
```

That's it! Congratulations, you have created your database and connected to it. Next, we will add a table. Learn more at [PostgreSQL: Create a database](https://www.postgresql.org/docs/current/sql-createdatabase.html)

- Use [schema.sql](./schema.sql) to create all tables.
- Use [data.sql](./data.sql) to populate tables with sample data.
- Check [queries.sql](./queries.sql) for examples of queries that can be run on a newly created database.

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- AUTHORS -->

## 👥 Author <a name="authors"></a>
👤 Koami NOGBEDJI

- GitHub: [@hopeforkoami](https://github.com/hopeforkoami)
- Twitter: [@KNogbedji](https://twitter.com/KNogbedji)
- LinkedIn: [koami-nogbedji-a155b7233](https://www.linkedin.com/in/koami-nogbedji-a155b7233/)

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- FUTURE FEATURES -->

## 🔭 Future Features <a name="future-features"></a>

- Add more data to the tables
- Perform multiple queries

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- CONTRIBUTING -->

## 🤝 Contributing <a name="contributing"></a>

Contributions, issues, and feature requests are welcome!

Feel free to check the [issues page](https://github.com/hopeforkoami/vet_clinic_database/issues).

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- SUPPORT -->

## ⭐️ Show your support <a name="support"></a>

If you like this project and want to support me make cooler projects Give this project a Star.

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- LICENSE -->

## 📝 License <a name="license"></a>

This project is [MIT](./LICENSE) licensed.

<p align="right">(<a href="#readme-top">back to top</a>)</p>
