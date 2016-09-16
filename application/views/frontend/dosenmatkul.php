                    <div class="content">
                        <div class="container-fluid">
                            <div class="row">
                                <div class="col-md-6 col-md-offset-3 text-center">
                                    <h2>Dosen & Mata Kuliah</h2>
                                </div>
                            </div>
                            </br>
                            <div class="card">
                                <div class="header">
                                    <div class="row">
                                        <div class="col-md-2"><h5 class="title">Dosen</h5></div>
                                        <div class="col-md-2 col-md-offset-8"><button class="btn btn-primary">Tambah Dosen</button></div>
                                    </div>
                                </div>
                                <div class="content table-responsive table-full-width">
                                    <table class="table table-hover table-striped">
                                        <thead>
                                            <th>No</th>
                                            <th>NIDN</th>
                                            <th>Nama Dosen</th>
                                        </thead>
                                        <tbody>
                                            <?php 
                                            $i = 1;
                                            if($hasil != false){
                                                foreach ($hasil as $hasil): ?>
                                                    <tr>
                                                        <td><?= $i++; ?></td>
                                                        <td><?= $hasil['dsn_nidn']; ?></td>
                                                        <td><?= $hasil['dsn_nama']; ?></td>
                                                    </tr>
                                                <?php endforeach; 
                                            }else{
                                                echo '<tr>
                                                <td colspan="6" class="text-center">Tidak ada list dosen</td>
                                                </tr>';
                                            }
                                            ?>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                            <div class="card">
                                <div class="header">
                                    <h4 class="title">Mata Kuliah</h4>
                                </div>
                                <div class="content table-responsive table-full-width">
                                    <table class="table table-hover table-striped">
                                        <thead>
                                            <th>No</th>
                                            <th>Nama Mata Kuliah</th>
                                        </thead>
                                        <tbody>
                                            <?php 
                                            /*$i = 1;
                                            if($hasil != false){
                                                foreach ($hasil as $hasil): ?>
                                                    <tr>
                                                        <td><?= $i++; ?></td>
                                                        <td><?= $hasil['dsn_nidn']; ?></td>
                                                        <td><?= $hasil['dsn_nama']; ?></td>
                                                    </tr>
                                                <?php endforeach; 
                                            }else{
                                                echo '<tr>
                                                <td colspan="6" class="text-center">Tidak ada list dosen</td>
                                                </tr>';
                                            }*/
                                            ?>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                        <!--div class="places-buttons">
                            <div class="row">
                                <div class="col-md-2 col-md-offset-3">
                                    <button class="btn btn-default btn-block" onclick="demo.showNotification('top','left')">Top Left</button>
                                </div>
                                <div class="col-md-2">
                                    <button class="btn btn-default btn-block" onclick="demo.showNotification('top','center')">Top Center</button>
                                </div>
                                <div class="col-md-2">
                                    <button class="btn btn-default btn-block" onclick="demo.showNotification('top','right')">Top Right</button>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-2 col-md-offset-3">
                                    <button class="btn btn-default btn-block" onclick="demo.showNotification('bottom','left')">Bottom Left</button>
                                </div>
                                <div class="col-md-2">
                                    <button class="btn btn-default btn-block" onclick="demo.showNotification('bottom','center')">Bottom Center</button>
                                </div>
                                <div class="col-md-2">
                                    <button class="btn btn-default btn-block" onclick="demo.showNotification('bottom','right')">Bottom Right</button>
                                </div>
                            </div>
                        </div-->
                    </div>