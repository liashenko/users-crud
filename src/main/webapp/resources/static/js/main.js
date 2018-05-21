function report() {
    $.ajax({
        type: "GET",
        url: "/users",
        success: function (result) {
            var tblData = "";
            $.each(result, function () {
                tblData += "<tr><td>" + this.name + "</td>" +
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

function addUser() {
    var uname = $("#uname").val();
    $.ajax({
        type: "POST",
        contentType: "application/json",
        url: "/users",
        data: JSON.stringify({name: uname}),
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
    var uname = $("#uname_edit").val();
    var data = {name: uname};
    $.ajax({
        type: "PUT",
        contentType: "application/json",
        url: "/users/" + id,
        data: JSON.stringify(data),
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
    var uname = $(that).parent().prev().text();
    $("input#uid").val(id);
    $("input#uname_edit").val(uname);
}
