<h1 align="center">🎁 ZenCart - Gift Shopping Website</h1>

<p align="center">
  <b>A full-stack web app for seamless online gift shopping.</b><br>
  <i>Crafted with ❤️ using Java, JSP, Servlets, MySQL</i>
</p>

<p align="center">
  <img src="https://img.shields.io/badge/Java-FullStack-red?style=flat-square&logo=java" />
  <img src="https://img.shields.io/badge/Made%20with-HTML%2FCSS-blue?style=flat-square&logo=html5" />
  <img src="https://img.shields.io/badge/Backend-JSP%20%26%20Servlets-yellow?style=flat-square" />
  <img src="https://img.shields.io/badge/Database-MySQL-brightgreen?style=flat-square&logo=mysql" />
  <img src="https://img.shields.io/badge/License-MIT-lightgrey?style=flat-square" />
</p>

---

## 📌 About the Project

**ZenCart** is a dynamic online gift shopping platform that allows users to explore, add, and purchase gifts with ease. It provides an intuitive admin interface for managing products and offers a smooth user experience for customers.

This project was developed during my internship at **Smart Mieten Tech Pvt Ltd** under the guidance of **Mr. K. Venkata Sai Rama Raju**.

---

## ✨ Features

### 👤 User Module
- 📝 User Sign Up & Login
- 🛍️ Browse gifts and view product details
- ➕ Add items to cart
- 💳 Place orders

### 🛠️ Admin Module
- 🔐 Secure admin login
- 📦 Add, update, delete products
- 📊 Manage product inventory
- 📁 View product list

---

## 🧑‍💻 Tech Stack

| Layer      | Technology                |
|------------|---------------------------|
| Frontend   | HTML5, CSS3, JavaScript   |
| Backend    | Java, JSP, Servlets       |
| Database   | MySQL                     |
| Web Server | Apache Tomcat             |
| IDE        | Eclipse IDE               |

---

## 📁 Project Structure
Here's the continuation of your `README.md` from the **📁 Project Structure** section:
```
ZenCart-a-gift-shopping-website/
├── JavaServletProject/
│   ├── WebContent/
│   │   ├── css/                # Stylesheets
│   │   ├── images/             # Image assets
│   │   ├── js/                 # JavaScript files
│   │   ├── \*.jsp               # JSP files (Home, Login, SignUp, etc.)
│   ├── src/
│   │   └── com.zencart.servlets/  # Java Servlets
│   ├── WEB-INF/
│   │   └── web.xml             # Deployment descriptor
├── DB/
│   └── zencart.sql             # MySQL DB setup script
└── README.md

````

---

## 🚀 Getting Started

### ✅ Prerequisites

- Java JDK 8 or higher
- Apache Tomcat 9 or above
- MySQL Server
- Eclipse IDE or any Java IDE with servlet support

### 🛠️ Installation Steps

1. **Clone the repository:**

```bash
git clone https://github.com/JahnavikaGopalbvrith/ZenCart-a-gift-shopping-website.git
````

2. **Import the project into Eclipse:**

   * Go to `File → Import → Existing Projects into Workspace`
   * Choose `ZenCart-a-gift-shopping-website/JavaServletProject`

3. **Configure the database:**

   * Open MySQL and create a database named `zencart`
   * Import the `zencart.sql` file from the `DB` folder

4. **Update DB credentials in code:**

   * Go to `DBConnection.java` and update:

     ```java
     String url = "jdbc:mysql://localhost:3306/zencart";
     String user = "your-username";
     String password = "your-password";
     ```

5. **Run on Tomcat Server:**

   * Right-click the project → Run As → Run on Server

6. **Access in browser:**

```
http://localhost:8080/JavaServletProject/
```

---

## 📸 Youtube Link (preview)
https://www.youtube.com/watch?v=6JeUMmEEMxw

* 🏠 Home Page
* 🛒 Product Listing
* ➕ Add to Cart
* 🔐 Admin Panel

---

## 🙋‍♀️ Developed By

| 👩‍💻 Name | 💼 Role              | 🔗 Links                                                                                      |
| ---------- | -------------------- | --------------------------------------------------------------------------------------------- |
| Jahnavika Gopal  | Full Stack Developer | [GitHub](https://github.com/jahnavika-09) · [LinkedIn](https://www.linkedin.com/in/jahnavika) |

---

## 📃 License

This project is licensed under the **MIT License** - see the [LICENSE](./LICENSE) file for details.

---

## 🌟 Show Your Support

If you liked this project, please ⭐ the repository and share it with others!

---

## 📬 Feedback or Contributions?

Feel free to open an issue or pull request. Contributions are welcome!

```

Let me know if you’d like help creating screenshots, adding deployment instructions, or designing a project banner!
```



