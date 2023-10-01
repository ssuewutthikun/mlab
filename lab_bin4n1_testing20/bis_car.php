<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>index</title>
</head>
<body>
    <h1>เรียกข้อมูลจาก API bis41_get_car</h1>
	<h3>รหัสประจำตัว 4430202551-9</h3>
	<h3>นายศราวุธ ซื่อวุฒิกุล</h3>
	<h3>กลุ่มเรียน BIS4N1</h3>
    <select id="filter">
        <option value="HONDA">HONDA</option>
        <option value="TOYOTA">TOYOTA</option>
    </select>
    <button type="button" onclick="bisgetCar()">เรียกดูข้อมูล</button>
</body>
</html>
<script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>
<script type=text/javascript>
    function bisgetCar(){
        let keysearch = document.getElementById("filter").value;
        let request_data = {
            "keysearch":keysearch
        }
        let uri = "http://localhost:8080/project/api/bis41_get_car.php";
        $.ajax({
            type:"POST",
            url:uri,
            async:false,
            data:JSON.stringify(request_data),
            success:function(response){
                console.log(response.datalist);
            },error:function(error){
                console.log(error);
            }
        });        
    }
</script>
