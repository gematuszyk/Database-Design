<?php

$cxn = new mysql(“warehouse”, “gem306”, “h69t7me2”, “gem306_fire_department_fees”);

$query1 = “SELECT COUNT(id) FROM fdny_fees;”;
$result1 = $cxn->query($query1);

$query2 = “SELECT Type, Name, Application, Fee, MAX(id) FROM fdny_fees GROUP BY Type;”;
$result2 = $cxn->query($query2);

$query3 = “SELECT id,Type, Name, Application FROM fdny_fees WHERE 1 ORDER BY Type ASC LIMIT 0,11;”;
$result3 = $cxn->query($query3);

$query4 = “SELECT Fee, AVG(id) FROM fdny_fees GROUP BY Fee; ”;
$result4 = $cxn->query($query4);

$query5 = “SELECT * FROM fdny_fees WHERE 1 ORDER BY Type, Name, Application ASC LIMIT 0,15”;
$result5 = $cxn->query($query5);

$query6 = “SELECT COUNT(id) FROM fdny_fees WHERE Type='Certificate';”;
$result6 = $cxn->query($query6);

$query7 = “SELECT id, Type, Fee FROM fdny_fees WHERE Type='Administrative Services' ORDER BY id DESC;”;
$result7 = $cxn->query($query7);

$query8 = “SELECT SUM(Fee) FROM fdny_fees WHERE Type='Administrative Servies';”;
$result8 = $cxn->query($query8);

$query9 = “SELECT id,Type,Fee FROM fdny_fees WHERE 1 ORDER BY Type ASC LIMIT 5,5;”;
$result9 = $cxn->query($query9);

$query10 = “SELECT Type, Name, Application FROM fdny_fees WHERE Type!='Administrative Services' AND Type!='Certificate' AND Type!='Permits and Inspections';”;
$result10 = $cxn->query($query10);

?>

<!DOCTYPE html>
<html lang="en">

     <head>
          <meta charset="utf-8" />
          <title>Assignment 3</title>
          <link rel="stylesheet" href="page1.css">
     </head>


     <body>
       <div id="header">
         <h1>Assignment #3</h1>
       </div>

       <div id="container">

         <h2>FDNY Fire Department Fee</h2>
         <p>The data represents the fees the Fire Departments of New York City have to pay to have Certificates, Permits and Inspections, Training and Administrative Services. The data shows the Type of the Fee, the Certificate Name, the Application Name and how much each fee costs, ranging between $3.00 and $3,000.00.</p>
         <p>I found this data interesting because my uncle is a fire fighter in Albany, NY so I was curious about how much the Fire Departments of NYC have to pay to satisfy the legal requirements.  I was also suprised that most of the Fees were below $300.00 because  like most things in NYC, I expected them to be more expensive.</p>
         <a href="https://data.cityofnewyork.us/Public-Safety/FDNY-Fire-Department-Fee/2cvx-33uz">Link to the Database</a>
         <br>

         <div>
            <h3>Table Structure</h3>
            <table id="table" style="width:100%">
              <tr>
                <td>id</td>
                <td>Type</td>
                <td>Name</td>
                <td>Application</td>
                <td>Fee</td>
                <td>created</td>
              </tr>
              <tr>
                <td>INT UNSIGNED NOT NULL <br>AUTO INCREMENTING</td>
                <td>VARCHAR</td>
                <td>VARCHAR</td>
                <td>VARCHAR</td>
                <td>INT</td>
                <td>TIMESTAMP NOT NULL <br>DEFAULT CURRENT TIMESTAMP</td>
              </tr>
            </table>
          </div>
          <br>
          <p>I used INT UNSIGNED NOT NULL AUTO INCREMENTING for the id field because I wanted a field to keep track of the position of each record as the table went on so I made the id Auto Incrementing.  I chose VARCHAR for Type, Name, and Application because they were all Strings and the length of each record varied significantly.  I made the Fee field an INT because I wanted another field I could perform operations on.  Since the field orginally had $ signs in front of each integer, I had to remove them in a text editor using the Find/Replace shortcut.  I set created to TIMESTAMP NOT NULL DEFAULT CURRENT TIMESTAMP because I wanted each value to return when it was created at the current time.</p>
          <br>

        <?php     while($row = $result1->fetch_assoc())  :     ?>
         <article>
           <h3>Query 1: Records in the Table</h3>
           <h4><?php print($query1); ?></h4>
           <p><?php print($row['id']); ?></p>
         </article>
         <?php>  endwhile; ?>

         <?php     while($row = $result2->fetch_assoc())  :     ?>
          <article>
            <h3>Query 2: 10 Highest Records in each Category</h3>
            <h4><?php print($query2); ?></h4>
            <p><?php print($row['Type'],$row['Name'],$row['Application'],$row['Fee'], $row['id']); ?></p>
          </article>
          <?php>  endwhile; ?>

          <?php     while($row = $result3->fetch_assoc())  :     ?>
           <article>
             <h3>Query 3: Type, Name and Application in Alphabetical Order</h3>
             <h4><?php print($query3); ?></h4>
             <p><?php print($row['id'],$row['Type'],$row['Name'],$row['Application']); ?></p>
           </article>
           <?php>  endwhile; ?>

           <?php     while($row = $result4->fetch_assoc())  :     ?>
            <article>
              <h3>Query 4: Average Fees</h3>
              <h4><?php print($query4); ?></h4>
              <p><?php print($row['Type'],$row['id']); ?></p>
            </article>
            <?php>  endwhile; ?>

             <?php     while($row = $result5->fetch_assoc())  :     ?>
            <article>
                <h3>Query 5: First 15 Records in Alphabetical Order</h3>
                <h4><?php print($query5); ?></h4>
                <p><?php print($row['id'],$row['Type',],$row['Name'],$row['Application'],$row['Fee'],$row['created']); ?></p>
              </article>
            <?php>  endwhile; ?>

            <?php     while($row = $result6->fetch_assoc())  :     ?>
             <article>
               <h3>Query 6: Count the Number of Certificates in the Table</h3>
               <h4><?php print($query6); ?></h4>
               <p><?php print($row['id']); ?></p>
             </article>
             <?php>  endwhile; ?>

             <?php     while($row = $result7->fetch_assoc())  :     ?>
              <article>
                <h3>Query 7: 3 Categories in Descending Order with Type - Administrative Services</h3>
                <h4><?php print($query7); ?></h4>
                <p><?php print($row['id'],$row['Type'],$row['Fee']); ?></p>
              </article>
              <?php>  endwhile; ?>

              <?php     while($row = $result8->fetch_assoc())  :     ?>
               <article>
                 <h3>Query 8: The Sum of all Fees with Type - Certificate</h3>
                 <h4><?php print($query8); ?></h4>
                 <p><?php print($row['Fee']); ?></p>
               </article>
               <?php>  endwhile; ?>

               <?php     while($row = $result9->fetch_assoc())  :     ?>
                <article>
                  <h3>Query 9: 3 Categories in Ascending Order from Records 5-10</h3>
                  <h4><?php print($query9); ?></h4>
                  <p><?php print($row['id'],$row['Type'],$row['Fee']); ?></p>
                </article>
                <?php>  endwhile; ?>

                <?php     while($row = $result10->fetch_assoc())  :     ?>
                 <article>
                   <h3>Query 10: Records that do not contain Least Frequent Types</h3>
                   <h4><?php print($query10); ?></h4>
                   <p><?php print($row['Type'],$row['Name'],$row['Application']); ?></p>
                 </article>
                 <?php>  endwhile; ?>

       </div>
    </body>
</html>
