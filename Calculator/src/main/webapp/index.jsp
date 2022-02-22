<%@ page isELIgnored="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@include file="components/header.jsp"%>

    <div class="container" style="background-image: radial-gradient(circle at 16% 83%, rgba(148, 148, 148,.06) 0%, rgba(148, 148, 148,.06) 50%,rgba(63, 63, 63,.06) 50%, rgba(63, 63, 63,.06) 100%),radial-gradient(circle at 68% 87%, rgba(66, 66, 66,.06) 0%, rgba(66, 66, 66,.06) 50%,rgba(105, 105, 105,.06) 50%, rgba(105, 105, 105,.06) 100%),radial-gradient(circle at 38% 50%, rgba(123, 123, 123,.06) 0%, rgba(123, 123, 123,.06) 50%,rgba(172, 172, 172,.06) 50%, rgba(172, 172, 172,.06) 100%),linear-gradient(90deg, hsl(18,0%,1%),hsl(18,0%,1%));">
        <form method="post" action="calculate" name="calculator">
            <table>
                <tr>
                    <td colspan="4">
                        <input type="text" name="display" id="display" readonly value="${result}">
                    </td>
                </tr>
                <tr>
                    <td><input type="button" name="seven" value="7" onclick="calculator.display.value += '7'"></td>
                    <td><input type="button" name="eight" value="8" onclick="calculator.display.value += '8'"></td>
                    <td><input type="button" name="nine" value="9" onclick="calculator.display.value += '9'"></td>
                    <td><input type="button" class="operator" name="times" value="x" onclick="calculator.display.value += '*'"></td>
                </tr>
                <tr>
                    <td><input type="button" name="four" value="4" onclick="calculator.display.value += '4'"></td>
                    <td><input type="button" name="five" value="5" onclick="calculator.display.value += '5'"></td>
                    <td><input type="button" name="six" value="6" onclick="calculator.display.value += '6'"></td>
                    <td><input type="button" class="operator" name="minus" value="-" onclick="calculator.display.value += '-'"></td>
                </tr>
                <tr>
                    <td><input type="button" name="one" value="1" onclick="calculator.display.value += '1'"></td>
                    <td><input type="button" name="two" value="2" onclick="calculator.display.value += '2'"></td>
                    <td><input type="button" name="three" value="3" onclick="calculator.display.value += '3'"></td>
                    <td><input type="button" class="operator" name="plus" value="+" onclick="calculator.display.value += '+'"></td>
                </tr>
                <tr class="clear">
                    <td><input type="button" id="clear" name="clear" value="c" onclick="calculator.display.value = ''"></td>
                    <td><input type="button" name="zero" value="0" onclick="calculator.display.value += '0'"></td>
                    <td><input type="submit" name="doit" value="="></td>
                    <td><input type="button" class="operator" name="div" value="/" onclick="calculator.display.value += '/'"></td>
                </tr>
            </table>
        </form>
    </div>
<%@include file="components/footer.jsp"%>
