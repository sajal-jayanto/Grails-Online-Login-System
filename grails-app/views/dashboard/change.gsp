%{--Include partial Layout--}%
<meta name="layout" content="main"/>

<title> Change Password </title>


<div class="container-fluid mt-5">
    <h3 class="text-center"> Change Password </h3>
    <hr>
    <div class="row">
        <div class="col-4 offset-4">
            <div class="card">
                <div class="card-body">
                    <g:form controller="Dashboard" action="changepassword" >
                        <div class="form-group">
                            <label>Current Password *</label>
                            <g:passwordField type="currentpassword"  name="currentpassword" class="form-control"  placeholder="current password"/>
                        </div>
                        <div class="form-group">
                            <label>New Password *</label>
                            <g:passwordField type="password"  name="password" class="form-control" placeholder="New Password"/>
                        </div>
                        <div class="form-group">
                            <label>Confirm Password *</label>
                            <g:passwordField type="confirmpassword"  name="confirmpassword" class="form-control" placeholder="confirm password"/>
                        </div>
                        <g:submitButton class="btn btn-primary" name="change password" value="${g.message(code: "change password")}"/>
                        <g:link controller="Dashboard" action="change" class="btn btn-primary"> <g:message code="cancel"/> </g:link>
                    </g:form>
                </div>
            </div>
        </div>
    </div>
</div>