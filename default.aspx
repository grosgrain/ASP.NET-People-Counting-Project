@@ -0,0 +1,36 @@
<%@ Page Title="" Language="C#" MasterPageFile="MasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <section>
    
     <h1>About Us</h1>
     <p> Nowadays, there are about 4 millions Chinese people in United States. 
         There are also hundred family surnames of Chinese people.
         No matter where you were born, we all share the same blood. <span>Relation&trade;</span> committed to connect our people. 
         Please add your information through <a href="Add.aspx">Add your information</a>. 
         You can also find our people in <a href="People.aspx">List of Chinese in US</a>.
         We wish all of us can find our long lost friends in US.
         And just like what our ancestors did, we help and take care of each others.
     </p>
   
        <table id="face">
            <tr>
                <td><img src="Images/happyface1.jpg" class="happyface" /></td>
                <td><img src="Images/happyface2.jpg" class="happyface"/></td>
                <td><img src="Images/happyface3.jpg" class="happyface"/></td>
            </tr>
            <tr>
                <td><img src="Images/happyface4.jpg" class="happyface"/></td>
                <td><img src="Images/happyface5.jpg" class="happyface"/></td>
                <td><img src="Images/happyface6.jpg" class="happyface"/></td>
            </tr>
        </table>
   
         <p id="back"><a href="#top">Bact to top</a></p>

    </section>
</asp:Content>

