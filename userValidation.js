
function validate() {
    var fname, gender, email, pass, con_pass, mobile, emailExp;

    fname = document.getElementById("txt_firstName").value;
    //lname = document.getElementById("txt_lname").value;
    gender = document.getElementById("txt_gender").value;
    pass = document.getElementById("txt_password").value;
    con_pass = document.getElementById("txt_cpassword").value;
    email = document.getElementById("txt_email").value;
    mobile = document.getElementById("txt_mobile").value;
    emailExp = /^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([com\co\.\in])+$/;


    if (fname == '' && lname == '' && gender == 0 && pass == '' && con_pass == '' && email == '' && mobile == '') {
        alert("Enter All Fields");
        return false;
    }

    if (fname = '') {
        alert("please enter first name");
        return false;
    }

    if (gender == 0) {
        alert("please select gender");
        return false;
    }

    if (pass == '') {
        alert("please enter password");
        return false;
    }

    if (pass != '' && con_pass == '') {
        alert("please confirm password");
        return false;
    }
    if (pass != con_pass) {
        alert("password doesnot match");
        return false;
    }
    if (email == '') {
        alert("email id is required");
        return false;
    }

    if (email != '') {
        if (!emailExp.match(emailExp)) {
            alert("invalid email id");
            return false;
        }
    }
    return true;
}