    <div class="sidebar" data-color="purple" data-image="assets/img/sidebar-5.jpg">

    <!--

        Tip 1: you can change the color of the sidebar using: data-color="blue | azure | green | orange | red | purple"
        Tip 2: you can also add an image using data-image tag

    -->

    	<div class="sidebar-wrapper">
            <div class="logo">
                <a class="simple-text">
                    Nama User
                </a>
            </div>

            <ul class="nav">
                <li <?php if($menu == 'dashboard'){echo 'class="active"'; } ?> >
                    <a href="http://localhost/siakat/">
                        <i class="pe-7s-graph"></i>
                        <p>Dashboard</p>
                    </a>
                </li>
                <li>
                    <a href="user.html">
                        <i class="pe-7s-news-paper"></i>
                        <p>Daftar Hasil Studi</p>
                    </a>
                </li>
                <li>
                    <a href="table.html">
                        <i class="pe-7s-note2"></i>
                        <p>KRS/KHS</p>
                    </a>
                </li>
                <li <?php if($menu == 'jadwal'){echo 'class="active"'; } ?>>
                    <a href="http://localhost/siakat/home/jadwal">
                        <i class="pe-7s-date"></i>
                        <p>Jadwal Kuliah</p>
                    </a>
                </li>
                <li>
                    <a href="icons.html">
                        <i class="pe-7s-user"></i>
                        <p>Data Mahasiswa</p>
                    </a>
                </li>
                <li <?php if($menu == 'dosen'){echo 'class="active"'; } ?>>
                    <a href="<?= base_url('home/dosen'); ?>">
                        <i class="pe-7s-id"></i>
                        <p>Dosen & Mata Kuliah</p>
                    </a>
                </li>
            </ul>
    	</div>
    </div>