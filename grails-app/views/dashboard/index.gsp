%{--Include Main Layout--}%
<meta name="layout" content="main"/>

<title> User Details </title>


<div class="container-fluid mt-5">
    <h3 class="text-center"> User Details </h3>
    <hr>
    <div class="row">
        <div class="col-6 offset-3">
            <div class="card">
                <div class="card-body">

                    <g:if test="${user}" >
                        <div class="breadcrumb">
                            <h5>Firts Name: ${user.firstName}</h5>
                        </div>
                        <div class="breadcrumb">
                            <h5>Last Name: ${user.lastName}</h5>
                        </div>
                        <div class="breadcrumb">
                            <h5>Email: ${user.email}</h5>
                        </div>
                        <div class="breadcrumb">
                            <h5>Phone: ${user.phone}</h5>
                        </div>
                        <div class="breadcrumb">
                            <h5>Address: ${user.address}</h5>
                        </div>
                        <div class="breadcrumb">
                            <h5>BirthDay: ${user.birthDate.getDateString()}</h5>
                        </div>

                    </g:if>
                </div>
            </div>
        </div>
    </div>
</div>






