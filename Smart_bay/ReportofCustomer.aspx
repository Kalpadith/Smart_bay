<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="ReportofCustomer.aspx.cs" Inherits="Smart_bay.ReportofCustomer" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script type="text/javascript">
		$(document).ready(function () {
			$(".table").prepend($("<thead></thead>").append($(this).find("tr:first"))).dataTable();
		});
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

	<br><br>
    <center>
	<div class="container6">
      <div class="row-md-100">
         <div class="col-md-12">
            <div class="card">
               <div class="card-body">
                   <style>
                            @media print {
                                body * {
                                    visibility: hidden;
                                }
                                .print-container, .print-container * {
                                    visibility: visible;
                                }
                            }
                            </style>

                  <div class="row print-container">
                     <div class="col">
                        <center>
                           <h4>Your Past Order Transactions</h4>
                        </center>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <hr>
                     </div>
                  </div>   
                    
                   <div class = "row">
                       <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:con %>" ProviderName="<%$ ConnectionStrings:con.ProviderName %>" SelectCommand="SELECT [Order_ID], [CustomerID], [Location], [itemNames], [OrderDate], [TotalPrice] FROM [order_management] WHERE CustomerID='C5555'"></asp:SqlDataSource>

                       <div class="col">
                           <asp:GridView class="table table-striped table-bordered print-container" ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
							   <Columns>
								   <asp:BoundField DataField="Order_ID" HeaderText="Order_ID" SortExpression="Order_ID" />
								   <asp:BoundField DataField="CustomerID" HeaderText="CustomerID" SortExpression="CustomerID" />
								   <asp:BoundField DataField="Location" HeaderText="Location" SortExpression="Location" />
								   <asp:BoundField DataField="itemNames" HeaderText="itemNames" SortExpression="itemNames" />
								   <asp:BoundField DataField="OrderDate" HeaderText="OrderDate" SortExpression="OrderDate" />
								   <asp:BoundField DataField="TotalPrice" HeaderText="TotalPrice" SortExpression="TotalPrice" />
								  
							   </Columns>
						   </asp:GridView>
                        <br /><br />
                            <section>
                                <center>
                                    <button class="btn btn-success btn-block btn-lg col-6 buttonA" onclick="window.print();">Click here to print all Past Order Transactions</button>
                                </center>
                            </section>
                            <br>
                     </div>
                  </div>

               </div>
            </div>
         </div>
       </div>
     </div>
        </center>
      <div class="row">
        <div class="col-md-6">
         <a href="customerProfile.aspx" class="links"><img width="30" class="imgs" src="photos/back-arr.png "/>Back to Home</a>
        </div>
      </div>  
   <br>

</asp:Content>
