<?php $__env->startSection('content'); ?>

<div id="content-wrapper">

    <div class="container-fluid">

        <!-- Breadcrumbs-->
        <ol class="breadcrumb">
            <li class="breadcrumb-item">
                <a href="index.html">Dashboard</a>
            </li>
            <li class="breadcrumb-item active">404 Error</li>
        </ol>

        <!-- Page Content -->
        <h1 class="display-1">404</h1>
        <p class="lead">Page not found. You can
            <a href="javascript:history.back()">go back</a>
            to the previous page, or
            <a href="/admin/">return home</a>.</p>

    </div>
    <!-- /.container-fluid -->

    <!-- Sticky Footer -->
    <footer class="sticky-footer">
        <div class="container my-auto">
            <div class="copyright text-center my-auto">
                <span>Copyright © Your Website 2018</span>
            </div>
        </div>
    </footer>

</div>
<?php $__env->stopSection(); ?>

<?php echo $__env->make('/admin/templates', \Illuminate\Support\Arr::except(get_defined_vars(), array('__data', '__path')))->render(); ?>