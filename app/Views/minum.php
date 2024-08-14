<main id="main" class="main">
  <div class="container">
    <div class="pagetitle">
      <h1>Menu Minuman</h1>
      <nav>
         <div class="row">
                <div class="col-md-12">
                  <ul class="nav nav-pills flex-column flex-md-row mb-3">
                    <li class="nav-item">
                      <a class="nav-link" href="<?=base_url('home/makan')?>"
                        ><i class="bx bx-food-menu me-1"></i> Menu Makanan</a
                      >
                    </li>
                    <li class="nav-item">
                      <a class="nav-link active" href="javascript:void(0);"
                        ><i class="bx bx-drink me-1"></i> Menu Minuman</a
                      >
                      
      </nav>
    </div><!-- End Page Title -->

    <section class="section">
      <div class="row justify-content-center">
        <div class="col-lg-12">

          <div class="card">
            <div class="card-body">

              <div class="d-flex justify-content-between align-items-center mb-3">

                <!-- Add a search input on the right side -->
                <div class="search-container">
                  <label for="search">Search:</label>
                  <input type="text" id="search" placeholder="Enter keywords...">
                  <?php
           $userLevel = session()->get('level');
           $allowedLevels = ['Manager', 'admin','Koki'];
  
           if (in_array($userLevel, $allowedLevels)) {
        ?> 
               <a href="<?= base_url("home/RestoreMI")?>">
		<button class="btn btn-success">Restore</button>
  </a>
                  <a href="<?= base_url("home/t_minum")?>">
		<button class="btn btn-success">+ Tambah</button>
  </a>
  <?php } ?>
                </div>
              </div>

              <!-- Table with stripped rows -->
              <table class="table datatable" id="mitraTable">
                <thead>
                <tr style="font-weight: bold; color: black; font-size: larger;">
    <td align="center" scope="col">No Menu</td>
    <td align="center" scope="col">Kategory</td>
    <td align="center" scope="col">Nama Menu</td>
    <td align="center" scope="col">Harga Menu</td>
    <td align="center" scope="col">Stok</td>
    <?php
           $userLevel = session()->get('level');
           $allowedLevels = ['Manager', 'admin','Koki'];
  
           if (in_array($userLevel, $allowedLevels)) {
        ?> 
    <td align="center" scope="col">Tindakan</td>
    <?php } ?>
    </tr> 
                </thead>
                <tbody>
                <?php
$no = 1;
foreach ($s as $key) {
  if ($key->Soft === "Restore") { 
?>
     <tr>
          <td align="center" scope="col"><?= $key->Kode?></td>
          <td align="center" scope="col"><?= $key->Kategory?></td>
        <td align="center" scope="col"><?= $key->nama_minuman?></td>
        <td align="center" scope="col">Rp <?= number_format($key->harga_minuman, 0, ',', '.') ?></td>
       <td align="center" scope="col"><?= $key->stok ?></td> 
       <?php
           $userLevel = session()->get('level');
           $allowedLevels = ['Manager', 'admin','Koki'];
  
           if (in_array($userLevel, $allowedLevels)) {
        ?> 
       <td align="center">
                <!-- <li class="nav-item dropdown pe-3"> -->
                <a class="btn btn-success" class="nav-link d-flex align-items-center pe-0" href="#" data-bs-toggle="dropdown">
                    <span class="d-none d-md-block dropdown-toggle ps-2">tindakan</span>
                </a><!-- End Profile Iamge Icon -->

                <ul class="dropdown-menu dropdown-menu-end dropdown-menu-arrow profile">
                    <li class="dropdown-header">
                        <h6>
                            <a href="<?= base_url('home/MIdelete/'.$key->id_minuman)?>">
                                <i class="btn btn-danger">delete</i>
                            </a>
                            <a href="<?= base_url('home/MIedit/'.$key->id_minuman)?>">
                                <i class="btn btn-warning">Edit</i>
                            </a>
                        </h6>
                        <span></span>
                    </li>
                    <li>
                        <hr class="dropdown-divider">
                    </li>
                </ul>
            </td>
            <?php } ?>
      </tr>
<?php
    }
  }
?>
                </tbody>
              </table>
               </div>
          </div>

        </div>
      </div>
    </section>

  </div>
</main><!-- End #main -->

<script>
  // Add JavaScript for search functionality
  document.getElementById('search').addEventListener('input', function() {
    const searchValue = this.value.toLowerCase();
    const rows = document.querySelectorAll('#mitraTable tbody tr');

    rows.forEach(row => {
      const rowData = row.textContent.toLowerCase();
      row.style.display = rowData.includes(searchValue) ? '' : 'none';
    });
  });
</script>
