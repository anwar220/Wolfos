# classes3.dex

.class public final Landroid/view/MotionEvent$PointerCoords;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/MotionEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PointerCoords"
.end annotation


# static fields
.field private static final INITIAL_PACKED_AXIS_VALUES:I = 0x8


# instance fields
.field private mPackedAxisBits:J

.field private mPackedAxisValues:[F

.field public orientation:F

.field public pressure:F

.field public relativeX:F

.field public relativeY:F

.field public size:F

.field public toolMajor:F

.field public toolMinor:F

.field public touchMajor:F

.field public touchMinor:F

.field public x:F

.field public y:F


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/view/MotionEvent$PointerCoords;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1}, Landroid/view/MotionEvent$PointerCoords;->copyFrom(Landroid/view/MotionEvent$PointerCoords;)V

    return-void
.end method

.method public static createArray(I)[Landroid/view/MotionEvent$PointerCoords;
    .registers 4

    new-array v0, p0, [Landroid/view/MotionEvent$PointerCoords;

    const/4 v1, 0x0

    :goto_3
    if-ge v1, p0, :cond_f

    new-instance v2, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct {v2}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_f
    return-object v0
.end method


# virtual methods
.method public clear()V
    .registers 3

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/view/MotionEvent$PointerCoords;->mPackedAxisBits:J

    const/4 v0, 0x0

    iput v0, p0, Landroid/view/MotionEvent$PointerCoords;->x:F

    iput v0, p0, Landroid/view/MotionEvent$PointerCoords;->y:F

    iput v0, p0, Landroid/view/MotionEvent$PointerCoords;->pressure:F

    iput v0, p0, Landroid/view/MotionEvent$PointerCoords;->size:F

    iput v0, p0, Landroid/view/MotionEvent$PointerCoords;->touchMajor:F

    iput v0, p0, Landroid/view/MotionEvent$PointerCoords;->touchMinor:F

    iput v0, p0, Landroid/view/MotionEvent$PointerCoords;->toolMajor:F

    iput v0, p0, Landroid/view/MotionEvent$PointerCoords;->toolMinor:F

    iput v0, p0, Landroid/view/MotionEvent$PointerCoords;->orientation:F

    iput v0, p0, Landroid/view/MotionEvent$PointerCoords;->relativeX:F

    iput v0, p0, Landroid/view/MotionEvent$PointerCoords;->relativeY:F

    return-void
.end method

.method public copyFrom(Landroid/view/MotionEvent$PointerCoords;)V
    .registers 8

    iget-wide v0, p1, Landroid/view/MotionEvent$PointerCoords;->mPackedAxisBits:J

    iput-wide v0, p0, Landroid/view/MotionEvent$PointerCoords;->mPackedAxisBits:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_20

    iget-object v2, p1, Landroid/view/MotionEvent$PointerCoords;->mPackedAxisValues:[F

    invoke-static {v0, v1}, Ljava/lang/Long;->bitCount(J)I

    move-result v3

    iget-object v4, p0, Landroid/view/MotionEvent$PointerCoords;->mPackedAxisValues:[F

    if-eqz v4, :cond_17

    array-length v5, v4

    if-le v3, v5, :cond_1c

    :cond_17
    array-length v5, v2

    new-array v4, v5, [F

    iput-object v4, p0, Landroid/view/MotionEvent$PointerCoords;->mPackedAxisValues:[F

    :cond_1c
    const/4 v5, 0x0

    invoke-static {v2, v5, v4, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_20
    iget v2, p1, Landroid/view/MotionEvent$PointerCoords;->x:F

    iput v2, p0, Landroid/view/MotionEvent$PointerCoords;->x:F

    iget v2, p1, Landroid/view/MotionEvent$PointerCoords;->y:F

    iput v2, p0, Landroid/view/MotionEvent$PointerCoords;->y:F

    iget v2, p1, Landroid/view/MotionEvent$PointerCoords;->pressure:F

    iput v2, p0, Landroid/view/MotionEvent$PointerCoords;->pressure:F

    iget v2, p1, Landroid/view/MotionEvent$PointerCoords;->size:F

    iput v2, p0, Landroid/view/MotionEvent$PointerCoords;->size:F

    iget v2, p1, Landroid/view/MotionEvent$PointerCoords;->touchMajor:F

    iput v2, p0, Landroid/view/MotionEvent$PointerCoords;->touchMajor:F

    iget v2, p1, Landroid/view/MotionEvent$PointerCoords;->touchMinor:F

    iput v2, p0, Landroid/view/MotionEvent$PointerCoords;->touchMinor:F

    iget v2, p1, Landroid/view/MotionEvent$PointerCoords;->toolMajor:F

    iput v2, p0, Landroid/view/MotionEvent$PointerCoords;->toolMajor:F

    iget v2, p1, Landroid/view/MotionEvent$PointerCoords;->toolMinor:F

    iput v2, p0, Landroid/view/MotionEvent$PointerCoords;->toolMinor:F

    iget v2, p1, Landroid/view/MotionEvent$PointerCoords;->orientation:F

    iput v2, p0, Landroid/view/MotionEvent$PointerCoords;->orientation:F

    iget v2, p1, Landroid/view/MotionEvent$PointerCoords;->relativeX:F

    iput v2, p0, Landroid/view/MotionEvent$PointerCoords;->relativeX:F

    iget v2, p1, Landroid/view/MotionEvent$PointerCoords;->relativeY:F

    iput v2, p0, Landroid/view/MotionEvent$PointerCoords;->relativeY:F

    return-void
.end method

.method public getAxisValue(I)F
    .registers 10

    sparse-switch p1, :sswitch_data_50

    if-ltz p1, :cond_47

    const/16 v0, 0x3f

    if-gt p1, v0, :cond_47

    iget-wide v0, p0, Landroid/view/MotionEvent$PointerCoords;->mPackedAxisBits:J

    const-wide/high16 v2, -0x8000000000000000L

    ushr-long/2addr v2, p1

    and-long v4, v0, v2

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_39

    const/4 v4, 0x0

    return v4

    :sswitch_18
    iget v0, p0, Landroid/view/MotionEvent$PointerCoords;->relativeY:F

    return v0

    :sswitch_1b
    iget v0, p0, Landroid/view/MotionEvent$PointerCoords;->relativeX:F

    return v0

    :sswitch_1e
    iget v0, p0, Landroid/view/MotionEvent$PointerCoords;->orientation:F

    return v0

    :sswitch_21
    iget v0, p0, Landroid/view/MotionEvent$PointerCoords;->toolMinor:F

    return v0

    :sswitch_24
    iget v0, p0, Landroid/view/MotionEvent$PointerCoords;->toolMajor:F

    return v0

    :sswitch_27
    iget v0, p0, Landroid/view/MotionEvent$PointerCoords;->touchMinor:F

    return v0

    :sswitch_2a
    iget v0, p0, Landroid/view/MotionEvent$PointerCoords;->touchMajor:F

    return v0

    :sswitch_2d
    iget v0, p0, Landroid/view/MotionEvent$PointerCoords;->size:F

    return v0

    :sswitch_30
    iget v0, p0, Landroid/view/MotionEvent$PointerCoords;->pressure:F

    return v0

    :sswitch_33
    iget v0, p0, Landroid/view/MotionEvent$PointerCoords;->y:F

    return v0

    :sswitch_36
    iget v0, p0, Landroid/view/MotionEvent$PointerCoords;->x:F

    return v0

    :cond_39
    const-wide/16 v4, -0x1

    ushr-long/2addr v4, p1

    not-long v4, v4

    and-long/2addr v4, v0

    invoke-static {v4, v5}, Ljava/lang/Long;->bitCount(J)I

    move-result v4

    iget-object v5, p0, Landroid/view/MotionEvent$PointerCoords;->mPackedAxisValues:[F

    aget v5, v5, v4

    return v5

    :cond_47
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Axis out of range."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :sswitch_data_50
    .sparse-switch
        0x0 -> :sswitch_36
        0x1 -> :sswitch_33
        0x2 -> :sswitch_30
        0x3 -> :sswitch_2d
        0x4 -> :sswitch_2a
        0x5 -> :sswitch_27
        0x6 -> :sswitch_24
        0x7 -> :sswitch_21
        0x8 -> :sswitch_1e
        0x1b -> :sswitch_1b
        0x1c -> :sswitch_18
    .end sparse-switch
.end method

.method public setAxisValue(IF)V
    .registers 13

    sparse-switch p1, :sswitch_data_7e

    if-ltz p1, :cond_75

    const/16 v0, 0x3f

    if-gt p1, v0, :cond_75

    iget-wide v0, p0, Landroid/view/MotionEvent$PointerCoords;->mPackedAxisBits:J

    const-wide/high16 v2, -0x8000000000000000L

    ushr-long/2addr v2, p1

    const-wide/16 v4, -0x1

    ushr-long/2addr v4, p1

    not-long v4, v4

    and-long/2addr v4, v0

    invoke-static {v4, v5}, Ljava/lang/Long;->bitCount(J)I

    move-result v4

    iget-object v5, p0, Landroid/view/MotionEvent$PointerCoords;->mPackedAxisValues:[F

    and-long v6, v0, v2

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-nez v6, :cond_72

    if-nez v5, :cond_4b

    const/16 v6, 0x8

    new-array v5, v6, [F

    iput-object v5, p0, Landroid/view/MotionEvent$PointerCoords;->mPackedAxisValues:[F

    goto :goto_6e

    :sswitch_2a
    iput p2, p0, Landroid/view/MotionEvent$PointerCoords;->relativeY:F

    goto :goto_74

    :sswitch_2d
    iput p2, p0, Landroid/view/MotionEvent$PointerCoords;->relativeX:F

    goto :goto_74

    :sswitch_30
    iput p2, p0, Landroid/view/MotionEvent$PointerCoords;->orientation:F

    goto :goto_74

    :sswitch_33
    iput p2, p0, Landroid/view/MotionEvent$PointerCoords;->toolMinor:F

    goto :goto_74

    :sswitch_36
    iput p2, p0, Landroid/view/MotionEvent$PointerCoords;->toolMajor:F

    goto :goto_74

    :sswitch_39
    iput p2, p0, Landroid/view/MotionEvent$PointerCoords;->touchMinor:F

    goto :goto_74

    :sswitch_3c
    iput p2, p0, Landroid/view/MotionEvent$PointerCoords;->touchMajor:F

    goto :goto_74

    :sswitch_3f
    iput p2, p0, Landroid/view/MotionEvent$PointerCoords;->size:F

    goto :goto_74

    :sswitch_42
    iput p2, p0, Landroid/view/MotionEvent$PointerCoords;->pressure:F

    goto :goto_74

    :sswitch_45
    iput p2, p0, Landroid/view/MotionEvent$PointerCoords;->y:F

    goto :goto_74

    :sswitch_48
    iput p2, p0, Landroid/view/MotionEvent$PointerCoords;->x:F

    goto :goto_74

    :cond_4b
    invoke-static {v0, v1}, Ljava/lang/Long;->bitCount(J)I

    move-result v6

    array-length v7, v5

    if-ge v6, v7, :cond_5c

    if-eq v4, v6, :cond_6e

    add-int/lit8 v7, v4, 0x1

    sub-int v8, v6, v4

    invoke-static {v5, v4, v5, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_6e

    :cond_5c
    mul-int/lit8 v7, v6, 0x2

    new-array v7, v7, [F

    const/4 v8, 0x0

    invoke-static {v5, v8, v7, v8, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v8, v4, 0x1

    sub-int v9, v6, v4

    invoke-static {v5, v4, v7, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v5, v7

    iput-object v5, p0, Landroid/view/MotionEvent$PointerCoords;->mPackedAxisValues:[F

    :cond_6e
    :goto_6e
    or-long v6, v0, v2

    iput-wide v6, p0, Landroid/view/MotionEvent$PointerCoords;->mPackedAxisBits:J

    :cond_72
    aput p2, v5, v4

    :goto_74
    return-void

    :cond_75
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Axis out of range."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :sswitch_data_7e
    .sparse-switch
        0x0 -> :sswitch_48
        0x1 -> :sswitch_45
        0x2 -> :sswitch_42
        0x3 -> :sswitch_3f
        0x4 -> :sswitch_3c
        0x5 -> :sswitch_39
        0x6 -> :sswitch_36
        0x7 -> :sswitch_33
        0x8 -> :sswitch_30
        0x1b -> :sswitch_2d
        0x1c -> :sswitch_2a
    .end sparse-switch
.end method
