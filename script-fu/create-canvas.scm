(define (script-fu-create-canvas)
  ; 64x64 の透明な画像を作成する
  (let*

    ;; 局所変数定義
    (
      ;; ;; サンプルの意図を読み解けなかった部分はいったんコメントアウトする
      ;; (old-bg (car (gimp-palette-get-background)))

      ; 画像本体
      (img (car (gimp-image-new 64 64 RGB)))
      ; レイヤー1「背景」
      (layer (car (gimp-layer-new img 64 64 RGBA-IMAGE "背景" 100 NORMAL-MODE)))
    )

    ;; 本処理

    ;; ;; サンプルの意図を読み解けなかった部分はいったんコメントアウトする
    ;(gimp-palette-set-background bg-color)
    ;(gimp-drawable-fill bg-layer BG-IMAGE-FILL)
    ; (gimp-palette-set-background old-bg)

    ; レイヤーを画像に追加する
    (gimp-image-add-layer img layer -1)
    ; 画像を表示する
    (gimp-display-new img)

    ;; 後処理
    ; フラッシュ
    (gimp-displays-flush)

  )
)

(script-fu-register
  "script-fu-create-canvas"
  "<Image>/Script-Fu/Test/新しい画像"
  "description"
  "name"
  "copyright"
  "date"
  ""
)
