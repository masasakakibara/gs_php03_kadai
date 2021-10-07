<!-- 提出課題用 index.php idex.php送る側 -->
<!DOCTYPE html>
<html lang="ja">

<head>
    <meta charset="UTF-8">
    <title>データ登録</title>

    <style>
        div {
            padding: 10px;
            font-size: 16px;
        }
    </style>
</head>

<body>

    <!-- Head[Start] -->
    <header>
        <nav class="navbar navbar-default">
            <div class="container-fluid">
                <div class="navbar-header"><a class="navbar-brand" href="select.php">データ一覧</a></div>
            </div>
        </nav>
    </header>
    <!-- Head[End] -->

    <!-- Main[Start] -->
    <!-- insert.phpにPOSTで送る -->
    <form method="POST" action="insert.php">
        <div class="jumbotron">
            <fieldset>
                <legend>好きな本のデータベース作成</legend>
                <label>書籍名：<input type="text" name="bookname"></label><br>
                <label>書籍URL：<input type="text" name="url"></label><br>
                <label>書籍コメント: <textarea name="comment" rows="4" cols="40"></textarea></label><br>
                <input type="submit" value="送信">
            </fieldset>
        </div>
    </form>
    <!-- Main[End] -->


</body>

</html>
