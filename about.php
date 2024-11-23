<?php require('layout/header.php') ?>
<style>
    main {
        font-family: "Encode Sans SC", sans-serif;
    }

    .row img {
        max-width: 100%;
    }
</style>
<main>
    <div class="container">
        <div id="ant-layout">
            <section class="search-quan">
                <i class="fas fa-search"></i>
                <form action="thucdon.php" method="GET">
                    <input name="search" type="text" placeholder="Tìm xe bạn muốn...">
                </form>
            </section>
            <section class="main">
                <div class="row">
                    <h3>HELLO!!!</h3>
                   </section>
        </div>
    </div>
</main>
<?php require('layout/footer.php') ?>