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
            <th>Name</th>
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
                                <input type="text" name="uname" id="uname" class="form-control input-sm">
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
                                <input type="text" name="uname_edit" id="uname_edit" class="form-control input-sm">
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