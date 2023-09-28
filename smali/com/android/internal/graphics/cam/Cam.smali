# classes4.dex

.class public Lcom/android/internal/graphics/cam/Cam;
.super Ljava/lang/Object;


# static fields
.field private static final CHROMA_SEARCH_ENDPOINT:F = 0.4f

.field private static final DE_MAX:F = 1.0f

.field private static final DL_MAX:F = 0.2f

.field private static final LIGHTNESS_SEARCH_ENDPOINT:F = 0.01f


# instance fields
.field private final mAstar:F

.field private final mBstar:F

.field private final mChroma:F

.field private final mHue:F

.field private final mJ:F

.field private final mJstar:F

.field private final mM:F

.field private final mQ:F

.field private final mS:F


# direct methods
.method constructor <init>(FFFFFFFFF)V
    .registers 10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/internal/graphics/cam/Cam;->mHue:F

    iput p2, p0, Lcom/android/internal/graphics/cam/Cam;->mChroma:F

    iput p3, p0, Lcom/android/internal/graphics/cam/Cam;->mJ:F

    iput p4, p0, Lcom/android/internal/graphics/cam/Cam;->mQ:F

    iput p5, p0, Lcom/android/internal/graphics/cam/Cam;->mM:F

    iput p6, p0, Lcom/android/internal/graphics/cam/Cam;->mS:F

    iput p7, p0, Lcom/android/internal/graphics/cam/Cam;->mJstar:F

    iput p8, p0, Lcom/android/internal/graphics/cam/Cam;->mAstar:F

    iput p9, p0, Lcom/android/internal/graphics/cam/Cam;->mBstar:F

    return-void
.end method

.method private static findCamByJ(FFF)Lcom/android/internal/graphics/cam/Cam;
    .registers 16

    const/4 v0, 0x0

    const/high16 v1, 0x42c80000  # 100.0f

    const/4 v2, 0x0

    const/high16 v3, 0x447a0000  # 1000.0f

    const/high16 v4, 0x447a0000  # 1000.0f

    const/4 v5, 0x0

    :goto_9
    sub-float v6, v0, v1

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    const v7, 0x3c23d70a  # 0.01f

    cmpl-float v6, v6, v7

    if-lez v6, :cond_66

    sub-float v6, v1, v0

    const/high16 v7, 0x40000000  # 2.0f

    div-float/2addr v6, v7

    add-float v2, v0, v6

    invoke-static {v2, p1, p0}, Lcom/android/internal/graphics/cam/Cam;->fromJch(FFF)Lcom/android/internal/graphics/cam/Cam;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/graphics/cam/Cam;->viewedInSrgb()I

    move-result v7

    invoke-static {v7}, Lcom/android/internal/graphics/cam/CamUtils;->lstarFromInt(I)F

    move-result v8

    sub-float v9, p2, v8

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    const v10, 0x3e4ccccd  # 0.2f

    cmpg-float v10, v9, v10

    if-gez v10, :cond_54

    invoke-static {v7}, Lcom/android/internal/graphics/cam/Cam;->fromInt(I)Lcom/android/internal/graphics/cam/Cam;

    move-result-object v10

    nop

    invoke-virtual {v10}, Lcom/android/internal/graphics/cam/Cam;->getJ()F

    move-result v11

    invoke-virtual {v10}, Lcom/android/internal/graphics/cam/Cam;->getChroma()F

    move-result v12

    invoke-static {v11, v12, p0}, Lcom/android/internal/graphics/cam/Cam;->fromJch(FFF)Lcom/android/internal/graphics/cam/Cam;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/android/internal/graphics/cam/Cam;->distance(Lcom/android/internal/graphics/cam/Cam;)F

    move-result v11

    const/high16 v12, 0x3f800000  # 1.0f

    cmpg-float v12, v11, v12

    if-gtz v12, :cond_54

    move v3, v9

    move v4, v11

    move-object v5, v10

    :cond_54
    const/4 v10, 0x0

    cmpl-float v11, v3, v10

    if-nez v11, :cond_5e

    cmpl-float v10, v4, v10

    if-nez v10, :cond_5e

    goto :goto_66

    :cond_5e
    cmpg-float v10, v8, p2

    if-gez v10, :cond_64

    move v0, v2

    goto :goto_65

    :cond_64
    move v1, v2

    :goto_65
    goto :goto_9

    :cond_66
    :goto_66
    return-object v5
.end method

.method public static fromInt(I)Lcom/android/internal/graphics/cam/Cam;
    .registers 2

    sget-object v0, Lcom/android/internal/graphics/cam/Frame;->DEFAULT:Lcom/android/internal/graphics/cam/Frame;

    invoke-static {p0, v0}, Lcom/android/internal/graphics/cam/Cam;->fromIntInFrame(ILcom/android/internal/graphics/cam/Frame;)Lcom/android/internal/graphics/cam/Cam;

    move-result-object v0

    return-object v0
