<?php
session_start();//开启会话

include '../conn.php';
            //获取登录表单提交过来的数据
$uname = $_REQUEST['username'];
$pwd = $_REQUEST['password'];
$sql = "SELECT * FROM user where uname = '".$uname."' and pwd = '".$pwd."'";
$result = $conn->query($sql);
$uid='';
//如果数据存在，即用户登录成功
if ($result->num_rows > 0) {
  while($row = $result->fetch_assoc()) {
    // 存储 session 数据
    $uid = $row['id'];
    $_SESSION['uid'.$uid]=$uid;
  }

header("Location: center.php?uid=".$uid);
exit;

  }else {
echo '登录失败！';
  }
?>
