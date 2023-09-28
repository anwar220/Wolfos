# classes4.dex

.class public final Lcom/android/internal/graphics/cam/Frame;
.super Ljava/lang/Object;


# static fields
.field public static final DEFAULT:Lcom/android/internal/graphics/cam/Frame;


# instance fields
.field private final mAw:F

.field private final mC:F

.field private final mFl:F

.field private final mFlRoot:F

.field private final mN:F

.field private final mNbb:F

.field private final mNc:F

.field private final mNcb:F

.field private final mRgbD:[F

.field private final mZ:F


# direct methods
.method static constructor <clinit>()V
    .registers 5

    sget-object v0, Lcom/android/internal/graphics/cam/CamUtils;->WHITE_POINT_D65:[F

    const-wide/high16 v1, 0x4049000000000000L  # 50.0

    invoke-static {v1, v2}, Lcom/android/internal/graphics/cam/CamUtils;->yFromLstar(D)D

    move-result-wide v1

    const-wide v3, 0x404fd4bbab8b494cL  # 63.66197723675813

    mul-double/2addr v1, v3

    const-wide/high16 v3, 0x4059000000000000L  # 100.0

    div-double/2addr v1, v3

    double-to-float v1, v1

    const/high16 v2, 0x42480000  # 50.0f

    const/high16 v3, 0x40000000  # 2.0f

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/internal/graphics/cam/Frame;->make([FFFFZ)Lcom/android/internal/graphics/cam/Frame;

    move-result-object v0

    sput-object v0, Lcom/android/internal/graphics/cam/Frame;->DEFAULT:Lcom/android/internal/graphics/cam/Frame;

    return-void
.end method

.method private constructor <init>(FFFFFF[FFFF)V
    .registers 11

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/internal/graphics/cam/Frame;->mN:F

    iput p2, p0, Lcom/android/internal/graphics/cam/Frame;->mAw:F

    iput p3, p0, Lcom/android/internal/graphics/cam/Frame;->mNbb:F

    iput p4, p0, Lcom/android/internal/graphics/cam/Frame;->mNcb:F

    iput p5, p0, Lcom/android/internal/graphics/cam/Frame;->mC:F

    iput p6, p0, Lcom/android/internal/graphics/cam/Frame;->mNc:F

    iput-object p7, p0, Lcom/android/internal/graphics/cam/Frame;->mRgbD:[F

    iput p8, p0, Lcom/android/internal/graphics/cam/Frame;->mFl:F

    iput p9, p0, Lcom/android/internal/graphics/cam/Frame;->mFlRoot:F

    iput p10, p0, Lcom/android/internal/graphics/cam/Frame;->mZ:F

    return-void
.end method

.method public static make([FFFFZ)Lcom/android/internal/graphics/cam/Frame;
    .registers 37

    move/from16 v0, p1

    sget-object v1, Lcom/android/internal/graphics/cam/CamUtils;->XYZ_TO_CAM16RGB:[[F

    move-object/from16 v2, p0

    const/4 v3, 0x0

    aget v4, v2, v3

    aget-object v5, v1, v3

    aget v5, v5, v3

    mul-float/2addr v4, v5

    const/4 v5, 0x1

    aget v6, v2, v5

    aget-object v7, v1, v3

    aget v7, v7, v5

    mul-float/2addr v6, v7

    add-float/2addr v4, v6

    const/4 v6, 0x2

    aget v7, v2, v6

    aget-object v8, v1, v3

    aget v8, v8, v6

    mul-float/2addr v7, v8

    add-float/2addr v4, v7

    aget v7, v2, v3

    aget-object v8, v1, v5

    aget v8, v8, v3

    mul-float/2addr v7, v8

    aget v8, v2, v5

    aget-object v9, v1, v5

    aget v9, v9, v5

    mul-float/2addr v8, v9

    add-float/2addr v7, v8

    aget v8, v2, v6

    aget-object v9, v1, v5

    aget v9, v9, v6

    mul-float/2addr v8, v9

    add-float/2addr v7, v8

    aget v8, v2, v3

    aget-object v9, v1, v6

    aget v9, v9, v3

    mul-float/2addr v8, v9

    aget v9, v2, v5

    aget-object v10, v1, v6

    aget v10, v10, v5

    mul-float/2addr v9, v10

    add-float/2addr v8, v9

    aget v9, v2, v6

    aget-object v10, v1, v6

    aget v10, v10, v6

    mul-float/2addr v9, v10

    add-float/2addr v8, v9

    const/high16 v9, 0x41200000  # 10.0f

    div-float v10, p3, v9

    const v11, 0x3f4ccccd  # 0.8f

    add-float/2addr v10, v11

    float-to-double v12, v10

    const-wide v14, 0x3feccccccccccccdL  # 0.9

    cmpl-double v12, v12, v14

    const v13, 0x3f170a3d  # 0.59f

    if-ltz v12, :cond_71

    const v11, 0x3f30a3d7  # 0.69f

    const v12, 0x3f666666  # 0.9f

    sub-float v12, v10, v12

    mul-float/2addr v12, v9

    invoke-static {v13, v11, v12}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result v9

    goto :goto_7b

    :cond_71
    const v12, 0x3f066666  # 0.525f

    sub-float v11, v10, v11

    mul-float/2addr v11, v9

    invoke-static {v12, v13, v11}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result v9

    :goto_7b
    move/from16 v17, v9

    const/high16 v9, 0x3f800000  # 1.0f

    if-eqz p4, :cond_83

    move v11, v9

    goto :goto_97

    :cond_83
    const v11, 0x3e8e38e4

    neg-float v12, v0

    const/high16 v13, 0x42280000  # 42.0f

    sub-float/2addr v12, v13

    const/high16 v13, 0x42b80000  # 92.0f

    div-float/2addr v12, v13

    float-to-double v12, v12

    invoke-static {v12, v13}, Ljava/lang/Math;->exp(D)D

    move-result-wide v12

    double-to-float v12, v12

    mul-float/2addr v12, v11

    sub-float v11, v9, v12

    mul-float/2addr v11, v10

    :goto_97
    float-to-double v12, v11

    const-wide/high16 v14, 0x3ff0000000000000L  # 1.0

    cmpl-double v12, v12, v14

    if-lez v12, :cond_a0

    move v12, v9

    goto :goto_aa

    :cond_a0
    float-to-double v12, v11

    const-wide/16 v14, 0x0

    cmpg-double v12, v12, v14

    if-gez v12, :cond_a9

    const/4 v12, 0x0

    goto :goto_aa

    :cond_a9
    move v12, v11

    :goto_aa
    move v11, v12

    move/from16 v18, v10

    const/4 v12, 0x3

    new-array v13, v12, [F

    const/high16 v14, 0x42c80000  # 100.0f

    div-float v15, v14, v4

    mul-float/2addr v15, v11

    add-float/2addr v15, v9

    sub-float/2addr v15, v11

    aput v15, v13, v3

    div-float v15, v14, v7

    mul-float/2addr v15, v11

    add-float/2addr v15, v9

    sub-float/2addr v15, v11

    aput v15, v13, v5

    div-float/2addr v14, v8

    mul-float/2addr v14, v11

    add-float/2addr v14, v9

    sub-float/2addr v14, v11

    aput v14, v13, v6

    move-object/from16 v23, v13

    const/high16 v13, 0x40a00000  # 5.0f

    mul-float/2addr v13, v0

    add-float/2addr v13, v9

    div-float v24, v9, v13

    mul-float v13, v24, v24

    mul-float v13, v13, v24

    mul-float v25, v13, v24

    sub-float v9, v9, v25

    mul-float v13, v25, v0

    const v14, 0x3dcccccd  # 0.1f

    mul-float/2addr v14, v9

    mul-float/2addr v14, v9

    const-wide/high16 v15, 0x4014000000000000L  # 5.0

    move/from16 v26, v7

    float-to-double v6, v0

    mul-double/2addr v6, v15

    invoke-static {v6, v7}, Ljava/lang/Math;->cbrt(D)D

    move-result-wide v6

    double-to-float v6, v6

    mul-float/2addr v14, v6

    add-float v6, v13, v14

    move/from16 v7, p2

    float-to-double v13, v7

    invoke-static {v13, v14}, Lcom/android/internal/graphics/cam/CamUtils;->yFromLstar(D)D

    move-result-wide v13

    double-to-float v13, v13

    aget v14, p0, v5

    div-float v15, v13, v14

    const v13, 0x3fbd70a4  # 1.48f

    move/from16 v27, v6

    float-to-double v5, v15

    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v5

    double-to-float v5, v5

    add-float/2addr v5, v13

    const v6, 0x3f39999a  # 0.725f

    move/from16 v28, v4

    float-to-double v3, v15

    const-wide v13, 0x3fc999999999999aL  # 0.2

    invoke-static {v3, v4, v13, v14}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    double-to-float v3, v3

    div-float/2addr v6, v3

    move/from16 v16, v6

    new-array v3, v12, [F

    const/4 v4, 0x0

    aget v13, v23, v4

    mul-float v13, v13, v27

    mul-float v13, v13, v28

    float-to-double v13, v13

    const-wide/high16 v21, 0x4059000000000000L  # 100.0

    div-double v13, v13, v21

    move/from16 v29, v5

    const-wide v4, 0x3fdae147ae147ae1L  # 0.42

    invoke-static {v13, v14, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v13

    double-to-float v13, v13

    const/4 v14, 0x0

    aput v13, v3, v14

    const/4 v14, 0x1

    aget v20, v23, v14

    mul-float v20, v20, v27

    mul-float v13, v20, v26

    float-to-double v12, v13

    div-double v12, v12, v21

    invoke-static {v12, v13, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v12

    double-to-float v12, v12

    aput v12, v3, v14

    const/4 v12, 0x2

    aget v13, v23, v12

    mul-float v13, v13, v27

    mul-float/2addr v13, v8

    move/from16 v31, v15

    float-to-double v14, v13

    div-double v14, v14, v21

    invoke-static {v14, v15, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    double-to-float v4, v4

    aput v4, v3, v12

    const/4 v4, 0x3

    new-array v4, v4, [F

    const/4 v5, 0x0

    aget v12, v3, v5

    const/high16 v15, 0x43c80000  # 400.0f

    mul-float/2addr v12, v15

    aget v13, v3, v5

    const v20, 0x41d90a3d  # 27.13f

    add-float v13, v13, v20

    div-float/2addr v12, v13

    aput v12, v4, v5

    const/4 v5, 0x1

    aget v12, v3, v5

    mul-float/2addr v12, v15

    aget v14, v3, v5

    add-float v14, v14, v20

    div-float/2addr v12, v14

    aput v12, v4, v5

    const/4 v5, 0x2

    aget v12, v3, v5

    mul-float/2addr v12, v15

    aget v15, v3, v5

    add-float v15, v15, v20

    div-float/2addr v12, v15

    aput v12, v4, v5

    const/high16 v12, 0x40000000  # 2.0f

    const/4 v13, 0x0

    aget v13, v4, v13

    mul-float/2addr v13, v12

    const/4 v12, 0x1

    aget v12, v4, v12

    add-float/2addr v13, v12

    const v12, 0x3d4ccccd  # 0.05f

    aget v5, v4, v5

    mul-float/2addr v5, v12

    add-float/2addr v13, v5

    mul-float v5, v13, v6

    new-instance v30, Lcom/android/internal/graphics/cam/Frame;

    move/from16 v15, v27

    float-to-double v12, v15

    move-object/from16 v27, v1

    const-wide/high16 v0, 0x3fd0000000000000L  # 0.25

    invoke-static {v12, v13, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-float v0, v0

    move-object/from16 v12, v30

    move/from16 v13, v31

    move v14, v5

    move v1, v15

    move v15, v6

    move-object/from16 v19, v23

    move/from16 v20, v1

    move/from16 v21, v0

    move/from16 v22, v29

    invoke-direct/range {v12 .. v22}, Lcom/android/internal/graphics/cam/Frame;-><init>(FFFFFF[FFFF)V

    return-object v30
.end method


# virtual methods
.method public getAw()F
    .registers 2

    iget v0, p0, Lcom/android/internal/graphics/cam/Frame;->mAw:F

    return v0
.end method

.method getC()F
    .registers 2

    iget v0, p0, Lcom/android/internal/graphics/cam/Frame;->mC:F

    return v0
.end method

.method getFl()F
    .registers 2

    iget v0, p0, Lcom/android/internal/graphics/cam/Frame;->mFl:F

    return v0
.end method

.method public getFlRoot()F
    .registers 2

    iget v0, p0, Lcom/android/internal/graphics/cam/Frame;->mFlRoot:F

    return v0
.end method

.method public getN()F
    .registers 2

    iget v0, p0, Lcom/android/internal/graphics/cam/Frame;->mN:F

    return v0
.end method

.method public getNbb()F
    .registers 2

    iget v0, p0, Lcom/android/internal/graphics/cam/Frame;->mNbb:F

    return v0
.end method

.method getNc()F
    .registers 2

    iget v0, p0, Lcom/android/internal/graphics/cam/Frame;->mNc:F

    return v0
.end method

.method getNcb()F
    .registers 2

    iget v0, p0, Lcom/android/internal/graphics/cam/Frame;->mNcb:F

    return v0
.end method

.method public getRgbD()[F
    .registers 2

    iget-object v0, p0, Lcom/android/internal/graphics/cam/Frame;->mRgbD:[F

    return-object v0
.end method

.method getZ()F
    .registers 2

    iget v0, p0, Lcom/android/internal/graphics/cam/Frame;->mZ:F

    return v0
.end method
