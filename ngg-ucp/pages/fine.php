<?php 
include 'includes/config.php'; 
include 'includes/header.php';
checkForLogin();
$_SESSION['last_action'] = time();

if($_SESSION['playeradmin'] < 2) {
    header('Location: index.php');
}

?>

                <div class="row">
                    <div class="col-md-12">
                        <h1 class="page-header">
                            Admin Panel
                        </h1>
                    </div>
                </div>

            <div class="row">
                <div class="col-lg-12">
                    <div class="panel panel-default">
                        <div class="panel-body">
                            <div class="row">
                                <div class="col-lg-6">
                                    <div>
                                     
                                        <form method="POST" action="">
                                            <div class="form-group">
                                            <label>Account Name</label>
                                            <input type="text" id="cname" name="cname" class="form-control" placeholder="Username">
                                            <label>Amount</label>
                                            <input type="text" id="amount" name="amount" class="form-control" placeholder="30000">
                                            <label>Reason</label>
                                            <input type="text" id="reason" name="reason" class="form-control" placeholder="Why?">
                                        </div>
                                        <button type="submit" class="btn btn-default">Fine Account</button>

                                        <p><i>NB: Use the name of the player like this: First_Last</i></p>
                                        </form>
                                        <?php
                                        if(!empty($_POST['cname']) && !empty($_POST['amount']) && !empty($_POST['reason'])) {
                                            $query = $con->prepare("SELECT * from `accounts` WHERE `Username` = ?");
                                            $query->execute(array($_POST['cname']));
                                            if($query->rowCount() > 0)
                                            {
                                                $rData = $query->fetch();
                                            }

                                            if($rData['AdminLevel'] >= 2) {
                                                echo "<b><span style='color:red'>You cannot perform this action on an admin!</span></b>";
                                                echo '<div><a href="admin.php" type="button" class="btn btn-primary">ACP Home</a></div><hr/>';
                                                die();
                                            }

                                            if($rData['Online'] == 1) {
                                                echo "<b><span style='color:red'>You cannot perform this action while the player is online!</span></b>";
                                                echo '<div><a href="admin.php" type="button" class="btn btn-primary">ACP Home</a></div><hr/>';
                                                die();
                                            }

                                            $account = $rData['id'];
                                            $reason = $rData['Money']-$_POST['amount'];

                                            $query1 = $con->prepare("UPDATE `accounts` SET Money='".$reason."' WHERE `id` = ".$account."");
                                            $query1->execute();
                                            //var_dump($query1);

                                            //logging
                                            $admin = $_SESSION['playername'];
                                            $player = $rData['Username'];
                                            $reason = $_POST['reason'];
                                            $query2 =  $con->prepare("INSERT INTO `ucp_logs` (log, admin, against) VALUES ('Fine for ".$_POST['amount'].": ".$reason."', '".$admin."','".$player."')");
                                            $query2->execute();

                                            echo "<b><span style='color:green'>Player fined successfully!</span></b>";
                                        } else {
                                            echo "<b><span style='color:red'>All fields are required!</span></b>";
                                        }
                                        ?>
                                        <div><a href="admin.php" type="button" class="btn btn-primary">ACP Home</a></div><hr/>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

<?php
include 'includes/footer.php'; 
?>
