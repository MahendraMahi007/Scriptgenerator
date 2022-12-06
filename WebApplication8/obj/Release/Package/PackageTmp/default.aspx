<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="default.aspx.vb" Inherits="WebApplication8.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title> Scriptgenerator  </title>

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">


</head>
<body style="background-color:lavender;">
    <form id="form1" runat="server">
       
        <nav class="navbar navbar-default">
  <div class="container-fluid">
    <div  class="navbar-header">
      <a  class="navbar-brand" href="#">Scriptgenerator</a>
    </div>
    <ul  class="nav navbar-nav">
      <li class="active"><a href="default.aspx">Home</a></li>
      <li><a href="Admin.aspx">Admin</a></li>
    </ul>
  </div>
</nav>
      
        
       
        
        <div  class="container">
  <div style="background-color:mediumpurple; " class="jumbotron">
   <b> <h1 style="color:white;" > YOUTUBE SCRIPT GENERATOR </h1> </b>
  </div>
</div>


        
        <asp:DataList ID="DataList1" runat="server" DataKeyField="Id" DataSourceID="SqlDataSource1">
            <ItemTemplate>
               
                
                
                       <div align="center" style="background-color:mediumpurple;color:white;border-color:white;" class="jumbotron ">
 
               <p style="font-family:'Times New Roman';border-block-color:aqua ;font-size:30px;" > ee roju manam matladukune  movie peru
                <asp:Label ID="NameLabel" runat="server" Text='<%# Eval("Name") %>' />
                
                
                
                ee     <asp:Label  ID="Label1" runat="server" Text='<%# Eval("Name") %>' /> cinema lo Hero ga 
                <asp:Label ID="HeroLabel" runat="server" Text='<%# Eval("Hero") %>' /> natinchadu. <asp:Label ID="Label2" runat="server" Text='<%# Eval("Hero") %>' /> ee cinema lo acting baga chesadu.
                 
                alage ee cinema lo Heroine ga 
                <asp:Label ID="HeroineLabel" runat="server" Text='<%# Eval("Heroine") %>' /> natinchindhi.

                ee cinema ke nenu iche Rating
                <asp:Label ID="RatingLabel" runat="server" Text='<%# Eval("Rating") %>' /> out of 5.
                 
                <br /> elante marenoo interesting cinema la reviews kosam na channel ne subscride chesukondi.
               </p>
                <hr />
                
            </ItemTemplate>
        </asp:DataList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DBMovieReviewsConnectionString %>" SelectCommand="SELECT * FROM [MovieData]"></asp:SqlDataSource>
    </form>
</body>
</html>
