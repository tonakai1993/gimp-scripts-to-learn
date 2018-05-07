(define (script-fu-create-canvas)
  (gimp-display-new (car (gimp-image-new 64 64 RGB)))
)

(script-fu-register
  "script-fu-create-canvas"
  "<Image>/Script-Fu/Test/Create New Image"
  "description"
  "name"
  "copyright"
  "date"
  ""
)
