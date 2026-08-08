<?php
require __DIR__.'/../vendor/autoload.php';
$app = require_once __DIR__.'/../bootstrap/app.php';
$kernel = $app->make(Illuminate\Contracts\Http\Kernel::class);
$response = $kernel->handle(
    $request = Illuminate\Http\Request::capture()
);
try {
    Illuminate\Support\Facades\DB::statement('ALTER TABLE t_ayar ADD COLUMN latitude VARCHAR(50) NULL, ADD COLUMN longitude VARCHAR(50) NULL, ADD COLUMN is_gps_check_active TINYINT(1) DEFAULT 0');
    echo "Success";
} catch (\Exception $e) {
    echo "Error: " . $e->getMessage();
}
