<!DOCTYPE html>
<html lang="en">
<head>
    <title>Menu</title>
    <?php include("head/header.php"); ?> 
</head>
<body>   
    <nav>
        
        <div class="menu-bar">
            <?php //if( $_SESSION['user_level']>=1 and  $_SESSION['user_level']<=99){ ?>
                <div class="menu-container">
                    <div class="menu">User</div>
                    <div class="submenu">
                        <a href="add_user.php">Add User</a>
                        <a href="list_user.php">List User</a>
                        <a href="#">Link 3</a>
                    </div>
                </div>
            <?php// } ?>

            <?php //if( $_SESSION['user_level']>=100 and  $_SESSION['user_level']<=199){ ?>
                <div class="menu-container">
                    <div class="menu">Funder</div>
                    <div class="submenu">
                        <a href="add_funder.php">add funder</a>
                        <a href="list_funder.php">list funder</a>
                        <a href="#">Link 3</a>
                    </div>
                </div>
            <?php// } ?>

            <?php //if( $_SESSION['user_level']>=200 and  $_SESSION['user_level']<=299){ ?>
                <div class="menu-container">
                    <div class="menu">student</div>
                    <div class="submenu">
                        <a href="add_student.php">add student</a>
                        <a href="list_student.php">list student</a>
                        <a href="#">Link 3</a>
                    </div>
                </div>
            <?php// } ?>

            <?php //if( $_SESSION['user_level']>=300 and  $_SESSION['user_level']<=399){ ?>
                <div class="menu-container">
                    <div class="menu">Menu4</div>
                    <div class="submenu">
                        <a href="#">Link 1</a>
                        <a href="#">Link 2</a>
                        <a href="#">Link 3</a>
                    </div>
                </div>
            <?php //} ?>
        </div>
    </nav>
</body>
</html>
