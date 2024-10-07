<?php require_once 'core/dbConfig.php'; ?>
<html>
    <head>
        <title>mydatabase</title>
    </head>
    <body>
        <?php
        $stmt = $pdo->prepare("SELECT *FROM users");
        if($stmt->execute()){
            echo"<pre>";//format in a readable manner
            print_r($stmt->fetchALL());//fetch all results and print them
            echo"<pre>";
        }
        $stmt = $pdo->prepare("SELECT *FROM users
                                WHERE user_id = 2");
        if($stmt->execute()){
            echo"<pre>";//format the output in a readable manner
            print_r($stmt->fetch());//fetch the result from the query and print them 
            echo"<pre>";
        }  

        $query = "INSERT INTO users(user_id,first_name, last_name, email, password_hash, created_at) VALUES (?,?,?,?,?,?)";
        //prepare the necessary parameters that we will use for adding new datas

        $stmt = $pdo->prepare($query);//connect the database
        $executeQuery = $stmt->execute(
            [10,"Ivan","Duane","ivan@gmail.com","vqq9)%$#^&",'2023-10-07'] //adds the new data
        );
        //check if query is successfully executed
        if($executeQuery){
            echo "Query successful ";
        }
        else{
            echo "Query failed ";
        }
        
        $delquery = "DELETE FROM users where user_id = 10";
        $delstmt = $pdo->prepare($delquery);
        $delexecutequery = $delstmt->execute();
        if($delexecutequery){
            echo"Deletion successful ";
        }
        else{
            echo"Deletion failed ";
        }

        $Updatequery = "UPDATE users SET first_name = ?, last_name = ? WHERE user_id = 1";
        $Updatestmt = $pdo->prepare($Updatequery);
        $UpdateExecutequery = $Updatestmt->execute(["Fregie", "Lagulay"]);
        if($UpdateExecutequery){
            echo"Update successful ";
        }
        else{
            echo"Update failed ";
        }

        $tblstmt = $pdo->prepare("SELECT *FROM users");
        if($tblstmt->execute()){
           
           $tbl= $tblstmt->fetchALL(); //assign the prepared data into a variable
           
        }
        ?>
        <table>
            <tr>
                <th>User ID</th>
                <th>First Name</th>
                <th>Last Name</th>
                <th>Email</th>
                <th>HashCode</th>
                <th>Date Creation</th>
            </tr>
            
            <?php foreach ($tbl as $row){//access the variable with the tabel to be put in a table?>
            <tr>
                <td><?php echo $row['user_id']; ?></td>
                <td><?php echo $row['first_name']; ?></td>
                <td><?php echo $row['last_name']; ?></td>
                <td><?php echo $row['email']; ?></td>
                <td><?php echo $row['password_hash']; ?></td>
                <td><?php echo $row['created_at']; ?></td>
            </tr>
            <?php }?>
        </table>
    </body>
</html>
    