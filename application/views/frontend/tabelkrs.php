                                <div class="card">
                                    <div class="content table-responsive table-full-width">
                                        <table class="table table-hover table-striped">
                                            <thead>
                                                <th>No</th>
                                                <th>Kode Seksi</th>
                                                <th>Mata Kuliah</th>
                                                <th>Dosen</th>
                                                <th>SKS</th>
                                                <th>Bobot</th>
                                                <th>Nilai</th>
                                            </thead>
                                            <tbody>
                                                <?php 
                                                echo $mahasiswa;
                                                $i = 1;
                                                if($hasil != false){
                                                    foreach ($hasil as $hasil): ?>
                                                        <tr>
                                                            <td><?= $i++; ?></td>
                                                            <td><?= $hasil['jdw_kode']; ?></td>
                                                            <td><?= $hasil['mtk_nama']; ?></td>
                                                            <td><?= $hasil['dsn_nama']; ?></td>
                                                            <td><?= $hasil['mtk_sks']; ?></td>
                                                            <td>bobot</td>
                                                            <td><?php if($hasil['nl_nilai']==null){echo 'nilai';} ?></td>
                                                        </tr>
                                                    <?php endforeach; 
                                                }else{
                                                    echo '<tr>
                                                    <td colspan="6" class="text-center">Tidak ada jadwal</td>
                                                    </tr>';
                                                }
                                                ?>
                                            </tbody>
                                        </table>
                                    </div>
                                </div>