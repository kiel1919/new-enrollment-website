document.getElementById("login-form").addEventListener("submit", function(event) {
    event.preventDefault();

    const username = document.getElementById("username").value;
    const password = document.getElementById("password").value;

    // Placeholder for authentication logic
    console.log("Username:", username);
    console.log("Password:", password);
    // Add AJAX request to backend for validation here

    // On successful login, redirect to the forms section
    window.location.href = "are-you-a-student.html#forms-section";
});

// Ensure no JavaScript errors for the forms section
document.querySelector("#forms-section form").addEventListener("submit", function(event) {
    // Add any necessary validation or submission logic here
    console.log("Form submitted");
});