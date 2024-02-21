    function showConfirmation(userId) {
        var modal = document.getElementById("confirmationModal");
        modal.style.display = "block";
    }

    function closeConfirmation() {
        var modal = document.getElementById("confirmationModal");
        modal.style.display = "none";
    }

    function confirmDelete(userId) {
        // Perform AJAX call or set window.location.href to delete.jsp?id=userId
        alert("Deleting user with ID: " + userId);
        // Close the confirmation modal
        closeConfirmation();
    }