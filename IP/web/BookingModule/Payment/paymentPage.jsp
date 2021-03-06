<%-- 
    Document   : paymentPage
    Created on : Nov 23, 2017, 9:36:20 AM
    Author     : jhz
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html lang="en" class=""><head>
        <link href="../css/table.css" rel="stylesheet" type="text/css"/>
        <link href="../css/reset.min.css" rel="stylesheet" type="text/css"/>
        <link href="../css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <link href="../css/awesome.min.css" rel="stylesheet" type="text/css"/>
        <style class="cp-pen-styles">
            table, th, td {
                border: 1px solid black;
            }

            body { margin:50px auto; width:600px;}

            /* CSS for Credit Card Payment form */
            .credit-card-box .panel-title {
                display: inline;
                font-weight: bold;
            }
            .credit-card-box .form-control.error {
                border-color: red;
                outline: 0;
                box-shadow: inset 0 1px 1px rgba(0,0,0,0.075),0 0 8px rgba(255,0,0,0.6);
            }
            .credit-card-box label.error {
                font-weight: bold;
                color: red;
                padding: 2px 8px;
                margin-top: 2px;
            }
            .credit-card-box .payment-errors {
                font-weight: bold;
                color: red;
                padding: 2px 8px;
                margin-top: 2px;
            }
            .credit-card-box label {
                display: block;
            }
            /* The old "center div vertically" hack */
            .credit-card-box .display-table {
                display: table;
            }
            .credit-card-box .display-tr {
                display: table-row;
            }
            .credit-card-box .display-td {
                display: table-cell;
                vertical-align: middle;
                width: 50%;
            }
            /* Just looks nicer */
            .credit-card-box .panel-heading img {
                min-width: 180px;
            }</style></head><body>
        <div class="container">
            <div class="row">
                <!-- You can make it whatever width you want. I'm making it full width
                on <= small devices and 4/12 page width on >= medium devices -->
                <div class="col-xs-12 col-md-4">

                    <!-- CREDIT CARD FORM STARTS HERE -->
                    <div class="panel panel-default credit-card-box">
                        <div class="panel-heading display-table" >
                            <div class="row display-tr" >
                                <h3 class="panel-title display-td" >Payment Details</h3>
                                <div class="display-td"><img class="img-responsive pull-right" src=""></div>
                            </div>                    
                        </div>
                        <div class="panel-body">
                            <form role="form" id="payment-form">
                                <div class="row">
                                    <div class="col-xs-12">
                                        <div class="form-group">
                                            <label for="contactP">Contact Person</label>
                                            <input type="text" class="form-control" name="contactP" />
                                        </div>
                                    </div>                        
                                </div>
                                <div class="row">
                                    <div class="col-xs-12">
                                        <div class="form-group">
                                            <label for="contactN">Contact Number</label>
                                            <input type="text" class="form-control" name="contactN" />
                                        </div>
                                    </div>                        
                                </div>
                                <div class="row">
                                    <div class="col-xs-12">
                                        <div class="form-group">
                                            <label for="email">Email</label>
                                            <input type="text" class="form-control" name="email" />
                                        </div>
                                    </div>                        
                                </div>
                                <div class="row">
                                    <img src="../img/card.png" alt=""/>
                                </div>
                                <div class="row">
                                    <div class="col-xs-12">
                                        <div class="form-group">
                                            <label for="cardNumber">CARD NUMBER</label>
                                            <div class="input-group">
                                                <input 
                                                    type="tel"
                                                    class="form-control"
                                                    name="cardNumber"
                                                    placeholder="Valid Card Number"
                                                    autocomplete="cc-number"
                                                    required autofocus 
                                                    />
                                            </div>
                                            
                                        </div>                            
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-xs-7 col-md-7">
                                        <div class="form-group">
                                            <label for="cardExpiry"><span class="hidden-xs">EXPIRATION</span><span class="visible-xs-inline">EXP</span> DATE</label>
                                            <input type="tel" class="form-control" name="cardExpiry"placeholder="MM / YY"autocomplete="cc-exp"required 
                                                   />
                                        </div>
                                    </div>
                                    <div class="col-xs-5 col-md-5 pull-right">
                                        <div class="form-group">
                                            <label for="cardCVC">CV CODE</label>
                                            <input 
                                                type="tel" 
                                                class="form-control"
                                                name="cardCVC"
                                                placeholder="CVC"
                                                autocomplete="cc-csc"
                                                required
                                                />
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-xs-12">
                                        <button class="btn btn-success btn-lg btn-block" type="submit">Proceed</button>
                                    </div>
                                </div>
                                <div class="row" style="display:none;">
                                    <div class="col-xs-12">
                                        <p class="payment-errors"></p>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>            
                    <!-- CREDIT CARD FORM ENDS HERE -->
                    
                    
                </div>            
                                
                <div class="col-xs-12 col-md-4">
                    <table id="table">
                        <tr>
                            <th>No</td>
                            <th>Homestay</td>
                            <th>Price(RM)</td>
                        </tr>
                        <tr>
                            <td></td>
                            <td></td>
                            <td></td>
                        </tr>
                        <tr>
                            <td></td>
                            <td></td>
                            <td></td>
                        </tr>
                        <tr>
                            <td>Total(RM):</td>
                            <td colspan="2"></td>
                        </tr>
                    </table>


                </div>


            </div>
            
        </div>


        <!-- If you're using Stripe for payments -->
        <script src="../js/v2.js" type="text/javascript"></script>

    </body>
</html>
