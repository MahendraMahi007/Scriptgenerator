<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Admin.aspx.vb" Inherits="WebApplication8.Admin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title> Data Entry </title>
     <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">


</head>
<body>
    
    
    <form id="form1" runat="server">


   <nav class="navbar navbar-default">
  <div  class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#">Scriptgenerator</a>
    </div>
    <ul class="nav navbar-nav">
      <li class="active"><a href="default.aspx">Home</a></li>
      <li><a href="Admin.aspx">Admin</a></li>
    </ul>
  </div>
</nav>
        
         
  <div align="center"  style=" background-color:mediumpurple; border-color:white;" class="jumbotron">
   <b> <h1 style="color:white;" > DATA ENTRY  </h1> </b>
  </div>



<asp:FormView style="font-size:30px;" ID="FormView1" runat="server" DataKeyNames="Id" DataSourceID="SqlDataSource2">
            <EditItemTemplate>
                Id:
                <asp:Label ID="IdLabel1" runat="server" Text='<%# Eval("Id") %>' />
                <br />
                Name:
                <asp:TextBox ID="NameTextBox" runat="server" Text='<%# Bind("Name") %>' />
                <br />
                Rating:
                <asp:TextBox ID="RatingTextBox" runat="server" Text='<%# Bind("Rating") %>' />
                <br />
                Hero:
                <asp:TextBox ID="HeroTextBox" runat="server" Text='<%# Bind("Hero") %>' />
                <br />
                Heroine:
                <asp:TextBox ID="HeroineTextBox" runat="server" Text='<%# Bind("Heroine") %>' />
                <br />
                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </EditItemTemplate>
            <InsertItemTemplate>
                Id:
                <asp:TextBox ID="IdTextBox" runat="server" Text='<%# Bind("Id") %>' />
                <br />
                Name:
                <asp:TextBox ID="NameTextBox" runat="server" Text='<%# Bind("Name") %>' />
                <br />
                Rating:
                <asp:TextBox ID="RatingTextBox" runat="server" Text='<%# Bind("Rating") %>' />
                <br />
                Hero:
                <asp:TextBox ID="HeroTextBox" runat="server" Text='<%# Bind("Hero") %>' />
                <br />
                Heroine:
                <asp:TextBox ID="HeroineTextBox" runat="server" Text='<%# Bind("Heroine") %>' />
                <br />
                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </InsertItemTemplate>
            <ItemTemplate>
                Id:
                <asp:Label ID="IdLabel" runat="server" Text='<%# Eval("Id") %>' />
                <br />
                Name:
                <asp:Label ID="NameLabel" runat="server" Text='<%# Bind("Name") %>' />
                <br />
                Rating:
                <asp:Label ID="RatingLabel" runat="server" Text='<%# Bind("Rating") %>' />
                <br />
                Hero:
                <asp:Label ID="HeroLabel" runat="server" Text='<%# Bind("Hero") %>' />
                <br />
                Heroine:
                <asp:Label ID="HeroineLabel" runat="server" Text='<%# Bind("Heroine") %>' />
                <br />
                <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
                &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
                &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
            </ItemTemplate>
        </asp:FormView>
        <br />
        <br />
        <br />
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:DBMovieReviewsConnectionString %>" DeleteCommand="DELETE FROM [MovieData] WHERE [Id] = @original_Id AND (([Name] = @original_Name) OR ([Name] IS NULL AND @original_Name IS NULL)) AND (([Rating] = @original_Rating) OR ([Rating] IS NULL AND @original_Rating IS NULL)) AND (([Hero] = @original_Hero) OR ([Hero] IS NULL AND @original_Hero IS NULL)) AND (([Heroine] = @original_Heroine) OR ([Heroine] IS NULL AND @original_Heroine IS NULL))" InsertCommand="INSERT INTO [MovieData] ([Id], [Name], [Rating], [Hero], [Heroine]) VALUES (@Id, @Name, @Rating, @Hero, @Heroine)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [MovieData]" UpdateCommand="UPDATE [MovieData] SET [Name] = @Name, [Rating] = @Rating, [Hero] = @Hero, [Heroine] = @Heroine WHERE [Id] = @original_Id AND (([Name] = @original_Name) OR ([Name] IS NULL AND @original_Name IS NULL)) AND (([Rating] = @original_Rating) OR ([Rating] IS NULL AND @original_Rating IS NULL)) AND (([Hero] = @original_Hero) OR ([Hero] IS NULL AND @original_Hero IS NULL)) AND (([Heroine] = @original_Heroine) OR ([Heroine] IS NULL AND @original_Heroine IS NULL))">
            <DeleteParameters>
                <asp:Parameter Name="original_Id" Type="Int32" />
                <asp:Parameter Name="original_Name" Type="String" />
                <asp:Parameter Name="original_Rating" Type="Int32" />
                <asp:Parameter Name="original_Hero" Type="String" />
                <asp:Parameter Name="original_Heroine" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Id" Type="Int32" />
                <asp:Parameter Name="Name" Type="String" />
                <asp:Parameter Name="Rating" Type="Int32" />
                <asp:Parameter Name="Hero" Type="String" />
                <asp:Parameter Name="Heroine" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Name" Type="String" />
                <asp:Parameter Name="Rating" Type="Int32" />
                <asp:Parameter Name="Hero" Type="String" />
                <asp:Parameter Name="Heroine" Type="String" />
                <asp:Parameter Name="original_Id" Type="Int32" />
                <asp:Parameter Name="original_Name" Type="String" />
                <asp:Parameter Name="original_Rating" Type="Int32" />
                <asp:Parameter Name="original_Hero" Type="String" />
                <asp:Parameter Name="original_Heroine" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </form>
</body>
</html>
