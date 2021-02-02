<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Payments</title>
    <!-- Vendor -->
    <link rel="stylesheet" href="<?php echo base_url(); ?>assets/css/prism.css">
    <link rel='stylesheet' href='<?php echo base_url(); ?>assets/css/materialize.min.css'>
    <link rel="stylesheet" href="<?php echo base_url(); ?>assets/css/main.css">
    <script src='<?php echo base_url(); ?>assets/js/vue/vue.js'></script>
    <script src='<?php echo base_url(); ?>assets/js/helpers/html.js'></script>
    <!-- Components -->
    <script src='<?php echo base_url(); ?>assets/js/components/navbar.js'></script>
    <script src='<?php echo base_url(); ?>assets/js/components/footer.js'></script>
    <script src='<?php echo base_url(); ?>assets/js/views/main.js'></script>
</head>
<body>
    <!-- Global consts -->

    <script>
        window.BASE_URL = '<?php echo base_url(); ?>';
    </script>

    <div id="app">
        <?php include('navbar.php'); ?>