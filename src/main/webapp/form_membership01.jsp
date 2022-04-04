<%--
  Created by IntelliJ IDEA.
  User: 0bver
  Date: 2022/03/27
  Time: 4:05 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>회원 가입</title>
    <script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
    <script>
        //본 예제에서는 도로명 주소 표기 방식에 대한 법령에 따라, 내려오는 데이터를 조합하여 올바른 주소를 구성하는 방법을 설명합니다.
        function sample4_execDaumPostcode() {
            new daum.Postcode({
                oncomplete: function (data) {
                    // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                    // 도로명 주소의 노출 규칙에 따라 주소를 표시한다.
                    // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                    var roadAddr = data.roadAddress; // 도로명 주소 변수
                    var extraRoadAddr = ''; // 참고 항목 변수

                    // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                    // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                    if (data.bname !== '' && /[동|로|가]$/g.test(data.bname)) {
                        extraRoadAddr += data.bname;
                    }
                    // 건물명이 있고, 공동주택일 경우 추가한다.
                    if (data.buildingName !== '' && data.apartment === 'Y') {
                        extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                    }
                    // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                    if (extraRoadAddr !== '') {
                        extraRoadAddr = ' (' + extraRoadAddr + ')';
                    }

                    // 우편번호와 주소 정보를 해당 필드에 넣는다.
                    document.getElementById('sample4_postcode').value = data.zonecode;
                    document.getElementById("sample4_roadAddress").value = roadAddr;
                    document.getElementById("sample4_jibunAddress").value = data.jibunAddress;

                    document.getElementById("sample4_engAddress").value = data.addressEnglish;

                    // 참고항목 문자열이 있을 경우 해당 필드에 넣는다.
                    if (roadAddr !== '') {
                        document.getElementById("sample4_extraAddress").value = extraRoadAddr;
                    } else {
                        document.getElementById("sample4_extraAddress").value = '';
                    }

                    var guideTextBox = document.getElementById("guide");
                    // 사용자가 '선택 안함'을 클릭한 경우, 예상 주소라는 표시를 해준다.
                    if (data.autoRoadAddress) {
                        var expRoadAddr = data.autoRoadAddress + extraRoadAddr;
                        guideTextBox.innerHTML = '(예상 도로명 주소 : ' + expRoadAddr + ')';
                        guideTextBox.style.display = 'block';

                    } else if (data.autoJibunAddress) {
                        var expJibunAddr = data.autoJibunAddress;
                        guideTextBox.innerHTML = '(예상 지번 주소 : ' + expJibunAddr + ')';
                        guideTextBox.style.display = 'block';
                    } else {
                        guideTextBox.innerHTML = '';
                        guideTextBox.style.display = 'none';
                    }
                }
            }).open();
        }
    </script>
</head>
<body>
Home > Join the Membership
<hr>
<%--TODO : 우편번호 검색 이용해서 주소입력 폼 추가--%>
<form action="form_membership02.jsp" name="person_info" method="get">
    <fieldset style="width: 330px">
        <legend> 개인 정보 입력</legend>
        아이디 : <br>
        <input type="text" name="p_id" size="16"><br><br>
        비밀번호 : <br>
        <input type="password" name="p_pw" size="16"><br><br>
        이름 : <br>
        <input type="text" name="p_name" size="16"><br><br>

        연락처 : <br>
        <select name="choice" style="width: 60px; height: 20.5px">
            <option value="choice">선택</option>
            <option value="KT">KT</option>
            <option value="SKT">SKT</option>
            <option value="LGU+">LGU+</option>
        </select>
        <input type="text" maxlength="3" size="3" name="phone1"> -
        <input type="text" maxlength="4" size="4" name="phone2"> -
        <input type="text" maxlength="4" size="4" name="phone3"><br><br>

        성별 :
        <input type="radio" name="gender" value="남성" size="10">남
        <input type="radio" name="gender" value="여성" size="10">여<br><br>

        주소 :
        <input type="text" name="postcode" id="sample4_postcode" placeholder="우편번호">
        <input type="button" onclick="sample4_execDaumPostcode()" value="우편번호 찾기"><br>
        <input type="text" name="roadAddress" id="sample4_roadAddress" placeholder="도로명주소" size="60" readonly><br>
        <input type="hidden" id="sample4_jibunAddress" placeholder="지번주소" size="60">
<%--        <span id="guide" style="color:#999;display:none"></span>--%>
        <input type="text" name="detailAddress" id="sample4_detailAddress" placeholder="상세주소" size="60"><br>
<%--        <input type="hidden" id="sample4_extraAddress" placeholder="참고항목" size="60">--%>
<%--        <input type="hidden" id="sample4_engAddress" placeholder="영문주소" size="60"><br>--%>

        취미 :
        <input type="checkbox" name="hobby" value="운동">운동
        <input type="checkbox" name="hobby" value="코딩">코딩
        <input type="checkbox" name="hobby" value="여행">여행
        <input type="checkbox" name="hobby" value="독서">독서<br><br>

        본인 소개 :
        <textarea class="message_area" cols="50" rows="3"></textarea>
        <hr>

        <div align="center">
            <input type="submit" value=" 가입하기 ">&nbsp;&nbsp;
            <input type="reset" value=" 다시작성 ">
        </div>
        <br>
    </fieldset>
</form>
</body>
</html>
