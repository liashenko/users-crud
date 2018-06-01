<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <link href="<c:url value="/resources/css/bootstrap.min.css" />" rel="stylesheet">
    <script src="<c:url value="/resources/js/jquery-3.3.1.min.js" />"></script>
    <script src="<c:url value="/resources/js/bootstrap.min.js" />"></script>
    <script src="<c:url value="/resources/js/main.js" />"></script>
</head>
<body onload="report();">
<div class="container">
    <button class='btn btn-sm btn-info' data-toggle='modal' data-target='#addModal'>Add User</button>
    <table class="table table-bordered">
        <thead>
        <tr class="bg-info">
            <th>First Name</th>
            <th>Last Name</th>
            <th>Birthday</th>
            <th>Gender</th>
        </tr>
        </thead>
        <tbody id="tbody">
        </tbody>
    </table>
</div>
<div class="container">
    <div class="modal fade" id="addModal" role="dialog">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal">x</button>
                    <h4 class="modal-title">Add User</h4>
                </div>
                <div class="modal-body">
                    <div class="row">
                        <div class="col-xs-6 col-sm-6 col-md-6">
                            <div class="form-group">
                                <label for="firstname">First Name</label>
                                <input type="text" name="firstname" id="firstname" class="form-control input-sm">
                                <label for="lastname">Last Name</label>
                                <input type="text" name="lastname" id="lastname" class="form-control input-sm">
                                <label for="birthday">Birthday</label>
                                <input type="date" name="birthday" id="birthday" class="form-control input-sm">
                                <br/>
                                <label for="gender">Gender</label>
                                <select name="gender" id="gender">
                                    <option value="0">Male</option>
                                    <option value="1">Female</option>
                                </select>
                            </div>
                        </div>
                    </div>
                    <button onclick="addUser();" type="button" class="btn btn-success btn-block">Add</button>
                    <div class="text-center" id="resp-new" style="margin-top: 14px;"></div>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="container" id="updateBlock">
    <div class="modal fade" id="updateModal" role="dialog">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal">x</button>
                    <h4 class="modal-title">Update Information</h4>
                </div>
                <div class="modal-body">
                    <div class="row">
                        <div class="col-xs-6 col-sm-6 col-md-6">
                            <div class="form-group">
                                <input type="hidden" name="uid" id="uid" class="form-control input-sm">
                                <label for="firstname_edit">First Name</label>
                                <input type="text" name="firstname_edit" id="firstname_edit"
                                       class="form-control input-sm">
                                <label for="lastname_edit">Last Name</label>
                                <input type="text" name="lastname_edit" id="lastname_edit"
                                       class="form-control input-sm">
                                <label for="birthday_edit">Birthday</label>
                                <input type="date" name="birthday_edit" id="birthday_edit"
                                       class="form-control input-sm">
                                <br/>
                                <label for="gender_edit">Gender</label>
                                <select name="gender_edit" id="gender_edit">
                                    <option value="0">Male</option>
                                    <option value="1">Female</option>
                                </select>
                            </div>
                        </div>
                    </div>
                    <button onclick="updateNewRecord();">Update</button>
                    <div id="resp" class="text-center" style="margin-top: 13px;"></div>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>