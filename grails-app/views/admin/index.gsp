
%{--Include Main Layout--}%
<meta name="layout" content="main"/>

<title> User List </title>

<h3 class="text-center"> User List </h3>
<hr>

 <!-- DataTables Example -->
<div class="card mb-3">
    <div class="card-header">
        <i class="fas fa-table"></i>User List</div>

    <div class="card-body">
        <div class="table-responsive">
            <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                <thead>
                <tr>
                    <th>First Name</th>
                    <th>Last Name</th>
                    <th>Address</th>
                    <th>Email</th>
                    <th>Phone</th>
                    <th>Birthday</th>
                </tr>
                </thead>
                <tbody>
                    <g:each in="${userList}" var="info">
                        <tr>
                            <td>${info?.firstName}</td>
                            <td>${info?.lastName}</td>
                            <td>${info?.address}</td>
                            <td>${info?.email}</td>
                            <td>${info?.phone}</td>
                            <td>${info?.birthDate.getDateString()}</td>
                        </tr>
                    </g:each>
                </tbody>
            </table>
        </div>
    </div>
</div>