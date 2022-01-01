// // 主にモジュールのインポートパスとバージョン情報を書いておくためのファイルで、いくつかのディレクティブを使ってアプリケーションがどのような依存関係を持っているか記述しておきます

module github.com/ryo-yamaoka/sample-lib

go 1.17

// require github.com/ryo-yamaoka/direct-dependent-lib v0.0.2

// require github.com/ryo-yamaoka/indirect-dependent-lib v0.0.4 // indirect

// exclude github.com/ryo-yamaoka/direct-dependent-lib v0.0.1

// replace github.com/xxx/abandoned => github.com/ryo-yamaoka/forked

// retract (
//     // include vulnerability CVE-xxxx
//     v0.0.1
//     // has fatal bug xxx
//     v0.0.2
// )
