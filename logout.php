<?php
/**
 * Created by Sababa.
 * User: sababa
 * Date: 04-06-2022
 * Time: 09:30 PM
 */

session_start();
unset($_SESSION['user_id']);
unset($_SESSION['username']);
session_abort();
header('Location:login.php');