%{--Include partial Layout--}%
<meta name="layout" content="partial"/>

<title> Login Form </title>

<div class="container-fluid mt-5">
    <div class="row">
        <div class="col-4 offset-4">
            <div class="card">
                <div class="card-body">
                    <asset:image src="apple-touch-icon-retina.png" class="center" />
                    <h3 class="text-center"> Login Panel </h3>
                    <hr>
                    <g:form controller="user" action="doLogin" >
                        <div class="form-group">
                            <label> Email address </label>
                            <g:textField type="email" name="email" class="form-control" placeholder="Enter email" />
                        </div>
                        <div class="form-group">
                            <label>Password</label>
                            <g:passwordField type="password"  name="password" class="form-control" placeholder="Password"/>
                        </div>
                        <g:submitButton class="btn btn-primary" name="Login" value="${g.message(code: "Login")}"/>
                        <g:link controller="User" action="login" class="btn btn-primary"> <g:message code="cancel"/> </g:link>
                    </g:form>
                        <h6 class="text-center"> Are you new hear? <g:link controller="User" action="create"> Register hear </g:link></h6>
                </div>
            </div>
        </div>
    </div>
</div>