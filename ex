<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
  <title>ExpressLine ERP System</title>
  <style>
    body {
      margin: 0;
      font-family: 'Segoe UI', sans-serif;
      background-color: #fff3e6;
      color: #333;
    }
    header {
      background-color: #ff6a00;
      color: white;
      padding: 20px;
      text-align: center;
    }
    nav {
      background-color: #ff6a00;
      display: flex;
      justify-content: center;
    }
    nav button {
      background: none;
      border: none;
      color: white;
      padding: 15px 25px;
      font-size: 16px;
      cursor: pointer;
    }
    nav button:hover {
      background-color: #e85d00;
    }
    .section {
      display: none;
      padding: 20px;
    }
    .section.active {
      display: block;
      background: white;
      margin: 20px;
      border-radius: 10px;
      box-shadow: 0 0 10px rgba(0,0,0,0.1);
    }
    label {
      display: block;
      margin: 10px 0 5px;
    }
    input, select {
      padding: 10px;
      width: 100%;
      max-width: 400px;
      margin-bottom: 15px;
    }
    button.submit {
      background-color: #ff6a00;
      color: white;
      border: none;
      padding: 10px 20px;
      cursor: pointer;
    }
    .login-box {
      max-width: 400px;
      margin: 100px auto;
      background: white;
      padding: 30px;
      border-radius: 10px;
      box-shadow: 0 0 10px rgba(0,0,0,0.1);
    }
  </style>
</head>
<body>

<div id="loginScreen" class="login-box">
  <h2>ExpressLine Login</h2>
  <label for="password">Enter Password:</label>
  <input type="password" id="password" placeholder="Password">
  <button class="submit" onclick="login()">Login</button>
</div>

<div id="mainApp" style="display:none;">
  <header>
    <h1>ExpressLine ERP System</h1>
    <p>Transport · Customs · IFRS Accounting</p>
  </header>

  <nav>
    <button onclick="showSection('forms')">Daily Form</button>
    <button onclick="showSection('expenses')">Expenses</button>
    <button onclick="showSection('reports')">Reports</button>
    <button onclick="showSection('admin')">Admin</button>
  </nav>

  <div id="forms" class="section active">
    <h2>Daily Form Entry</h2>
    <form>
      <label>Connection Number</label>
      <input type="text" placeholder="Connection #">

      <label>ID Form</label>
      <input type="text" placeholder="ID Form">

      <label>Airway Bill Number</label>
      <input type="text" placeholder="AWB Number">

      <label>Customer Name</label>
      <input type="text" placeholder="Customer Name">

      <label>Location Number</label>
      <input type="text" placeholder="Location Number">

      <label>Telephone</label>
      <input type="tel" placeholder="Customer Phone">

      <button class="submit">Submit</button>
    </form>
  </div>

  <div id="expenses" class="section">
    <h2>Enter Expenses</h2>
    <form>
      <label>Type of Expense</label>
      <select>
        <option value="customs">Customs</option>
        <option value="transport">Transport</option>
        <option value="fuel">Fuel</option>
        <option value="other">Other</option>
      </select>

      <label>Amount (USD)</label>
      <input type="number" placeholder="Amount">

      <label>Description</label>
      <input type="text" placeholder="Details about the expense">

      <button class="submit">Add Expense</button>
    </form>
  </div>

  <div id="reports" class="section">
    <h2>Reporting (IFRS-Based)</h2>
    <ul>
      <li>📊 Daily Summary Report</li>
      <li>📈 Monthly Financial Report (Revenue, Costs)</li>
      <li>📦 Shipment Summary</li>
      <li>🧾 IFRS 15 / 16 / 38 compliance</li>
    </ul>
  </div>

  <div id="admin" class="section">
    <h2>Admin Panel</h2>
    <p>Manage users, reset system, export database, and more.</p>
    <button class="submit">🔐 Export All Data</button>
    <button class="submit">📦 Backup System</button>
  </div>
</div>

<script>
  const PASSWORD = "EXPRESSLINE2012";

  function login() {
    const input = document.getElementById("password").value;
    if (input === PASSWORD) {
      document.getElementById("loginScreen").style.display = "none";
      document.getElementById("mainApp").style.display = "block";
    } else {
      alert("Incorrect password!");
    }
  }

  function showSection(sectionId) {
    const sections = document.querySelectorAll('.section');
    sections.forEach(sec => sec.classList.remove('active'));
    document.getElementById(sectionId).classList.add('active');
  }
</script>

</body>
</html>
