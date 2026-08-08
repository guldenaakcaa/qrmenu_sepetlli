<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Http\Request;

class CheckAdmin
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure(\Illuminate\Http\Request): (\Illuminate\Http\Response|\Illuminate\Http\RedirectResponse)  $next
     * @return \Illuminate\Http\Response|\Illuminate\Http\RedirectResponse
     */
    public function handle(Request $request, Closure $next)
    {
        if (!session()->has('admin_logged_in')) {
            if (\Illuminate\Support\Facades\Cookie::has('admin_remember')) {
                $userId = \Illuminate\Support\Facades\Cookie::get('admin_remember');
                $user = \Illuminate\Support\Facades\DB::table('users')->where('id', $userId)->first();
                if ($user) {
                    session([
                        'admin_logged_in' => true,
                        'admin_id' => $user->id,
                        'admin_name' => $user->name,
                        'admin_email' => $user->email,
                        'admin_role' => (string) $user->kullanicitipi
                    ]);
                    return $next($request);
                }
            }
            return redirect()->route('admin.login');
        }
        
        return $next($request);
    }
}
