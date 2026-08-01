<?php
require __DIR__.'/vendor/autoload.php';
$app = require_once __DIR__.'/bootstrap/app.php';
$kernel = $app->make(Illuminate\Contracts\Http\Kernel::class);

$request = Illuminate\Http\Request::create('/sepet/onayla', 'POST', [
    'cart_items' => [
        ['name' => 'Kola', 'price' => 50],
    ]
]);

// Set mock session
$session = $app->make('session.store');
$session->put('current_masa_id', 1);
$session->put('current_masa_isim', 'Masa 1');
$session->put('customer_session_id', 'test-session-123');
$request->setLaravelSession($session);

$response = $kernel->handle($request);
echo $response->getContent();
