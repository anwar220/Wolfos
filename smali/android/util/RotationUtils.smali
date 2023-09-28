# classes3.dex

.class public Landroid/util/RotationUtils;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static deltaRotation(II)I
    .registers 3

    sub-int v0, p1, p0

    if-gez v0, :cond_6

    add-int/lit8 v0, v0, 0x4

    :cond_6
    return v0
.end method

.method public static rotateBounds(Landroid/graphics/Rect;III)V
    .registers 7

    iget v0, p0, Landroid/graphics/Rect;->left:I

    iget v1, p0, Landroid/graphics/Rect;->top:I

    packed-switch p3, :pswitch_data_46

    goto :goto_44

    :pswitch_8  #0x3
    iget v2, p0, Landroid/graphics/Rect;->bottom:I

    sub-int v2, p2, v2

    iput v2, p0, Landroid/graphics/Rect;->left:I

    iget v2, p0, Landroid/graphics/Rect;->right:I

    iput v2, p0, Landroid/graphics/Rect;->bottom:I

    iget v2, p0, Landroid/graphics/Rect;->top:I

    sub-int v2, p2, v2

    iput v2, p0, Landroid/graphics/Rect;->right:I

    iput v0, p0, Landroid/graphics/Rect;->top:I

    goto :goto_44

    :pswitch_1b  #0x2
    iget v2, p0, Landroid/graphics/Rect;->right:I

    sub-int v2, p1, v2

    iput v2, p0, Landroid/graphics/Rect;->left:I

    sub-int v2, p1, v0

    iput v2, p0, Landroid/graphics/Rect;->right:I

    iget v2, p0, Landroid/graphics/Rect;->bottom:I

    sub-int v2, p2, v2

    iput v2, p0, Landroid/graphics/Rect;->top:I

    sub-int v2, p2, v1

    iput v2, p0, Landroid/graphics/Rect;->bottom:I

    return-void

    :pswitch_30  #0x1
    iget v2, p0, Landroid/graphics/Rect;->top:I

    iput v2, p0, Landroid/graphics/Rect;->left:I

    iget v2, p0, Landroid/graphics/Rect;->right:I

    sub-int v2, p1, v2

    iput v2, p0, Landroid/graphics/Rect;->top:I

    iget v2, p0, Landroid/graphics/Rect;->bottom:I

    iput v2, p0, Landroid/graphics/Rect;->right:I

    sub-int v2, p1, v0

    iput v2, p0, Landroid/graphics/Rect;->bottom:I

    return-void

    :pswitch_43  #0x0
    return-void

    :goto_44
    return-void

    nop

    :pswitch_data_46
    .packed-switch 0x0
        :pswitch_43  #00000000
        :pswitch_30  #00000001
        :pswitch_1b  #00000002
        :pswitch_8  #00000003
    .end packed-switch
.end method

.method public static rotateBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;I)V
    .registers 5

    iget v0, p1, Landroid/graphics/Rect;->right:I

    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    invoke-static {p0, v0, v1, p2}, Landroid/util/RotationUtils;->rotateBounds(Landroid/graphics/Rect;III)V

    return-void
.end method

.method public static rotateBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;II)V
    .registers 5

    invoke-static {p2, p3}, Landroid/util/RotationUtils;->deltaRotation(II)I

    move-result v0

    invoke-static {p0, p1, v0}, Landroid/util/RotationUtils;->rotateBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;I)V

    return-void
.end method

.method public static rotateInsets(Landroid/graphics/Insets;I)Landroid/graphics/Insets;
    .registers 6

    if-eqz p0, :cond_4e

    sget-object v0, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    if-ne p0, v0, :cond_7

    goto :goto_4e

    :cond_7
    packed-switch p1, :pswitch_data_50

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unknown rotation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_24  #0x3
    iget v0, p0, Landroid/graphics/Insets;->bottom:I

    iget v1, p0, Landroid/graphics/Insets;->left:I

    iget v2, p0, Landroid/graphics/Insets;->top:I

    iget v3, p0, Landroid/graphics/Insets;->right:I

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Insets;->of(IIII)Landroid/graphics/Insets;

    move-result-object v0

    goto :goto_4d

    :pswitch_31  #0x2
    iget v0, p0, Landroid/graphics/Insets;->right:I

    iget v1, p0, Landroid/graphics/Insets;->bottom:I

    iget v2, p0, Landroid/graphics/Insets;->left:I

    iget v3, p0, Landroid/graphics/Insets;->top:I

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Insets;->of(IIII)Landroid/graphics/Insets;

    move-result-object v0

    goto :goto_4d

    :pswitch_3e  #0x1
    iget v0, p0, Landroid/graphics/Insets;->top:I

    iget v1, p0, Landroid/graphics/Insets;->right:I

    iget v2, p0, Landroid/graphics/Insets;->bottom:I

    iget v3, p0, Landroid/graphics/Insets;->left:I

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Insets;->of(IIII)Landroid/graphics/Insets;

    move-result-object v0

    goto :goto_4d

    :pswitch_4b  #0x0
    move-object v0, p0

    nop

    :goto_4d
    return-object v0

    :cond_4e
    :goto_4e
    return-object p0

    nop

    :pswitch_data_50
    .packed-switch 0x0
        :pswitch_4b  #00000000
        :pswitch_3e  #00000001
        :pswitch_31  #00000002
        :pswitch_24  #00000003
    .end packed-switch
