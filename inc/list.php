<div class="col-md-6">
    <div class="mt-4">
        <div class="card-header" style="background: linear-gradient(270.05deg, #F8C202 27.5%, rgba(255, 255, 255, 0) 114.04%);mix-blend-mode: darken;border-radius: 50px;">
            <h2 class="text-center">Список тестов</h2>
        </div>

        <div class="card-body">
            <ul class="list" style="display:grid;">
                <?php
                $res = $db->query("SELECT * FROM tests");
                while ($row = $res->fetch()) {
                    ?>
                    <div class="card mt-4" style="
                    background: linear-gradient(89.64deg, #FFFFFF 4.25%, rgba(255, 255, 255, 0) 81.53%);
border-radius: 50px;
display:inline-block;">
                    <li> 
                        <a class="btn" href="index.php?id=<?php echo $row['id']; ?>"><?php echo $row['title']; ?></a>
                        <a class="btn" style="align:right;" href="results.php?id=<?php echo $row['id'] ?>">Подробнее</a>  
                    </li></div>
                <?php } ?>
            </ul>
        </div>
    </div>

    <div class="card mt-4" style="background: #FFFFFF;border-radius: 50px;">
        <div class="text-center">
            <a href="admin.php?do=add" class="btn">Добавить тест</a>
        </div>
    </div>
</div>