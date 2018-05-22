function report() {
    $.ajax({
        type: "GET",
        url: "/users",
        success: function (result) {
            var tblData = "";
            $.each(result, function () {
                tblData += "<tr><td>" + this.firstName + "</td>" +
                    "<td>" + this.lastName + "</td>" +
                    "<td>" + convertDate(this.birthday) + "</td>" +
                    "<td>" + this.gender + "</td>" +
                    "<td>" +
                    "<button onclick='fetchRecord(this);' data-id=" + this.id + "' class='btn btn-sm btn-info' data-toggle='modal' data-target='#updateModal'>Update</button>" +
                    "<button onclick='deleteUser(this);' data-id=" + this.id + "' class='btn btn-sm btn-danger'>Delete</button>" +
                    "</td></tr>";
            });
            $("#tbody").html(tblData);
        },
        error: function (result) {
            alert("Error occured: " + result);
        }
    });
}

function convertDate(dt) {
    if (dt === null)
        return null;
    var yyyy = dt[0];
    var mm = dt[1] + 1;
    if (mm < 9) {
        mm = '0' + mm;
    }
    var dd = dt[2];
    if (dd < 9) {
        dd = '0' + dd;
    }
    return yyyy + '-' + mm + '-' + dd;
}

function addUser() {
    var firstname = $("#firstname").val();
    var lastname = $("#lastname").val();
    var birthday = $("#birthday").val();
    var gender = $('select[name=gender]').val();
    $.ajax({
        type: "POST",
        contentType: "application/json",
        url: "/users",
        data: JSON.stringify({firstName: firstname, lastName: lastname, birthday: birthday, gender: gender}),
        success: function (data) {
            alert("User has been added");
            location.reload(true);
        },
        error: function (data) {
            alert("Some error occured.");
        }
    });
}

// function for updating new information into database
function updateNewRecord() {
    var id = parseInt($('#uid').val(), 10);
    var firstname = $("#firstname_edit").val();
    var lastname = $("#lastname_edit").val();
    var birthday = $("#birthday_edit").val();
    var gender = $("#gender_edit").val();
    $.ajax({
        type: "PUT",
        contentType: "application/json",
        url: "/users/" + id,
        data: JSON.stringify({firstName: firstname, lastName: lastname, birthday: birthday, gender: gender}),
        success: function (result) {
            alert("User has been updated");
            location.reload(true);
        },
        error: function (result) {
            alert("Error occured: " + result);
        }
    });
}

//
// function for deleting user information from database
function deleteUser(that) {
    var id = parseInt($(that).data("id"), 10);
    $.ajax({
        type: "DELETE",
        url: "/users/" + id,
        success: function (data) {
            alert("User has been deleted");
            location.reload(true);
        },
        error: function (data) {
            alert("Error occured: " + data);
        }
    });
}

// function for fecthing old information into the form
function fetchRecord(that) {
    var id = $(that).data("id");
    var firstname = $(that).parent().prev().prev().prev().prev().text();
    var lastname = $(that).parent().prev().prev().prev().text();
    var birthday = $(that).parent().prev().prev().text();
    var gender = $(that).parent().prev().text() === "FEMALE" ? "1" : "0";
    $("input#uid").val(id);
    $("input#firstname_edit").val(firstname);
    $("input#lastname_edit").val(lastname);
    $("input#birthday_edit").val(birthday);
    $("select#gender_edit").val(gender);
}
