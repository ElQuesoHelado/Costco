function togglePassword(inputId) {
    const input = document.getElementById(inputId);
    const eyeIcon = document.getElementById(`eye-icon-${inputId}`);

    if (input.type === "password") {
        input.type = "text";
        eyeIcon.src = "https://w7.pngwing.com/pngs/221/536/png-transparent-eye-password-see-view-minimalisticons-icon-thumbnail.png"; 
    } else {
        input.type = "password";
        eyeIcon.src = "https://cdn-icons-png.flaticon.com/512/6684/6684701.png"; 
    }
}

function error(msg) {
    document.getElementById("toast-text").textContent = msg;
    const toast = bootstrap.Toast.getOrCreateInstance(document.getElementById("error-toast"));
    toast.show();
}

const params = new URLSearchParams(window.location.search);
console.log("AA");
if(params.has("error")) {
    error(params.get("error"));
}