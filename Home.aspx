<%@ Page Title="" Language="C#" MasterPageFile="~/masterpage.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="Cargo.Home" %>  
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        * {
            font-family: Cambria;
        }
        .ColumnName {
            padding:10px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>All Orders</p><hr />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" AllowPaging="True" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" Width="569px">
        <Columns>
            <asp:BoundField ControlStyle-CssClass="ColumnName" DataField="parcelname" HeaderText="Parcel Name" SortExpression="parcelname" />
            <asp:BoundField ControlStyle-CssClass="ColumnName" DataField="sentby" HeaderText="Sent By" SortExpression="sentby" />
            <asp:BoundField ControlStyle-CssClass="ColumnName" DataField="sentdate" HeaderText="Sent Date" SortExpression="sentdate" />
            <asp:BoundField ControlStyle-CssClass="ColumnName" DataField="receiveddate" HeaderText="Received Date" SortExpression="receiveddate" />
            <asp:BoundField ControlStyle-CssClass="ColumnName" DataField="recieved" HeaderText="Recieved" SortExpression="recieved" />
        </Columns>
        <FooterStyle BackColor="White" ForeColor="#000066" />
        <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
        <RowStyle ForeColor="#000066" />
        <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#007DBB" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#00547E" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnString %>" SelectCommand="SELECT [parcelname], [sentby], [sentdate], [receiveddate], [recieved], [pic] FROM [orders]"></asp:SqlDataSource>
</asp:Content>