.end method

.method public static fromIntInFrame(ILcom/android/internal/graphics/cam/Frame;)Lcom/android/internal/graphics/cam/Cam;
    .registers 50

    invoke-static/range {p0 .. p0}, Lcom/android/internal/graphics/cam/CamUtils;->xyzFromInt(I)[F

    move-result-object v0

    sget-object v1, Lcom/android/internal/graphics/cam/CamUtils;->XYZ_TO_CAM16RGB:[[F

    const/4 v2, 0x0

    aget v3, v0, v2

    aget-object v4, v1, v2

    aget v4, v4, v2

    mul-float/2addr v3, v4

    const/4 v4, 0x1

    aget v5, v0, v4

    aget-object v6, v1, v2

    aget v6, v6, v4

    mul-float/2addr v5, v6

    add-float/2addr v3, v5

    const/4 v5, 0x2

    aget v6, v0, v5

    aget-object v7, v1, v2

    aget v7, v7, v5

    mul-float/2addr v6, v7

    add-float/2addr v3, v6

    aget v6, v0, v2

    aget-object v7, v1, v4

    aget v7, v7, v2

    mul-float/2addr v6, v7

    aget v7, v0, v4

    aget-object v8, v1, v4

    aget v8, v8, v4

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    aget v7, v0, v5

    aget-object v8, v1, v4

    aget v8, v8, v5

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    aget v7, v0, v2

    aget-object v8, v1, v5

    aget v8, v8, v2

    mul-float/2addr v7, v8

    aget v8, v0, v4

    aget-object v9, v1, v5

    aget v9, v9, v4

    mul-float/2addr v8, v9

    add-float/2addr v7, v8

    aget v8, v0, v5

    aget-object v9, v1, v5

    aget v9, v9, v5

    mul-float/2addr v8, v9

    add-float/2addr v7, v8

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/graphics/cam/Frame;->getRgbD()[F

    move-result-object v8

    aget v2, v8, v2

    mul-float/2addr v2, v3

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/graphics/cam/Frame;->getRgbD()[F

    move-result-object v8

    aget v4, v8, v4

    mul-float/2addr v4, v6

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/graphics/cam/Frame;->getRgbD()[F

    move-result-object v8

    aget v5, v8, v5

    mul-float/2addr v5, v7

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/graphics/cam/Frame;->getFl()F

    move-result v8

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v9

    mul-float/2addr v8, v9

    float-to-double v8, v8

    const-wide/high16 v10, 0x4059000000000000L  # 100.0

    div-double/2addr v8, v10

    const-wide v12, 0x3fdae147ae147ae1L  # 0.42

    invoke-static {v8, v9, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    double-to-float v8, v8

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/graphics/cam/Frame;->getFl()F

    move-result v9

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v14

    mul-float/2addr v9, v14

    float-to-double v14, v9

    div-double/2addr v14, v10

    invoke-static {v14, v15, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v14

    double-to-float v9, v14

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/graphics/cam/Frame;->getFl()F

    move-result v14

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v15

    mul-float/2addr v14, v15

    float-to-double v14, v14

    div-double/2addr v14, v10

    invoke-static {v14, v15, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v12

    double-to-float v12, v12

    invoke-static {v2}, Ljava/lang/Math;->signum(F)F

    move-result v13

    const/high16 v14, 0x43c80000  # 400.0f

    mul-float/2addr v13, v14

    mul-float/2addr v13, v8

    const v15, 0x41d90a3d  # 27.13f

    add-float v16, v8, v15

    div-float v13, v13, v16

    invoke-static {v4}, Ljava/lang/Math;->signum(F)F

    move-result v16

    mul-float v16, v16, v14

    mul-float v16, v16, v9

    add-float v17, v9, v15

    div-float v10, v16, v17

    invoke-static {v5}, Ljava/lang/Math;->signum(F)F

    move-result v11

    mul-float/2addr v11, v14

    mul-float/2addr v11, v12

    add-float/2addr v15, v12

    div-float/2addr v11, v15

    float-to-double v14, v13

    const-wide/high16 v16, 0x4026000000000000L  # 11.0

    mul-double v14, v14, v16

    move-object/from16 v16, v0

    move-object/from16 v17, v1

    float-to-double v0, v10

    const-wide/high16 v20, -0x3fd8000000000000L  # -12.0

    mul-double v0, v0, v20

    add-double/2addr v14, v0

    float-to-double v0, v11

    add-double/2addr v14, v0

    double-to-float v0, v14

    const/high16 v1, 0x41300000  # 11.0f

    div-float/2addr v0, v1

    add-float v1, v13, v10

    float-to-double v14, v1

    move/from16 v20, v2

    float-to-double v1, v11

    const-wide/high16 v21, 0x4000000000000000L  # 2.0

    mul-double v1, v1, v21

    sub-double/2addr v14, v1

    double-to-float v1, v14

    const/high16 v2, 0x41100000  # 9.0f

    div-float/2addr v1, v2

    const/high16 v2, 0x41a00000  # 20.0f

    mul-float v14, v13, v2

    mul-float v15, v10, v2

    add-float/2addr v14, v15

    const/high16 v15, 0x41a80000  # 21.0f

    mul-float/2addr v15, v11

    add-float/2addr v14, v15

    div-float/2addr v14, v2

    const/high16 v15, 0x42200000  # 40.0f

    mul-float/2addr v15, v13

    mul-float v23, v10, v2

    add-float v15, v15, v23

    add-float/2addr v15, v11

    div-float/2addr v15, v2

    move/from16 v23, v3

    float-to-double v2, v1

    move/from16 v24, v4

    move/from16 v25, v5

    float-to-double v4, v0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v2

    double-to-float v2, v2

    const/high16 v3, 0x43340000  # 180.0f

    mul-float v4, v2, v3

    const v5, 0x40490fdb  # (float)Math.PI

    div-float/2addr v4, v5

    const/16 v26, 0x0

    cmpg-float v26, v4, v26

    const/high16 v27, 0x43b40000  # 360.0f

    if-gez v26, :cond_116

    add-float v26, v4, v27

    goto :goto_11f

    :cond_116
    cmpl-float v26, v4, v27

    if-ltz v26, :cond_11d

    sub-float v26, v4, v27

    goto :goto_11f

    :cond_11d
    move/from16 v26, v4

    :goto_11f
    move/from16 v38, v26

    move/from16 v26, v2

    move/from16 v2, v38

    mul-float v38, v2, v5

    div-float v3, v38, v3

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/graphics/cam/Frame;->getNbb()F

    move-result v5

    mul-float/2addr v5, v15

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/graphics/cam/Frame;->getAw()F

    move-result v28

    move/from16 v38, v4

    div-float v4, v5, v28

    move/from16 v39, v5

    float-to-double v4, v4

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/graphics/cam/Frame;->getC()F

    move-result v28

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/graphics/cam/Frame;->getZ()F

    move-result v29

    move/from16 v40, v6

    mul-float v6, v28, v29

    move/from16 v41, v7

    float-to-double v6, v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    double-to-float v4, v4

    const/high16 v5, 0x42c80000  # 100.0f

    mul-float/2addr v4, v5

    nop

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/graphics/cam/Frame;->getC()F

    move-result v6

    const/high16 v7, 0x40800000  # 4.0f

    div-float v6, v7, v6

    div-float v5, v4, v5

    move/from16 v42, v8

    float-to-double v7, v5

    invoke-static {v7, v8}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v7

    double-to-float v5, v7

    mul-float/2addr v6, v5

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/graphics/cam/Frame;->getAw()F

    move-result v5

    const/high16 v7, 0x40800000  # 4.0f

    add-float/2addr v5, v7

    mul-float/2addr v6, v5

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/graphics/cam/Frame;->getFlRoot()F

    move-result v5

    mul-float/2addr v6, v5

    float-to-double v7, v2

    const-wide v29, 0x403423d70a3d70a4L  # 20.14

    cmpg-double v5, v7, v29

    if-gez v5, :cond_17e

    add-float v5, v2, v27

    goto :goto_17f

    :cond_17e
    move v5, v2

    :goto_17f
    float-to-double v7, v5

    const-wide v29, 0x400921fb54442d18L  # Math.PI

    mul-double v7, v7, v29

    const-wide v29, 0x4066800000000000L  # 180.0

    div-double v7, v7, v29

    add-double v7, v7, v21

    invoke-static {v7, v8}, Ljava/lang/Math;->cos(D)D

    move-result-wide v7

    const-wide v21, 0x400e666666666666L  # 3.8

    add-double v7, v7, v21

    double-to-float v7, v7

    const/high16 v8, 0x3e800000  # 0.25f

    mul-float/2addr v7, v8

    const v8, 0x45706276

    mul-float/2addr v8, v7

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/graphics/cam/Frame;->getNc()F

    move-result v21

    mul-float v8, v8, v21

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/graphics/cam/Frame;->getNcb()F

    move-result v21

    mul-float v8, v8, v21

    mul-float v21, v0, v0

    mul-float v22, v1, v1

    move/from16 v27, v0

    add-float v0, v21, v22

    move/from16 v21, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    mul-float/2addr v0, v8

    const v1, 0x3e9c28f6  # 0.305f

    add-float/2addr v1, v14

    div-float/2addr v0, v1

    move v1, v7

    move/from16 v22, v8

    float-to-double v7, v0

    move/from16 v43, v0

    move/from16 v44, v1

    const-wide v0, 0x3feccccccccccccdL  # 0.9

    invoke-static {v7, v8, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-float v0, v0

    const-wide v7, 0x3fd28f5c28f5c28fL  # 0.29

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/graphics/cam/Frame;->getN()F

    move-result v1

    move/from16 v45, v9

    move/from16 v46, v10

    float-to-double v9, v1

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v7

    const-wide v9, 0x3ffa3d70a3d70a3dL  # 1.64

    sub-double v7, v9, v7

    const-wide v9, 0x3fe75c28f5c28f5cL  # 0.73

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v7

    double-to-float v1, v7

    mul-float/2addr v0, v1

    float-to-double v7, v4

    const-wide/high16 v9, 0x4059000000000000L  # 100.0

    div-double/2addr v7, v9

    invoke-static {v7, v8}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v7

    double-to-float v1, v7

    mul-float/2addr v1, v0

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/graphics/cam/Frame;->getFlRoot()F

    move-result v7

    mul-float/2addr v7, v1

    const/high16 v8, 0x42480000  # 50.0f

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/graphics/cam/Frame;->getC()F

    move-result v9

    mul-float/2addr v9, v0

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/graphics/cam/Frame;->getAw()F

    move-result v10

    const/high16 v18, 0x40800000  # 4.0f

    add-float v10, v10, v18

    div-float/2addr v9, v10

    float-to-double v9, v9

    invoke-static {v9, v10}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v9

    double-to-float v9, v9

    mul-float/2addr v9, v8

    const v8, 0x3fd9999a  # 1.7f

    mul-float/2addr v8, v4

    const v10, 0x3be56042  # 0.007f

    mul-float/2addr v10, v4

    const/high16 v18, 0x3f800000  # 1.0f

    add-float v10, v10, v18

    div-float/2addr v8, v10

    const v19, 0x3cbac711  # 0.0228f

    mul-float v19, v19, v7

    add-float v10, v19, v18

    move/from16 v18, v11

    float-to-double v10, v10

    invoke-static {v10, v11}, Ljava/lang/Math;->log(D)D

    move-result-wide v10

    double-to-float v10, v10

    const v11, 0x422f7048

    mul-float/2addr v10, v11

    move/from16 v19, v12

    float-to-double v11, v3

    invoke-static {v11, v12}, Ljava/lang/Math;->cos(D)D

    move-result-wide v11

    double-to-float v11, v11

    mul-float/2addr v11, v10

    move/from16 v47, v13

    float-to-double v12, v3

    invoke-static {v12, v13}, Ljava/lang/Math;->sin(D)D

    move-result-wide v12

    double-to-float v12, v12

    mul-float/2addr v12, v10

    new-instance v13, Lcom/android/internal/graphics/cam/Cam;

    move-object/from16 v28, v13

    move/from16 v29, v2

    move/from16 v30, v1

    move/from16 v31, v4

    move/from16 v32, v6

    move/from16 v33, v7

    move/from16 v34, v9

    move/from16 v35, v8

    move/from16 v36, v11

    move/from16 v37, v12

    invoke-direct/range {v28 .. v37}, Lcom/android/internal/graphics/cam/Cam;-><init>(FFFFFFFFF)V

    return-object v13
.end method

.method private static fromJch(FFF)Lcom/android/internal/graphics/cam/Cam;
    .registers 4

    sget-object v0, Lcom/android/internal/graphics/cam/Frame;->DEFAULT:Lcom/android/internal/graphics/cam/Frame;

    invoke-static {p0, p1, p2, v0}, Lcom/android/internal/graphics/cam/Cam;->fromJchInFrame(FFFLcom/android/internal/graphics/cam/Frame;)Lcom/android/internal/graphics/cam/Cam;

    move-result-object v0

    return-object v0
.end method

.method private static fromJchInFrame(FFFLcom/android/internal/graphics/cam/Frame;)Lcom/android/internal/graphics/cam/Cam;
    .registers 25

    move/from16 v10, p0

    invoke-virtual/range {p3 .. p3}, Lcom/android/internal/graphics/cam/Frame;->getC()F

    move-result v0

    const/high16 v1, 0x40800000  # 4.0f

    div-float v0, v1, v0

    float-to-double v2, v10

    const-wide/high16 v4, 0x4059000000000000L  # 100.0

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v2, v2

    mul-float/2addr v0, v2

    invoke-virtual/range {p3 .. p3}, Lcom/android/internal/graphics/cam/Frame;->getAw()F

    move-result v2

    add-float/2addr v2, v1

    mul-float/2addr v0, v2

    invoke-virtual/range {p3 .. p3}, Lcom/android/internal/graphics/cam/Frame;->getFlRoot()F

    move-result v2

    mul-float v11, v0, v2

    invoke-virtual/range {p3 .. p3}, Lcom/android/internal/graphics/cam/Frame;->getFlRoot()F

    move-result v0

    mul-float v12, p1, v0

    float-to-double v2, v10

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v0, v2

    div-float v13, p1, v0

    invoke-virtual/range {p3 .. p3}, Lcom/android/internal/graphics/cam/Frame;->getC()F

    move-result v0

    mul-float/2addr v0, v13

    invoke-virtual/range {p3 .. p3}, Lcom/android/internal/graphics/cam/Frame;->getAw()F

    move-result v2

    add-float/2addr v2, v1

    div-float/2addr v0, v2

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    const/high16 v1, 0x42480000  # 50.0f

    mul-float v14, v0, v1

    const v0, 0x40490fdb  # (float)Math.PI

    mul-float v0, v0, p2

    const/high16 v1, 0x43340000  # 180.0f

    div-float v15, v0, v1

    const v0, 0x3fd9999a  # 1.7f

    mul-float/2addr v0, v10

    const v1, 0x3be56042  # 0.007f

    mul-float/2addr v1, v10

    const/high16 v2, 0x3f800000  # 1.0f

    add-float/2addr v1, v2

    div-float v16, v0, v1

    float-to-double v0, v12

    const-wide v2, 0x3f9758e219652bd4L  # 0.0228

    mul-double/2addr v0, v2

    const-wide/high16 v2, 0x3ff0000000000000L  # 1.0

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    double-to-float v0, v0

    const v1, 0x422f7048

    mul-float v17, v0, v1

    float-to-double v0, v15

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    double-to-float v0, v0

    mul-float v18, v17, v0

    float-to-double v0, v15

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float v0, v0

    mul-float v19, v17, v0

    new-instance v20, Lcom/android/internal/graphics/cam/Cam;

    move-object/from16 v0, v20

    move/from16 v1, p2

    move/from16 v2, p1

    move/from16 v3, p0

    move v4, v11

    move v5, v12

    move v6, v14

    move/from16 v7, v16

    move/from16 v8, v18

    move/from16 v9, v19

    invoke-direct/range {v0 .. v9}, Lcom/android/internal/graphics/cam/Cam;-><init>(FFFFFFFFF)V

    return-object v20
.end method

.method public static getInt(FFF)I
    .registers 4

    sget-object v0, Lcom/android/internal/graphics/cam/Frame;->DEFAULT:Lcom/android/internal/graphics/cam/Frame;

    invoke-static {p0, p1, p2, v0}, Lcom/android/internal/graphics/cam/Cam;->getInt(FFFLcom/android/internal/graphics/cam/Frame;)I

    move-result v0

    return v0
.end method

.method public static getInt(FFFLcom/android/internal/graphics/cam/Frame;)I
    .registers 12

    sget-object v0, Lcom/android/internal/graphics/cam/Frame;->DEFAULT:Lcom/android/internal/graphics/cam/Frame;

    if-ne p3, v0, :cond_c

    float-to-double v1, p0

    float-to-double v3, p1

    float-to-double v5, p2

    invoke-static/range {v1 .. v6}, Lcom/android/internal/graphics/cam/HctSolver;->solveToInt(DDD)I

    move-result v0

    return v0

    :cond_c
    float-to-double v0, p1

    const-wide/high16 v2, 0x3ff0000000000000L  # 1.0

    cmpg-double v0, v0, v2

    if-ltz v0, :cond_77

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-double v0, v0

    const-wide/16 v2, 0x0

    cmpg-double v0, v0, v2

    if-lez v0, :cond_77

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-double v0, v0

    const-wide/high16 v2, 0x4059000000000000L  # 100.0

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_2a

    goto :goto_77

    :cond_2a
    const/4 v0, 0x0

    cmpg-float v1, p0, v0

    if-gez v1, :cond_30

    goto :goto_36

    :cond_30
    const/high16 v0, 0x43b40000  # 360.0f

    invoke-static {v0, p0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    :goto_36
    move p0, v0

    move v0, p1

    move v1, p1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    :goto_3c
    sub-float v5, v2, v0

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    const v6, 0x3ecccccd  # 0.4f

    cmpl-float v5, v5, v6

    if-ltz v5, :cond_6b

    invoke-static {p0, v1, p2}, Lcom/android/internal/graphics/cam/Cam;->findCamByJ(FFF)Lcom/android/internal/graphics/cam/Cam;

    move-result-object v5

    const/high16 v6, 0x40000000  # 2.0f

    if-eqz v3, :cond_5f

    if-eqz v5, :cond_58

    invoke-virtual {v5, p3}, Lcom/android/internal/graphics/cam/Cam;->viewed(Lcom/android/internal/graphics/cam/Frame;)I

    move-result v6

    return v6

    :cond_58
    const/4 v3, 0x0

    sub-float v7, v0, v2

    div-float/2addr v7, v6

    add-float v1, v2, v7

    goto :goto_3c

    :cond_5f
    if-nez v5, :cond_63

    move v0, v1

    goto :goto_65

    :cond_63
    move-object v4, v5

    move v2, v1

    :goto_65
    sub-float v7, v0, v2

    div-float/2addr v7, v6

    add-float v1, v2, v7

    goto :goto_3c

    :cond_6b
    if-nez v4, :cond_72

    invoke-static {p2}, Lcom/android/internal/graphics/cam/CamUtils;->intFromLstar(F)I

    move-result v5

    return v5

    :cond_72
    invoke-virtual {v4, p3}, Lcom/android/internal/graphics/cam/Cam;->viewed(Lcom/android/internal/graphics/cam/Frame;)I

    move-result v5

    return v5

    :cond_77
    :goto_77
    invoke-static {p2}, Lcom/android/internal/graphics/cam/CamUtils;->intFromLstar(F)I

    move-result v0

    return v0
.end method


# virtual methods
.method public distance(Lcom/android/internal/graphics/cam/Cam;)F
    .registers 11

    invoke-virtual {p0}, Lcom/android/internal/graphics/cam/Cam;->getJstar()F

    move-result v0

    invoke-virtual {p1}, Lcom/android/internal/graphics/cam/Cam;->getJstar()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-virtual {p0}, Lcom/android/internal/graphics/cam/Cam;->getAstar()F

    move-result v1

    invoke-virtual {p1}, Lcom/android/internal/graphics/cam/Cam;->getAstar()F

    move-result v2

    sub-float/2addr v1, v2

    invoke-virtual {p0}, Lcom/android/internal/graphics/cam/Cam;->getBstar()F

    move-result v2

    invoke-virtual {p1}, Lcom/android/internal/graphics/cam/Cam;->getBstar()F

    move-result v3

    sub-float/2addr v2, v3

    mul-float v3, v0, v0

    mul-float v4, v1, v1

    add-float/2addr v3, v4

    mul-float v4, v2, v2

    add-float/2addr v3, v4

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    const-wide v5, 0x3fe428f5c28f5c29L  # 0.63

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    const-wide v7, 0x3ff68f5c28f5c28fL  # 1.41

    mul-double/2addr v5, v7

    double-to-float v7, v5

    return v7
.end method

.method public getAstar()F
    .registers 2

    iget v0, p0, Lcom/android/internal/graphics/cam/Cam;->mAstar:F

    return v0
.end method

.method public getBstar()F
    .registers 2

    iget v0, p0, Lcom/android/internal/graphics/cam/Cam;->mBstar:F

    return v0
.end method

.method public getChroma()F
    .registers 2

    iget v0, p0, Lcom/android/internal/graphics/cam/Cam;->mChroma:F

    return v0
.end method

.method public getHue()F
    .registers 2

    iget v0, p0, Lcom/android/internal/graphics/cam/Cam;->mHue:F

    return v0
.end method

.method public getJ()F
    .registers 2

    iget v0, p0, Lcom/android/internal/graphics/cam/Cam;->mJ:F

    return v0
.end method

.method public getJstar()F
    .registers 2

    iget v0, p0, Lcom/android/internal/graphics/cam/Cam;->mJstar:F

    return v0
.end method

.method public getM()F
    .registers 2

    iget v0, p0, Lcom/android/internal/graphics/cam/Cam;->mM:F

    return v0
.end method

.method public getQ()F
    .registers 2

    iget v0, p0, Lcom/android/internal/graphics/cam/Cam;->mQ:F

    return v0
.end method

.method public getS()F
    .registers 2

    iget v0, p0, Lcom/android/internal/graphics/cam/Cam;->mS:F

    return v0
.end method

.method public viewed(Lcom/android/internal/graphics/cam/Frame;)I
    .registers 42

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/graphics/cam/Cam;->getChroma()F

    move-result v0

    float-to-double v0, v0

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    const-wide/high16 v4, 0x4059000000000000L  # 100.0

    if-eqz v0, :cond_28

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/graphics/cam/Cam;->getJ()F

    move-result v0

    float-to-double v0, v0

    cmpl-double v0, v0, v2

    if-nez v0, :cond_17

    goto :goto_28

    :cond_17
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/graphics/cam/Cam;->getChroma()F

    move-result v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/graphics/cam/Cam;->getJ()F

    move-result v1

    float-to-double v6, v1

    div-double/2addr v6, v4

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    double-to-float v1, v6

    div-float/2addr v0, v1

    goto :goto_29

    :cond_28
    :goto_28
    const/4 v0, 0x0

    :goto_29
    nop

    float-to-double v6, v0

    const-wide v8, 0x3ffa3d70a3d70a3dL  # 1.64

    const-wide v10, 0x3fd28f5c28f5c28fL  # 0.29

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/graphics/cam/Frame;->getN()F

    move-result v1

    float-to-double v12, v1

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v10

    sub-double/2addr v8, v10

    const-wide v10, 0x3fe75c28f5c28f5cL  # 0.73

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    div-double/2addr v6, v8

    const-wide v8, 0x3ff1c71c71c71c72L  # 1.1111111111111112

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    double-to-float v1, v6

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/graphics/cam/Cam;->getHue()F

    move-result v6

    const v7, 0x40490fdb  # (float)Math.PI

    mul-float/2addr v6, v7

    const/high16 v7, 0x43340000  # 180.0f

    div-float/2addr v6, v7

    const/high16 v7, 0x3e800000  # 0.25f

    float-to-double v8, v6

    const-wide/high16 v10, 0x4000000000000000L  # 2.0

    add-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    const-wide v10, 0x400e666666666666L  # 3.8

    add-double/2addr v8, v10

    double-to-float v8, v8

    mul-float/2addr v8, v7

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/graphics/cam/Frame;->getAw()F

    move-result v7

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/graphics/cam/Cam;->getJ()F

    move-result v9

    float-to-double v9, v9

    div-double/2addr v9, v4

    const-wide/high16 v4, 0x3ff0000000000000L  # 1.0

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/graphics/cam/Frame;->getC()F

    move-result v11

    float-to-double v11, v11

    div-double/2addr v4, v11

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/graphics/cam/Frame;->getZ()F

    move-result v11

    float-to-double v11, v11

    div-double/2addr v4, v11

    invoke-static {v9, v10, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    double-to-float v4, v4

    mul-float/2addr v7, v4

    const v4, 0x45706276

    mul-float/2addr v4, v8

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/graphics/cam/Frame;->getNc()F

    move-result v5

    mul-float/2addr v4, v5

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/graphics/cam/Frame;->getNcb()F

    move-result v5

    mul-float/2addr v4, v5

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/graphics/cam/Frame;->getNbb()F

    move-result v5

    div-float v5, v7, v5

    float-to-double v9, v6

    invoke-static {v9, v10}, Ljava/lang/Math;->sin(D)D

    move-result-wide v9

    double-to-float v9, v9

    float-to-double v10, v6

    invoke-static {v10, v11}, Ljava/lang/Math;->cos(D)D

    move-result-wide v10

    double-to-float v10, v10

    const v11, 0x3e9c28f6  # 0.305f

    add-float/2addr v11, v5

    const/high16 v12, 0x41b80000  # 23.0f

    mul-float/2addr v11, v12

    mul-float/2addr v11, v1

    mul-float/2addr v12, v4

    const/high16 v13, 0x41300000  # 11.0f

    mul-float/2addr v13, v1

    mul-float/2addr v13, v10

    add-float/2addr v12, v13

    const/high16 v13, 0x42d80000  # 108.0f

    mul-float/2addr v13, v1

    mul-float/2addr v13, v9

    add-float/2addr v12, v13

    div-float/2addr v11, v12

    mul-float v12, v11, v10

    mul-float v13, v11, v9

    const/high16 v14, 0x43e60000  # 460.0f

    mul-float v15, v5, v14

    const v16, 0x43e18000  # 451.0f

    mul-float v16, v16, v12

    add-float v15, v15, v16

    const/high16 v16, 0x43900000  # 288.0f

    mul-float v16, v16, v13

    add-float v15, v15, v16

    const v16, 0x44af6000  # 1403.0f

    div-float v15, v15, v16

    mul-float v17, v5, v14

    const v18, 0x445ec000  # 891.0f

    mul-float v18, v18, v12

    sub-float v17, v17, v18

    const v18, 0x43828000  # 261.0f

    mul-float v18, v18, v13

    sub-float v17, v17, v18

    div-float v17, v17, v16

    mul-float/2addr v14, v5

    const/high16 v18, 0x435c0000  # 220.0f

    mul-float v18, v18, v12

    sub-float v14, v14, v18

    const v18, 0x45c4e000  # 6300.0f

    mul-float v18, v18, v13

    sub-float v14, v14, v18

    div-float v14, v14, v16

    invoke-static {v15}, Ljava/lang/Math;->abs(F)F

    move-result v2

    float-to-double v2, v2

    const-wide v20, 0x403b2147ae147ae1L  # 27.13

    mul-double v2, v2, v20

    move/from16 v16, v0

    invoke-static {v15}, Ljava/lang/Math;->abs(F)F

    move-result v0

    move/from16 v22, v1

    float-to-double v0, v0

    const-wide/high16 v23, 0x4079000000000000L  # 400.0

    sub-double v0, v23, v0

    div-double/2addr v2, v0

    const-wide/16 v0, 0x0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    double-to-float v0, v2

    invoke-static {v15}, Ljava/lang/Math;->signum(F)F

    move-result v1

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/graphics/cam/Frame;->getFl()F

    move-result v2

    const/high16 v3, 0x42c80000  # 100.0f

    div-float v2, v3, v2

    mul-float/2addr v1, v2

    move v2, v4

    float-to-double v3, v0

    move/from16 v27, v5

    move/from16 v26, v6

    const-wide v5, 0x40030c30c30c30c3L  # 2.380952380952381

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    double-to-float v3, v3

    mul-float/2addr v1, v3

    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->abs(F)F

    move-result v3

    float-to-double v3, v3

    mul-double v3, v3, v20

    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->abs(F)F

    move-result v5

    float-to-double v5, v5

    sub-double v5, v23, v5

    div-double/2addr v3, v5

    const-wide/16 v5, 0x0

    invoke-static {v5, v6, v3, v4}, Ljava/lang/Math;->max(DD)D

    move-result-wide v3

    double-to-float v3, v3

    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->signum(F)F

    move-result v4

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/graphics/cam/Frame;->getFl()F

    move-result v5

    const/high16 v6, 0x42c80000  # 100.0f

    div-float v5, v6, v5

    mul-float/2addr v4, v5

    float-to-double v5, v3

    move/from16 v30, v2

    move/from16 v31, v3

    const-wide v2, 0x40030c30c30c30c3L  # 2.380952380952381

    invoke-static {v5, v6, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    double-to-float v2, v5

    mul-float/2addr v4, v2

    invoke-static {v14}, Ljava/lang/Math;->abs(F)F

    move-result v2

    float-to-double v2, v2

    mul-double v2, v2, v20

    invoke-static {v14}, Ljava/lang/Math;->abs(F)F

    move-result v5

    float-to-double v5, v5

    sub-double v23, v23, v5

    div-double v2, v2, v23

    const-wide/16 v5, 0x0

    invoke-static {v5, v6, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    double-to-float v2, v2

    invoke-static {v14}, Ljava/lang/Math;->signum(F)F

    move-result v3

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/graphics/cam/Frame;->getFl()F

    move-result v5

    const/high16 v6, 0x42c80000  # 100.0f

    div-float v5, v6, v5

    mul-float/2addr v3, v5

    float-to-double v5, v2

    move/from16 v19, v7

    move/from16 v18, v8

    const-wide v7, 0x40030c30c30c30c3L  # 2.380952380952381

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    double-to-float v5, v5

    mul-float/2addr v3, v5

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/graphics/cam/Frame;->getRgbD()[F

    move-result-object v5

    const/4 v6, 0x0

    aget v5, v5, v6

    div-float v5, v1, v5

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/graphics/cam/Frame;->getRgbD()[F

    move-result-object v7

    const/4 v8, 0x1

    aget v7, v7, v8

    div-float v7, v4, v7

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/graphics/cam/Frame;->getRgbD()[F

    move-result-object v20

    const/16 v21, 0x2

    aget v20, v20, v21

    div-float v20, v3, v20

    sget-object v23, Lcom/android/internal/graphics/cam/CamUtils;->CAM16RGB_TO_XYZ:[[F

    aget-object v24, v23, v6

    aget v24, v24, v6

    mul-float v24, v24, v5

    aget-object v25, v23, v6

    aget v25, v25, v8

    mul-float v25, v25, v7

    add-float v24, v24, v25

    aget-object v25, v23, v6

    aget v25, v25, v21

    mul-float v25, v25, v20

    add-float v6, v24, v25

    aget-object v24, v23, v8

    const/16 v25, 0x0

    aget v24, v24, v25

    mul-float v24, v24, v5

    aget-object v25, v23, v8

    aget v25, v25, v8

    mul-float v25, v25, v7

    add-float v24, v24, v25

    aget-object v25, v23, v8

    aget v25, v25, v21

    mul-float v25, v25, v20

    add-float v8, v24, v25

    aget-object v24, v23, v21

    const/16 v25, 0x0

    aget v24, v24, v25

    mul-float v24, v24, v5

    aget-object v25, v23, v21

    const/16 v28, 0x1

    aget v25, v25, v28

    mul-float v25, v25, v7

    add-float v24, v24, v25

    aget-object v25, v23, v21

    aget v21, v25, v21

    mul-float v21, v21, v20

    move/from16 v25, v0

    add-float v0, v24, v21

    move/from16 v21, v1

    move/from16 v24, v2

    float-to-double v1, v6

    move/from16 v29, v3

    move/from16 v28, v4

    float-to-double v3, v8

    move/from16 v38, v5

    move/from16 v39, v6

    float-to-double v5, v0

    move-wide/from16 v32, v1

    move-wide/from16 v34, v3

    move-wide/from16 v36, v5

    invoke-static/range {v32 .. v37}, Lcom/android/internal/graphics/ColorUtils;->XYZToColor(DDD)I

    move-result v1

    return v1
.end method

.method public viewedInSrgb()I
    .registers 2

    sget-object v0, Lcom/android/internal/graphics/cam/Frame;->DEFAULT:Lcom/android/internal/graphics/cam/Frame;

    invoke-virtual {p0, v0}, Lcom/android/internal/graphics/cam/Cam;->viewed(Lcom/android/internal/graphics/cam/Frame;)I

    move-result v0

    return v0
.end method
