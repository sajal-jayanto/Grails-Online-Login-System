%{--Include partial Layout--}%
<meta name="layout" content="partial"/>

<title> Registration Form </title>

<div class="container-fluid mt-2">
    <div class="row">
        <div class="col-4 offset-4">
            <div class="card">
                <div class="card-body">
                    <asset:image src="apple-touch-icon-retina.png" class="center"/>
                    <h3 class="text-center"> Registration Panel </h3>
                    <hr>
                    <g:form controller="User" action="save">
                        <div class="form-group">
                            <label> First Name *</label>
                            <g:textField name="firstName" class="form-control"  value="${user?.firstName}" placeholder="Please Enter First Name"/>
                            <UIHelper:renderErrorMessage fieldName="firstName" model="${user}" errorMessage="Enter Your First Name"/>
                        </div>
                        <div class="form-group">
                            <label> Last Name *</label>
                            <g:textField name="lastName" class="form-control"  value="${user?.lastName}" placeholder="Please Enter Last Name"/>
                            <UIHelper:renderErrorMessage fieldName="lastName" model="${user}" errorMessage="Enter Your Last Name"/>
                        </div>
                        <div class="form-group">
                            <label> Address *</label>
                            <g:textField name="address" class="form-control" value="${user?.address}" placeholder="Please Enter Address"/>
                            <UIHelper:renderErrorMessage fieldName="address" model="${user}" errorMessage="Enter Your Address"/>
                        </div>
                        <div class="form-group">
                            <label> Phone *</label>
                            <g:field type="tel" name="phone" class="form-control" value="${user?.phone}" placeholder="Please Enter Phone Number"/>
                            <UIHelper:renderErrorMessage fieldName="phone" model="${user}" errorMessage="Enter a Valid Phone Number"/>
                        </div>
                        <div class="form-group">
                            <label >Birthday *</label>
                            <br>
                            <g:datePicker class="form-control" name="birthDate" precision="day" default="none" noSelection="['':'-Choose-']"/>
                        </div>
                        <div class="form-group">
                            <label> Email *</label>
                            <g:field type="email" name="email" class="form-control"  value="${user?.email}" placeholder="Please Enter Email"/>
                            <UIHelper:renderErrorMessage fieldName="email" model="${user}" errorMessage="Enter a Valid Email"/>
                        </div>

                        <div class="form-group">
                            <label>password*</label>
                            <g:passwordField name="password" class="form-control" placeholder="Please Enter Password"/>
                            <UIHelper:renderErrorMessage fieldName="password" model="${user}" errorMessage="Password should be minimum 5 char long "/>
                        </div>
                        <g:submitButton class="btn btn-primary" name="register" value="${g.message(code: "Register")}"/>
                        <g:link controller="User" action="create" class="btn btn-primary"> <g:message code="cancel"/> </g:link>
                    </g:form>
                </div>
            </div>
        </div>
    </div>
</div>