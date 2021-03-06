                    <script>
                        function showJadwal(str) {
                          if (str=="") {
                            document.getElementById("txtHint").innerHTML="";
                            return;
                          } 
                          if (window.XMLHttpRequest) {
                            // code for IE7+, Firefox, Chrome, Opera, Safari
                            xmlhttp=new XMLHttpRequest();
                          } else { // code for IE6, IE5
                            xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
                          }
                          xmlhttp.onreadystatechange=function() {
                            if (this.readyState==4 && this.status==200) {
                              document.getElementById("txtHint").innerHTML=this.responseText;
                            }
                          }
                          xmlhttp.open("GET","<?= base_url('home/tabeljadwal/') ?>"+str,true);
                          xmlhttp.send();
                        }
                    </script>
                    <div class="content">
                        <div class="container-fluid">
                            <div class="row">
                                <div class="col-md-6 col-md-offset-3 text-center">
                                    <h2>Jadwal Kuliah</h2>
                                    <form class="form-inline">
                                        <div class="form-group">
                                            <select class="form-control input-sm" onchange="showJadwal(this.value)">
                                                <option value="">Pilih Semester</option>
                                                <option value="1">Semester 1</option>
                                                <option value="2">Semester 2</option>
                                                <option value="3">Semester 3</option>
                                            </select>
                                        </div>
                                    </form>
                                </div>
                            </div>
                            </br>
                            <div id="txtHint">
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