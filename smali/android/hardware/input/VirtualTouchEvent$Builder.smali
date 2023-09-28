# classes2.dex

.class public final Landroid/hardware/input/VirtualTouchEvent$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/input/VirtualTouchEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mAction:I

.field private mMajorAxisSize:F

.field private mPointerId:I

.field private mPressure:F

.field private mToolType:I

.field private mX:F

.field private mY:F


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/hardware/input/VirtualTouchEvent$Builder;->mToolType:I

    const/4 v0, -0x1

    iput v0, p0, Landroid/hardware/input/VirtualTouchEvent$Builder;->mPointerId:I

    iput v0, p0, Landroid/hardware/input/VirtualTouchEvent$Builder;->mAction:I

    const/high16 v0, 0x7fc00000  # Float.NaN

    iput v0, p0, Landroid/hardware/input/VirtualTouchEvent$Builder;->mX:F

    iput v0, p0, Landroid/hardware/input/VirtualTouchEvent$Builder;->mY:F

    iput v0, p0, Landroid/hardware/input/VirtualTouchEvent$Builder;->mPressure:F

    iput v0, p0, Landroid/hardware/input/VirtualTouchEvent$Builder;->mMajorAxisSize:F

    return-void
.end method


# virtual methods
.method public build()Landroid/hardware/input/VirtualTouchEvent;
    .registers 12

    iget v0, p0, Landroid/hardware/input/VirtualTouchEvent$Builder;->mToolType:I

    if-eqz v0, :cond_4c

    iget v0, p0, Landroid/hardware/input/VirtualTouchEvent$Builder;->mPointerId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_4c

    iget v0, p0, Landroid/hardware/input/VirtualTouchEvent$Builder;->mAction:I

    if-eq v0, v1, :cond_4c

    iget v0, p0, Landroid/hardware/input/VirtualTouchEvent$Builder;->mX:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_4c

    iget v0, p0, Landroid/hardware/input/VirtualTouchEvent$Builder;->mY:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_4c

    iget v0, p0, Landroid/hardware/input/VirtualTouchEvent$Builder;->mToolType:I

    const/4 v1, 0x3

    const/4 v2, 0x5

    if-ne v0, v2, :cond_27

    iget v3, p0, Landroid/hardware/input/VirtualTouchEvent$Builder;->mAction:I

    if-ne v3, v1, :cond_2e

    :cond_27
    iget v3, p0, Landroid/hardware/input/VirtualTouchEvent$Builder;->mAction:I

    if-ne v3, v1, :cond_36

    if-ne v0, v2, :cond_2e

    goto :goto_36

    :cond_2e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ACTION_CANCEL and TOOL_TYPE_PALM must always appear together"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_36
    :goto_36
    new-instance v0, Landroid/hardware/input/VirtualTouchEvent;

    iget v3, p0, Landroid/hardware/input/VirtualTouchEvent$Builder;->mPointerId:I

    iget v4, p0, Landroid/hardware/input/VirtualTouchEvent$Builder;->mToolType:I

    iget v5, p0, Landroid/hardware/input/VirtualTouchEvent$Builder;->mAction:I

    iget v6, p0, Landroid/hardware/input/VirtualTouchEvent$Builder;->mX:F

    iget v7, p0, Landroid/hardware/input/VirtualTouchEvent$Builder;->mY:F

    iget v8, p0, Landroid/hardware/input/VirtualTouchEvent$Builder;->mPressure:F

    iget v9, p0, Landroid/hardware/input/VirtualTouchEvent$Builder;->mMajorAxisSize:F

    const/4 v10, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v10}, Landroid/hardware/input/VirtualTouchEvent;-><init>(IIIFFFFLandroid/hardware/input/VirtualTouchEvent-IA;)V

    return-object v0

    :cond_4c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot build virtual touch event with unset required fields"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setAction(I)Landroid/hardware/input/VirtualTouchEvent$Builder;
    .registers 4

    if-eqz p1, :cond_14

    const/4 v0, 0x1

    if-eq p1, v0, :cond_14

    const/4 v0, 0x2

    if-eq p1, v0, :cond_14

    const/4 v0, 0x3

    if-ne p1, v0, :cond_c

    goto :goto_14

    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unsupported touch event action type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_14
    :goto_14
    iput p1, p0, Landroid/hardware/input/VirtualTouchEvent$Builder;->mAction:I

    return-object p0
.end method

.method public setMajorAxisSize(F)Landroid/hardware/input/VirtualTouchEvent$Builder;
    .registers 4

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_8

    iput p1, p0, Landroid/hardware/input/VirtualTouchEvent$Builder;->mMajorAxisSize:F

    return-object p0

    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Touch event major axis size cannot be negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setPointerId(I)Landroid/hardware/input/VirtualTouchEvent$Builder;
    .registers 2

    iput p1, p0, Landroid/hardware/input/VirtualTouchEvent$Builder;->mPointerId:I

    return-object p0
.end method

.method public setPressure(F)Landroid/hardware/input/VirtualTouchEvent$Builder;
    .registers 4

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_8

    iput p1, p0, Landroid/hardware/input/VirtualTouchEvent$Builder;->mPressure:F

    return-object p0

    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Touch event pressure cannot be negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setToolType(I)Landroid/hardware/input/VirtualTouchEvent$Builder;
    .registers 4

    const/4 v0, 0x1

    if-eq p1, v0, :cond_f

    const/4 v0, 0x5

    if-ne p1, v0, :cond_7

    goto :goto_f

    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unsupported touch event tool type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_f
    :goto_f
    iput p1, p0, Landroid/hardware/input/VirtualTouchEvent$Builder;->mToolType:I

    return-object p0
.end method

.method public setX(F)Landroid/hardware/input/VirtualTouchEvent$Builder;
    .registers 2

    iput p1, p0, Landroid/hardware/input/VirtualTouchEvent$Builder;->mX:F

    return-object p0
.end method

.method public setY(F)Landroid/hardware/input/VirtualTouchEvent$Builder;
    .registers 2

    iput p1, p0, Landroid/hardware/input/VirtualTouchEvent$Builder;->mY:F

    return-object p0
.end method
