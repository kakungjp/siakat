                    <div class="content">
                        <div class="container-fluid">
                            <div class="row">
                                <div class="col-md-6 col-md-offset-3 text-center">
                                    <h2>Jadwal Kuliah</h2>
                                    <select class="form-control">
                                        <option>Semester 1</option>
                                        <option>Semester 2</option>
                                        <option>Semester 3</option>
                                        <option>Semester 4</option>
                                        <option>Semester 5</option>
                                    </select>
                                </div>
                            </div>
                            </br>
                            <div class="row">
                                <div class="card">
                                    <div class="header">
                                        <h4 class="title">Semester 1</h4>
                                        <p class="category">Pendidikan Teknik Informatika dan Komputer</p>
                                    </div>
                                    <div class="content table-responsive table-full-width">
                                        <table class="table table-hover table-striped">
                                            <thead>
                                                <th>No</th>
                                                <th>Kode Seksi</th>
                                                <th>Mata Kuliah</th>
                                                <th>Dosen</th>
                                                <th>SKS</th>
                                                <th>Peserta</th>
                                            </thead>
                                            <tbody>
                                                <?php 
                                                $i = 1;
                                                foreach ($hasil as $hasil): ?>
                                                    <tr>
                                                        <td><?= $i++; ?></td>
                                                        <td><?= $hasil['jdw_kode']; ?></td>
                                                        <td><?= $hasil['mtk_nama']; ?></td>
                                                        <td><?= $hasil['dsn_nama']; ?></td>
                                                        <td><?= $hasil['mtk_sks']; ?></td>
                                                        <td><?= $hasil['jdw_peserta']; ?></td>
                                                    </tr>
                                                <?php endforeach; ?>
                                            </tbody>
                                        </table>

                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="places-buttons">
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
                        </div>
                    </div>