<%-- 
    Document   : index
    Created on : Jan 5, 2026, 4:54:07 PM
    Author     : ACER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>HTML Forms</h1>

        <form>

            Textbox 
            <input type="text" name="txtText" value="" size="5" />
            <br><br>

            Password 
            <input type="password" name="txtPassword" value="" size="25" />
            <br><br>

            Hidden
            <input type="hidden" name="txtHidden" value="" />
            <br><br>

            Male 
            <input type="checkbox" name="chkCheck" value="ON" checked="checked" />
            <br><br>

            Status
            <br>
            <input type="radio" name="rdoStatus" value="Single" checked="checked" /> Single
            <br>
            <input type="radio" name="rdoStatus" value="Married" /> Married
            <br>
            <input type="radio" name="rdoStatus" value="Divorced" /> Divorced
            <br><br>

            ComboBox
            <select name="txtCombo">
                <option value="Servlet">JSP and Servlet</option>
                <option value="EJB">EJB</option>
            </select>
            <br><br>

            Multiple
            <select name="txtList" multiple="multiple" size="3">
                <option value="Servlet" selected="selected">JSP and Servlet</option>
                <option value="EJB" selected="selected">EJB</option>
                <option value="Java">Core Java</option>
            </select>
            <br><br>

            TextArea
            <br>
            <textarea name="txtArea" rows="4" cols="30">
                This is a form parameters demo!!!!
            </textarea>
            <br><br>

            <input type="submit" value="Submit Query" />
            <input type="submit" value="Register" />
            <input type="reset" value="Reset" />
            <input type="button" value="JavaScript" />

        </form>

    </body>
</html>
