<?php
require_once('funcs.php');
$pdo = db_conn();

$id = $_GET["id"];
// echo $id は成功

//２．データ登録SQL作成
// $stmt = $pdo->prepare('SELECT * FROM gs_bm_table WHERE id =' . $id . ';');
$stmt = $pdo->prepare("SELECT * FROM gs_bm_table WHERE id =:id" );
$stmt->bindValue(':id', $id, PDO::PARAM_INT);
$status = $stmt->execute();

//３．データ表示
$view = '';
if ($status == false) {
    sql_error($status);
} else {
    $row = $stmt->fetch();
}
?>


<!DOCTYPE html>
<html lang="ja">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>好きな本のデータベース作成</title>
    <link rel="stylesheet" href="css/range.css">
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <style>
        div {
            padding: 10px;
            font-size: 16px;
        }
    </style>
</head>

<body id="main">
    <!-- Head[Start] -->
    <header>
        <nav class="navbar navbar-default">
            <div class="container-fluid">
                <div class="navbar-header">
                    <a class="navbar-brand" href="index.php">データ登録</a>
                </div>
            </div>
        </nav>
    </header>
    <!-- Head[End] -->

    <!-- Main[Start] -->
    <form method="POST" action="update.php">
        <div class="jumbotron">
            <fieldset>
                <legend>好きな本のデータベース作成</legend>
                <label>書籍名：<input type="text" name="書籍名" value="<?= h($row['書籍名']) ?>" ></label><br>
                <label>書籍URL：<input type="text" name="書籍URL" value="<?= h($row['書籍URL']) ?>"></label><br>
                <label>書籍コメント：<textarea name="書籍コメント" rows="4" cols="40"><?= h($row['書籍コメント']) ?></textarea></label><br>
                <!-- 間違っていたところ。nameとrowの中に入れる文字を英数のものを入れていた。bookname, url, commentに -->
                <!-- idも送るが、外部から見えないようにhiddenで送る -->
               <input type="hidden" name="id" value="<?= $row['id'] ?>">
                <input type="submit" value="送信">
            </fieldset>
        </div>
    </form>
    <!-- Main[End] -->
</body>

</html>