.end method

.method public static rotatePoint(Landroid/graphics/Point;III)V
    .registers 6

    iget v0, p0, Landroid/graphics/Point;->x:I

    packed-switch p1, :pswitch_data_28

    goto :goto_26

    :pswitch_6  #0x3
    iget v1, p0, Landroid/graphics/Point;->y:I

    sub-int v1, p3, v1

    iput v1, p0, Landroid/graphics/Point;->x:I

    iput v0, p0, Landroid/graphics/Point;->y:I

    goto :goto_26

    :pswitch_f  #0x2
    iget v1, p0, Landroid/graphics/Point;->x:I

    sub-int v1, p2, v1

    iput v1, p0, Landroid/graphics/Point;->x:I

    iget v1, p0, Landroid/graphics/Point;->y:I

    sub-int v1, p3, v1

    iput v1, p0, Landroid/graphics/Point;->y:I

    return-void

    :pswitch_1c  #0x1
    iget v1, p0, Landroid/graphics/Point;->y:I

    iput v1, p0, Landroid/graphics/Point;->x:I

    sub-int v1, p2, v0

    iput v1, p0, Landroid/graphics/Point;->y:I

    return-void

    :pswitch_25  #0x0
    return-void

    :goto_26
    return-void

    nop

    :pswitch_data_28
    .packed-switch 0x0
        :pswitch_25  #00000000
        :pswitch_1c  #00000001
        :pswitch_f  #00000002
        :pswitch_6  #00000003
    .end packed-switch
.end method

.method public static rotateSurface(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;I)V
    .registers 15

    packed-switch p2, :pswitch_data_36

    goto :goto_34

    :pswitch_4  #0x3
    const/4 v2, 0x0

    const/high16 v3, 0x3f800000  # 1.0f

    const/high16 v4, -0x40800000  # -1.0f

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/view/SurfaceControl$Transaction;->setMatrix(Landroid/view/SurfaceControl;FFFF)Landroid/view/SurfaceControl$Transaction;

    goto :goto_34

    :pswitch_10  #0x2
    const/high16 v8, -0x40800000  # -1.0f

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/high16 v11, -0x40800000  # -1.0f

    move-object v6, p0

    move-object v7, p1

    invoke-virtual/range {v6 .. v11}, Landroid/view/SurfaceControl$Transaction;->setMatrix(Landroid/view/SurfaceControl;FFFF)Landroid/view/SurfaceControl$Transaction;

    goto :goto_34

    :pswitch_1c  #0x1
    const/4 v2, 0x0

    const/high16 v3, -0x40800000  # -1.0f

    const/high16 v4, 0x3f800000  # 1.0f

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/view/SurfaceControl$Transaction;->setMatrix(Landroid/view/SurfaceControl;FFFF)Landroid/view/SurfaceControl$Transaction;

    goto :goto_34

    :pswitch_28  #0x0
    const/high16 v8, 0x3f800000  # 1.0f

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/high16 v11, 0x3f800000  # 1.0f

    move-object v6, p0

    move-object v7, p1

    invoke-virtual/range {v6 .. v11}, Landroid/view/SurfaceControl$Transaction;->setMatrix(Landroid/view/SurfaceControl;FFFF)Landroid/view/SurfaceControl$Transaction;

    nop

    :goto_34
    return-void

    nop

    :pswitch_data_36
    .packed-switch 0x0
        :pswitch_28  #00000000
        :pswitch_1c  #00000001
        :pswitch_10  #00000002
        :pswitch_4  #00000003
    .end packed-switch
.end method

.method public static transformPhysicalToLogicalCoordinates(IIILandroid/graphics/Matrix;)V
    .registers 7

    const/4 v0, 0x0

    packed-switch p0, :pswitch_data_42

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown rotation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1d  #0x3
    const/high16 v1, 0x42b40000  # 90.0f

    invoke-virtual {p3, v1}, Landroid/graphics/Matrix;->setRotate(F)V

    int-to-float v1, p2

    invoke-virtual {p3, v1, v0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_40

    :pswitch_27  #0x2
    const/high16 v0, 0x43340000  # 180.0f

    invoke-virtual {p3, v0}, Landroid/graphics/Matrix;->setRotate(F)V

    int-to-float v0, p1

    int-to-float v1, p2

    invoke-virtual {p3, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_40

    :pswitch_32  #0x1
    const/high16 v1, 0x43870000  # 270.0f

    invoke-virtual {p3, v1}, Landroid/graphics/Matrix;->setRotate(F)V

    int-to-float v1, p1

    invoke-virtual {p3, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_40

    :pswitch_3c  #0x0
    invoke-virtual {p3}, Landroid/graphics/Matrix;->reset()V

    nop

    :goto_40
    return-void

    nop

    :pswitch_data_42
    .packed-switch 0x0
        :pswitch_3c  #00000000
        :pswitch_32  #00000001
        :pswitch_27  #00000002
        :pswitch_1d  #00000003
    .end packed-switch
.end method
