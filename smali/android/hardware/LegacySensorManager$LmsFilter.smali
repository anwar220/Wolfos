# classes.dex

.class final Landroid/hardware/LegacySensorManager$LmsFilter;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/LegacySensorManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "LmsFilter"
.end annotation


# static fields
.field private static final COUNT:I = 0xc

.field private static final PREDICTION_RATIO:F = 0.33333334f

.field private static final PREDICTION_TIME:F = 0.08f

.field private static final SENSORS_RATE_MS:I = 0x14


# instance fields
.field private mIndex:I

.field private mT:[J

.field private mV:[F


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x18

    new-array v1, v0, [F

    iput-object v1, p0, Landroid/hardware/LegacySensorManager$LmsFilter;->mV:[F

    new-array v0, v0, [J

    iput-object v0, p0, Landroid/hardware/LegacySensorManager$LmsFilter;->mT:[J

    const/16 v0, 0xc

    iput v0, p0, Landroid/hardware/LegacySensorManager$LmsFilter;->mIndex:I

    return-void
.end method


# virtual methods
.method public filter(JF)F
    .registers 27

    move-object/from16 v0, p0

    move/from16 v1, p3

    const v2, 0x3089705f  # 1.0E-9f

    iget-object v3, v0, Landroid/hardware/LegacySensorManager$LmsFilter;->mV:[F

    iget v4, v0, Landroid/hardware/LegacySensorManager$LmsFilter;->mIndex:I

    aget v5, v3, v4

    sub-float v6, v1, v5

    const/high16 v7, 0x43340000  # 180.0f

    cmpl-float v6, v6, v7

    const/high16 v8, 0x43b40000  # 360.0f

    if-lez v6, :cond_19

    sub-float/2addr v1, v8

    goto :goto_20

    :cond_19
    sub-float v6, v5, v1

    cmpl-float v6, v6, v7

    if-lez v6, :cond_20

    add-float/2addr v1, v8

    :cond_20
    :goto_20
    add-int/lit8 v4, v4, 0x1

    iput v4, v0, Landroid/hardware/LegacySensorManager$LmsFilter;->mIndex:I

    const/16 v6, 0x18

    const/16 v7, 0xc

    if-lt v4, v6, :cond_2c

    iput v7, v0, Landroid/hardware/LegacySensorManager$LmsFilter;->mIndex:I

    :cond_2c
    iget v4, v0, Landroid/hardware/LegacySensorManager$LmsFilter;->mIndex:I

    aput v1, v3, v4

    iget-object v6, v0, Landroid/hardware/LegacySensorManager$LmsFilter;->mT:[J

    aput-wide p1, v6, v4

    add-int/lit8 v9, v4, -0xc

    aput v1, v3, v9

    sub-int/2addr v4, v7

    aput-wide p1, v6, v4

    const/4 v3, 0x0

    move v4, v3

    move v6, v3

    move v7, v3

    move v9, v3

    move v10, v3

    const/4 v11, 0x0

    :goto_42
    const/16 v12, 0xb

    if-ge v11, v12, :cond_85

    iget v12, v0, Landroid/hardware/LegacySensorManager$LmsFilter;->mIndex:I

    add-int/lit8 v12, v12, -0x1

    sub-int/2addr v12, v11

    iget-object v13, v0, Landroid/hardware/LegacySensorManager$LmsFilter;->mV:[F

    aget v13, v13, v12

    iget-object v14, v0, Landroid/hardware/LegacySensorManager$LmsFilter;->mT:[J

    aget-wide v15, v14, v12

    const-wide/16 v17, 0x2

    div-long v19, v15, v17

    add-int/lit8 v21, v12, 0x1

    aget-wide v21, v14, v21

    div-long v21, v21, v17

    add-long v19, v19, v21

    move/from16 v18, v4

    sub-long v3, v19, p1

    long-to-float v3, v3

    const v4, 0x3089705f  # 1.0E-9f

    mul-float/2addr v3, v4

    add-int/lit8 v19, v12, 0x1

    aget-wide v19, v14, v19

    sub-long v14, v15, v19

    long-to-float v14, v14

    mul-float/2addr v14, v4

    mul-float/2addr v14, v14

    mul-float v4, v13, v14

    add-float/2addr v10, v4

    mul-float v4, v3, v14

    mul-float/2addr v4, v3

    add-float/2addr v9, v4

    mul-float v4, v3, v14

    add-float/2addr v7, v4

    mul-float v4, v3, v14

    mul-float/2addr v4, v13

    add-float/2addr v6, v4

    add-float v4, v18, v14

    add-int/lit8 v11, v11, 0x1

    const/4 v3, 0x0

    goto :goto_42

    :cond_85
    move/from16 v18, v4

    mul-float v3, v10, v9

    mul-float v4, v7, v6

    add-float/2addr v3, v4

    mul-float v4, v18, v9

    mul-float v12, v7, v7

    add-float/2addr v4, v12

    div-float/2addr v3, v4

    mul-float v4, v18, v3

    sub-float/2addr v4, v10

    div-float/2addr v4, v7

    const v12, 0x3da3d70a  # 0.08f

    mul-float/2addr v12, v4

    add-float/2addr v12, v3

    const v13, 0x3b360b61

    mul-float/2addr v12, v13

    const/4 v13, 0x0

    cmpl-float v14, v12, v13

    if-ltz v14, :cond_a6

    move v13, v12

    goto :goto_a7

    :cond_a6
    neg-float v13, v12

    :goto_a7
    const/high16 v14, 0x3f000000  # 0.5f

    cmpl-float v13, v13, v14

    const/high16 v15, 0x3f800000  # 1.0f

    if-ltz v13, :cond_ba

    add-float/2addr v14, v12

    float-to-double v13, v14

    invoke-static {v13, v14}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v13

    double-to-float v13, v13

    sub-float v13, v12, v13

    add-float v12, v13, v15

    :cond_ba
    const/4 v13, 0x0

    cmpg-float v13, v12, v13

    if-gez v13, :cond_c0

    add-float/2addr v12, v15

    :cond_c0
    mul-float/2addr v12, v8

    return v12
.end method
