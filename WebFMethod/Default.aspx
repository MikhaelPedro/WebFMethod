<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebFMethod._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
        <script>
        function chamarWebMethod() {
            event.preventDefault();
           
            $.ajax({
                type: "POST",
                url: "Default.aspx/MeuMetodo",
                data: "{}",
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: function (response) {
                    var obj = JSON.parse(response.d);
                    // Faça algo com o objeto retornado
                    alert("Objeto retornado: " + obj.nome);
                },
                error: function (xhr, status, error) {
                    console.log("Erro na requisição: " + error);
                }
            });
        }

        function chamarMetodo() {
            event.preventDefault();
            $.ajax({
                type: "POST",
                url: "Default.aspx/MeuMetodo2",
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: function (response) {
                    alert(response.d);
                },
                error: function (xhr, status, error) {
                    console.log("Erro na requisição: " + error);
                }
            });
        }
        </script>
    <div>
        <h1>Exemplo de chamada de WebMethod com jQuery</h1>
        <p>Clique no botão abaixo para chamar o WebMethod:</p>
        <button type="button" onclick="chamarWebMethod()">Chamar WebMethod</button>
        <button onclick="chamarMetodo()">Chamar método</button>
    </div>

</asp:Content>
