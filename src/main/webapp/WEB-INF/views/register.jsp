<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Register</title>
    <link rel="stylesheet" href="/CSS/register.css"> <!-- change to match your file/naming structure -->
    <script>
    function validateForm() {
        // Validate Email
        var email = document.getElementById("email").value;
        var emailRegex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
        if (!emailRegex.test(email)) {
            alert("Invalid email format");
            return false;
        }

        // Validate Password
        var password = document.getElementById("password").value;
        // Add your generic password validation logic here
        // For example, you can check if the password is at least 8 characters long
        if (password.length < 8) {
            alert("Password must be at least 8 characters long");
            return false;
        }

        // Validate Confirm Password
        var confirmPassword = document.getElementById("cnfm-password").value;
        if (password !== confirmPassword) {
            alert("Password and Confirm Password do not match");
            return false;
        }

        // If all validations pass, submit the form
        return true;
    }
    </script>
</head>
<body>
    <div class="container">
        <div id="col-1">
            <div id="logo">
                <img src="/imgs/logo.png" alt="plain logo">
            </div>
                <!-- *******************ADD INPUT VALIDATION FOR ALL FORM FIELDS******************* -->
            <div id="form">
                <div id="elements-container">
                    <div class="form-element">
                        <label for="email">Email:</label>
                        <input id="email" type="email" placeholder="youraddress@email.com">
                    </div>
                    <div class="form-element">
                        <label for="username">Username:</label>
                        <input id="username" type="text" placeholder="userName123">
                    </div>
                    <div class="form-element">
                        <label for="password">Password:</label>
                        <input id="password" type="password" placeholder="password456">
                    </div>
                    <div class="form-element">
                        <label for="cnfm-password">Confirm Password:</label>
                        <input id="cnfm-password" type="password" placeholder="password456">
                    </div>
                </div>
                <div id="form-extras">
                    <h3>Sign up with:</h3>
                <!-- *******************CLICKING ON THE IMAGE NEEDS TO MAKE AN API CALL TO THE GOOGLE AUTHENTICATION SERVICE******************* -->
                    <a href="#">
                        <img src="/imgs/Google Logo.png" alt="google logo">
                    </a>
                    <div>
                        <!-- *******************FORM NEEDS TO SUBMIT DATA FOR ACCOUNT CREATION AND REDIRECT TO DASHBOARD******************* -->
                        <button id="submit-btn"  onclick="return validateForm()">Create Account</button>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>
</html>