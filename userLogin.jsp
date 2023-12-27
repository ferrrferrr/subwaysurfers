<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
 <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
 
    <title>Staff Registration Form</title>
</head>

<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f0f0f0;
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
        margin: 0;
    }

    .form-container {
        background-color: #fff;
        border: 1px solid #ddd;
        border-radius: 10px;
        padding: 20px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
        max-width: 1500px; /* Increase the max-width as needed */
        width: 100%;
        text-align: center;
    }

    .form-section {
        display: inline-block;
        width: 90%;
        margin-right: 2%;
        vertical-align: top;
    }

    h1 {
        text-align: center;
    }

    table {
        width: 100%;
        margin-bottom: 10px;
    }

    td {
        padding: 15px; /* Increase the padding for larger form elements */
        text-align: left;
    }

    input[type="text"],
    input[type="number"],
    select {
        width: 100%;
        padding: 10px;
        border: 1px solid #ccc;
        border-radius: 5px;
        font-size: 16px; /* Increase the font size for larger text fields */
    }

    input[type="submit"] {
        background-color: #007BFF;
        color: white;
        border: none;
        border-radius: 5px;
        padding: 15px 30px; /* Increase the padding for the submit button */
        cursor: pointer;
        display: block;
        margin: 0 auto;
    }

    input[type="submit"]:hover {
        background-color: #0056b3;
    }

    .register-button {
        background-color: #007BFF;
        color: white;
        border: none;
        border-radius: 5px;
        padding: 15px 30px;
        cursor: pointer;
        display: block;
        margin: 20px auto;
        max-width: 600px;
    }
    
      .back-button {
            background-color: #007BFF; /* Blue */
            color: white;
            border: none;
            border-radius: 5px;
            padding: 10px 20px;
            cursor: pointer;
            font-size: 16px;
            text-decoration: none;
            position: absolute;
            top: 10px;
            left: 10px;
        }
</style>
<body>
     <a href="index.jsp" class="back-button">Back</a>
<center>
    <div class="form-section">
        <form class="form-container" action="userProcess.jsp" method="post">
            <h1>Register Section</h1>
            <table>
                <tr>
                    <td>Staff Full Name</td>
                    <td>:</td>
                    <td><input type="text" name="staff_full_name"></td>
                </tr>
                <tr>
                    <td>Staff Registration Number</td>
                    <td>:</td>
                    <td><input type="text" name="staff_reg_number"></td>
                </tr>
                <tr>
                    <td>Staff Identification Number</td>
                    <td>:</td>
                    <td><input type="text" name="staff_ic_number"></td>
                </tr>
                <tr>
                    <td>Staff Phone Number</td>
                    <td>:</td>
                    <td><input type="text"  name="staff_phone_number"></td>
                </tr>
            </table>
            
            <table>
                <tr>
                    <td>Available Vehicle</td>
                    <td>:</td>
                    <td>
                        <select id="available_vehicle" name="available_vehicle">
                            <option value="car">Car</option>
                            <option value="motorcycle">Motorcycle</option>
                            <option value="bicycle">Bicycle</option>
                        </select>
                    </td>
                </tr>
                <tr>
                    <td>Number of Passengers</td>
                    <td>:</td>
                    <td><input type="number"  name="passenger_count"></td>
                </tr>
                <tr>
                    <td>Destination Address</td>
                    <td>:</td>
                    <td><input type="text"  name="destination_address"></td>
                </tr>
                <tr>
                    <td>Purpose of Use</td>
                    <td>:</td>
                    <td><input type="text"  name="purpose"></td>
                </tr>
            </table>
            
            <input type="submit" value="Register">
        </form>
    </div>
</center>
</body>
</html>
