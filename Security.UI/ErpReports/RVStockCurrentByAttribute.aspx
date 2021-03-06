<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RVStockCurrentByAttribute.aspx.cs" Inherits="Security.UI.ErpReports.RVStockCurrentByAttribute" %>

<%@ Register assembly="Microsoft.ReportViewer.WebForms, Version=11.0.0.0, Culture=neutral, PublicKeyToken=89845dcd8080cc91" namespace="Microsoft.Reporting.WebForms" tagprefix="rsweb" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    <div>
    
        <rsweb:ReportViewer ID="ReportViewer1" runat="server" Font-Names="Verdana" Font-Size="8pt" WaitMessageFont-Names="Verdana" WaitMessageFont-Size="14pt" Width="1125px" Height="600px">
            <LocalReport ReportPath="ErpReports\rptCurrentStockByAttribute.rdlc" ReportEmbeddedResource="Security.UI.ErpReports.rptCurrentStockByAttribute.rdlc">
                <DataSources>
                    <rsweb:ReportDataSource DataSourceId="ObjectDataSource1" Name="ds_StockCurrentByAttribute" />
                </DataSources>
            </LocalReport>
        </rsweb:ReportViewer>
        <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" OldValuesParameterFormatString="original_{0}" OnSelecting="ObjectDataSource1_Selecting" SelectMethod="GetData" TypeName="Security.UI.App_Code.Dataset.ds_StockValuationAttributeTableAdapters.xRptItemAdditionalAttributeTableAdapter">
            <SelectParameters>
                <asp:Parameter Name="DepartmentId" Type="Int32" />
                <asp:Parameter Name="CategoryId" Type="Int32" />
                <asp:Parameter Name="SubcategoryId" Type="Int32" />
                <asp:Parameter Name="ItemId" Type="Int32" />
            </SelectParameters>
        </asp:ObjectDataSource>
    
    </div>
    </form>
</body>
</html>
