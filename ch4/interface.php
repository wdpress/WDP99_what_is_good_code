<?php
interface Runnable
{
    // インタフェースでは実装の定義はできない
    public function run();
}

interface Walkable
{
    public function walk();
}

// クラスは複数のインタフェースを実装できる
class Man implements Runnable, Walkable
{
    public function run()
    {
        // 走るという実装
    }

    public function walk()
    {
        // 歩くという実装
    }

    // その他
}

// クラスではなくインタフェースを引数の型に指定できる
// 引数はRunnableインタフェースを満たすものであれば
// なんでもよい
function doSomething(Runnable $someRunnable)
{
    // Runnableインタフェースを満たしているので
    // run()メソッドを持つ
    $someRunnable->run();
}

// Runnableインタフェースを実装したManクラスの
// インスタンスを渡す
doSomething(new Man());
