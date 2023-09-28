# classes4.dex

.class public final Lcom/android/internal/graphics/cam/CamUtils;
.super Ljava/lang/Object;


# static fields
.field static final CAM16RGB_TO_XYZ:[[F

.field static final SRGB_TO_XYZ:[[D

.field static final WHITE_POINT_D65:[F

.field static final XYZ_TO_CAM16RGB:[[F

.field static final XYZ_TO_SRGB:[[D


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const/4 v0, 0x3

    new-array v1, v0, [[F

    new-array v2, v0, [F

    fill-array-data v2, :array_70

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-array v2, v0, [F

    fill-array-data v2, :array_7a

    const/4 v4, 0x1

    aput-object v2, v1, v4

    new-array v2, v0, [F

    fill-array-data v2, :array_84

    const/4 v5, 0x2

    aput-object v2, v1, v5

    sput-object v1, Lcom/android/internal/graphics/cam/CamUtils;->XYZ_TO_CAM16RGB:[[F

    new-array v1, v0, [[F

    new-array v2, v0, [F

    fill-array-data v2, :array_8e

    aput-object v2, v1, v3

    new-array v2, v0, [F

    fill-array-data v2, :array_98

    aput-object v2, v1, v4

    new-array v2, v0, [F

    fill-array-data v2, :array_a2

    aput-object v2, v1, v5

    sput-object v1, Lcom/android/internal/graphics/cam/CamUtils;->CAM16RGB_TO_XYZ:[[F

    new-array v1, v0, [F

    fill-array-data v1, :array_ac

    sput-object v1, Lcom/android/internal/graphics/cam/CamUtils;->WHITE_POINT_D65:[F

    new-array v1, v0, [[D

    new-array v2, v0, [D

    fill-array-data v2, :array_b6

    aput-object v2, v1, v3

    new-array v2, v0, [D

    fill-array-data v2, :array_c6

    aput-object v2, v1, v4

    new-array v2, v0, [D

    fill-array-data v2, :array_d6

    aput-object v2, v1, v5

    sput-object v1, Lcom/android/internal/graphics/cam/CamUtils;->SRGB_TO_XYZ:[[D

    new-array v1, v0, [[D

    new-array v2, v0, [D

    fill-array-data v2, :array_e6

    aput-object v2, v1, v3

    new-array v2, v0, [D

    fill-array-data v2, :array_f6

    aput-object v2, v1, v4

    new-array v0, v0, [D

    fill-array-data v0, :array_106

    aput-object v0, v1, v5

    sput-object v1, Lcom/android/internal/graphics/cam/CamUtils;->XYZ_TO_SRGB:[[D

    return-void

    :array_70
    .array-data 4
        0x3ecd759f
        0x3f2671bd
        -0x42ad373b  # -0.051461f
    .end array-data

    :array_7a
    .array-data 4
        -0x417fdcdf
        0x3f9a2a3d
        0x3d3bd167
    .end array-data

    :array_84
    .array-data 4
        -0x44f7c02b  # -0.002079f
        0x3d4881e4
        0x3f740022
    .end array-data

    :array_8e
    .array-data 4
        0x3fee583d
        -0x407e8f35
        0x3e18c46b
    .end array-data

    :array_98
    .array-data 4
        0x3ec669e1
        0x3f1f172e
        -0x43ecf866
    .end array-data

    :array_a2
    .array-data 4
        -0x437e39f7
        -0x42f43b81
        0x3f86653c
    .end array-data

    :array_ac
    .array-data 4
        0x42be1810
        0x42c80000  # 100.0f
        0x42d9c419
    .end array-data

    :array_b6
    .array-data 8
        0x3fda63c2e8477c96L  # 0.41233895
        0x3fd6e341ae4b2c79L  # 0.35762064
        0x3fc71af7273e5d5eL  # 0.18051042
    .end array-data

    :array_c6
    .array-data 8
        0x3fcb367a0f9096bcL  # 0.2126
        0x3fe6e2eb1c432ca5L  # 0.7152
        0x3fb27bb2fec56d5dL  # 0.0722
    .end array-data

    :array_d6
    .array-data 8
        0x3f93c8fde0401c25L  # 0.01932141
        0x3fbe818525c434ceL  # 0.11916382
        0x3fee693974c0c730L  # 0.95034478
    .end array-data

    :array_e6
    .array-data 8
        0x4009ee5750da932bL  # 3.2413774792388685
        -0x400765b9220c7764L  # -1.5376652402851851
        -0x402012c8101da46cL  # -0.49885366846268053
    .end array-data

    :array_f6
    .array-data 8
        -0x4010fcc31912e57cL  # -0.9691452513005321
        0x3ffe03a05a04781dL  # 1.8758853451067872
        0x3fa5481eb1c0d367L  # 0.04156585616912061
    .end array-data

    :array_106
    .array-data 8
        0x3fac7a58f1e3e6efL  # 0.05562093689691305
        -0x4035e4cb650c5ffeL  # -0.20395524564742123
        0x3ff0ea357b841dfcL  # 1.0571799111220335
    .end array-data
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static argbFromLinrgb([D)I
    .registers 5

    const/4 v0, 0x0

    aget-wide v0, p0, v0

    invoke-static {v0, v1}, Lcom/android/internal/graphics/cam/CamUtils;->delinearized(D)I

    move-result v0

    const/4 v1, 0x1

    aget-wide v1, p0, v1

    invoke-static {v1, v2}, Lcom/android/internal/graphics/cam/CamUtils;->delinearized(D)I

    move-result v1

    const/4 v2, 0x2

    aget-wide v2, p0, v2

    invoke-static {v2, v3}, Lcom/android/internal/graphics/cam/CamUtils;->delinearized(D)I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/android/internal/graphics/cam/CamUtils;->argbFromRgb(III)I

    move-result v3

    return v3
.end method

.method public static argbFromLinrgbComponents(DDD)I
    .registers 9

    invoke-static {p0, p1}, Lcom/android/internal/graphics/cam/CamUtils;->delinearized(D)I

    move-result v0

    invoke-static {p2, p3}, Lcom/android/internal/graphics/cam/CamUtils;->delinearized(D)I

    move-result v1

    invoke-static {p4, p5}, Lcom/android/internal/graphics/cam/CamUtils;->delinearized(D)I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/android/internal/graphics/cam/CamUtils;->argbFromRgb(III)I

    move-result v0

    return v0
.end method

.method public static argbFromLstar(D)I
    .registers 31

    const-wide/high16 v0, 0x4030000000000000L  # 16.0

    add-double v0, p0, v0

    const-wide/high16 v2, 0x405d000000000000L  # 116.0

    div-double/2addr v0, v2

    move-wide v2, v0

    move-wide v4, v0

    const-wide v6, 0x408c3a5ed097b426L  # 903.2962962962963

    const-wide v8, 0x3f822354d28f7cd6L  # 0.008856451679035631

    const-wide/high16 v10, 0x4020000000000000L  # 8.0

    cmpl-double v10, p0, v10

    const/4 v11, 0x1

    const/4 v12, 0x0

    if-lez v10, :cond_1d

    move v10, v11

    goto :goto_1e

    :cond_1d
    move v10, v12

    :goto_1e
    if-eqz v10, :cond_24

    mul-double v13, v0, v0

    mul-double/2addr v13, v0

    goto :goto_26

    :cond_24
    div-double v13, p0, v6

    :goto_26
    mul-double v15, v0, v0

    mul-double/2addr v15, v0

    cmpl-double v15, v15, v8

    if-lez v15, :cond_2f

    move v15, v11

    goto :goto_30

    :cond_2f
    move v15, v12

    :goto_30
    if-eqz v15, :cond_37

    mul-double v16, v4, v4

    mul-double v16, v16, v4

    goto :goto_39

    :cond_37
    div-double v16, p0, v6

    :goto_39
    if-eqz v15, :cond_40

    mul-double v18, v2, v2

    mul-double v18, v18, v2

    goto :goto_42

    :cond_40
    div-double v18, p0, v6

    :goto_42
    sget-object v20, Lcom/android/internal/graphics/cam/CamUtils;->WHITE_POINT_D65:[F

    aget v12, v20, v12

    move-wide/from16 v21, v0

    float-to-double v0, v12

    mul-double v23, v16, v0

    aget v0, v20, v11

    float-to-double v0, v0

    mul-double v25, v13, v0

    const/4 v0, 0x2

    aget v0, v20, v0

    float-to-double v0, v0

    mul-double v27, v18, v0

    invoke-static/range {v23 .. v28}, Lcom/android/internal/graphics/cam/CamUtils;->argbFromXyz(DDD)I

    move-result v0

    return v0
.end method

.method public static argbFromRgb(III)I
    .registers 5

    and-int/lit16 v0, p0, 0xff

    shl-int/lit8 v0, v0, 0x10

    const/high16 v1, -0x1000000

    or-int/2addr v0, v1

    and-int/lit16 v1, p1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    and-int/lit16 v1, p2, 0xff

    or-int/2addr v0, v1

    return v0
.end method

.method public static argbFromXyz(DDD)I
    .registers 17

    sget-object v0, Lcom/android/internal/graphics/cam/CamUtils;->XYZ_TO_SRGB:[[D

    const/4 v1, 0x0

    aget-object v2, v0, v1

    aget-wide v2, v2, v1

    mul-double/2addr v2, p0

    aget-object v4, v0, v1

    const/4 v5, 0x1

    aget-wide v6, v4, v5

    mul-double/2addr v6, p2

    add-double/2addr v2, v6

    aget-object v4, v0, v1

    const/4 v6, 0x2

    aget-wide v7, v4, v6

    mul-double/2addr v7, p4

    add-double/2addr v2, v7

    aget-object v4, v0, v5

    aget-wide v7, v4, v1

    mul-double/2addr v7, p0

    aget-object v4, v0, v5

    aget-wide v9, v4, v5

    mul-double/2addr v9, p2

    add-double/2addr v7, v9

    aget-object v4, v0, v5

    aget-wide v9, v4, v6

    mul-double/2addr v9, p4

    add-double/2addr v7, v9

    aget-object v4, v0, v6

    aget-wide v9, v4, v1

    mul-double/2addr v9, p0

    aget-object v1, v0, v6

    aget-wide v4, v1, v5

    mul-double/2addr v4, p2

    add-double/2addr v9, v4

    aget-object v1, v0, v6

    aget-wide v4, v1, v6

    mul-double/2addr v4, p4

    add-double/2addr v9, v4

    invoke-static {v2, v3}, Lcom/android/internal/graphics/cam/CamUtils;->delinearized(D)I

    move-result v1

    invoke-static {v7, v8}, Lcom/android/internal/graphics/cam/CamUtils;->delinearized(D)I

    move-result v4

    invoke-static {v9, v10}, Lcom/android/internal/graphics/cam/CamUtils;->delinearized(D)I

    move-result v5

    invoke-static {v1, v4, v5}, Lcom/android/internal/graphics/cam/CamUtils;->argbFromRgb(III)I

    move-result v6

    return v6
.end method

.method public static clampInt(III)I
    .registers 3

    if-ge p2, p0, :cond_3

    return p0

    :cond_3
    if-le p2, p1, :cond_6

    return p1

    :cond_6
    return p2
.end method

.method public static delinearized(D)I
    .registers 10

    const-wide/high16 v0, 0x4059000000000000L  # 100.0

    div-double v0, p0, v0

    const-wide/16 v2, 0x0

    const-wide v4, 0x3f69a5c37387b719L  # 0.0031308

    cmpg-double v4, v0, v4

    if-gtz v4, :cond_16

    const-wide v4, 0x4029d70a3d70a3d7L  # 12.92

    mul-double/2addr v4, v0

    goto :goto_2c

    :cond_16
    const-wide v4, 0x3ff0e147ae147ae1L  # 1.055

    const-wide v6, 0x3fdaaaaaaaaaaaabL  # 0.4166666666666667

    invoke-static {v0, v1, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    mul-double/2addr v6, v4

    const-wide v4, 0x3fac28f5c28f5c29L  # 0.055

    sub-double v4, v6, v4

    :goto_2c
    const/4 v2, 0x0

    const/16 v3, 0xff

    const-wide v6, 0x406fe00000000000L  # 255.0

    mul-double/2addr v6, v4

    invoke-static {v6, v7}, Ljava/lang/Math;->round(D)J

    move-result-wide v6

    long-to-int v6, v6

    invoke-static {v2, v3, v6}, Lcom/android/internal/graphics/cam/CamUtils;->clampInt(III)I

    move-result v2

    return v2
.end method

.method static intFromLstar(F)I
    .registers 22

    const/high16 v0, 0x3f800000  # 1.0f

    cmpg-float v0, p0, v0

    if-gez v0, :cond_9

    const/high16 v0, -0x1000000

    return v0

    :cond_9
    const/high16 v0, 0x42c60000  # 99.0f

    cmpl-float v0, p0, v0

    if-lez v0, :cond_11

    const/4 v0, -0x1

    return v0

    :cond_11
    const/high16 v0, 0x41800000  # 16.0f

    add-float v1, p0, v0

    const/high16 v2, 0x42e80000  # 116.0f

    div-float/2addr v1, v2

    move v3, v1

    move v4, v1

    const v5, 0x4461d2f7

    const v6, 0x3c111aa7

    const/high16 v7, 0x41000000  # 8.0f

    cmpl-float v7, p0, v7

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-lez v7, :cond_2a

    move v7, v8

    goto :goto_2b

    :cond_2a
    move v7, v9

    :goto_2b
    if-eqz v7, :cond_31

    mul-float v10, v1, v1

    mul-float/2addr v10, v1

    goto :goto_33

    :cond_31
    div-float v10, p0, v5

    :goto_33
    mul-float v11, v1, v1

    mul-float/2addr v11, v1

    cmpl-float v11, v11, v6

    if-lez v11, :cond_3c

    move v11, v8

    goto :goto_3d

    :cond_3c
    move v11, v9

    :goto_3d
    if-eqz v11, :cond_43

    mul-float v12, v4, v4

    mul-float/2addr v12, v4

    goto :goto_47

    :cond_43
    mul-float v12, v4, v2

    sub-float/2addr v12, v0

    div-float/2addr v12, v5

    :goto_47
    if-eqz v11, :cond_4d

    mul-float v0, v3, v3

    mul-float/2addr v0, v3

    goto :goto_51

    :cond_4d
    mul-float/2addr v2, v4

    sub-float/2addr v2, v0

    div-float v0, v2, v5

    :goto_51
    sget-object v2, Lcom/android/internal/graphics/cam/CamUtils;->WHITE_POINT_D65:[F

    aget v9, v2, v9

    mul-float/2addr v9, v12

    float-to-double v13, v9

    aget v8, v2, v8

    mul-float/2addr v8, v10

    float-to-double v8, v8

    const/4 v15, 0x2

    aget v2, v2, v15

    mul-float/2addr v2, v0

    move/from16 v20, v0

    move/from16 v19, v1

    float-to-double v0, v2

    move-wide v15, v8

    move-wide/from16 v17, v0

    invoke-static/range {v13 .. v18}, Lcom/android/internal/graphics/ColorUtils;->XYZToColor(DDD)I

    move-result v0

    return v0
.end method

.method static linearized(I)F
    .registers 8

    int-to-float v0, p0

    const/high16 v1, 0x437f0000  # 255.0f

    div-float/2addr v0, v1

    const v1, 0x3d25aee6  # 0.04045f

    cmpg-float v1, v0, v1

    const/high16 v2, 0x42c80000  # 100.0f

    if-gtz v1, :cond_14

    const v1, 0x414eb852  # 12.92f

    div-float v1, v0, v1

    mul-float/2addr v1, v2

    return v1

    :cond_14
    const v1, 0x3d6147ae  # 0.055f

    add-float/2addr v1, v0

    const v3, 0x3f870a3d  # 1.055f

    div-float/2addr v1, v3

    float-to-double v3, v1

    const-wide v5, 0x4003333340000000L  # 2.4000000953674316

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    double-to-float v1, v3

    mul-float/2addr v1, v2

    return v1
.end method

.method public static lstarFromInt(I)F
    .registers 2

    invoke-static {p0}, Lcom/android/internal/graphics/cam/CamUtils;->yFromInt(I)F

    move-result v0

    invoke-static {v0}, Lcom/android/internal/graphics/cam/CamUtils;->lstarFromY(F)F

    move-result v0

    return v0
.end method

.method static lstarFromY(F)F
    .registers 5

    const/high16 v0, 0x42c80000  # 100.0f

    div-float/2addr p0, v0

    const v0, 0x3c111aa7

    const v1, 0x3c111aa7

    cmpg-float v1, p0, v1

    if-gtz v1, :cond_12

    const v1, 0x4461d2f7

    mul-float/2addr v1, p0

    return v1

    :cond_12
    float-to-double v1, p0

    invoke-static {v1, v2}, Ljava/lang/Math;->cbrt(D)D

    move-result-wide v1

    double-to-float v1, v1

    const/high16 v2, 0x42e80000  # 116.0f

    mul-float/2addr v2, v1

    const/high16 v3, 0x41800000  # 16.0f

    sub-float/2addr v2, v3

    return v2
.end method

.method public static signum(D)I
    .registers 5

    const-wide/16 v0, 0x0

    cmpg-double v2, p0, v0

    if-gez v2, :cond_8

    const/4 v0, -0x1

    return v0

    :cond_8
    cmpl-double v0, p0, v0

    if-nez v0, :cond_e

    const/4 v0, 0x0

    return v0

    :cond_e
    const/4 v0, 0x1

    return v0
.end method

.method static xyzFromInt(I)[F
    .registers 19

    invoke-static/range {p0 .. p0}, Landroid/graphics/Color;->red(I)I

    move-result v0

    invoke-static {v0}, Lcom/android/internal/graphics/cam/CamUtils;->linearized(I)F

    move-result v0

    invoke-static/range {p0 .. p0}, Landroid/graphics/Color;->green(I)I

    move-result v1

    invoke-static {v1}, Lcom/android/internal/graphics/cam/CamUtils;->linearized(I)F

    move-result v1

    invoke-static/range {p0 .. p0}, Landroid/graphics/Color;->blue(I)I

    move-result v2

    invoke-static {v2}, Lcom/android/internal/graphics/cam/CamUtils;->linearized(I)F

    move-result v2

    sget-object v3, Lcom/android/internal/graphics/cam/CamUtils;->SRGB_TO_XYZ:[[D

    float-to-double v4, v0

    const/4 v6, 0x0

    aget-object v7, v3, v6

    aget-wide v7, v7, v6

    mul-double/2addr v4, v7

    float-to-double v7, v1

    aget-object v9, v3, v6

    const/4 v10, 0x1

    aget-wide v11, v9, v10

    mul-double/2addr v7, v11

    add-double/2addr v4, v7

    float-to-double v7, v2

    aget-object v9, v3, v6

    const/4 v11, 0x2

    aget-wide v12, v9, v11

    mul-double/2addr v7, v12

    add-double/2addr v4, v7

    float-to-double v7, v0

    aget-object v9, v3, v10

    aget-wide v12, v9, v6

    mul-double/2addr v7, v12

    float-to-double v12, v1

    aget-object v9, v3, v10

    aget-wide v14, v9, v10

    mul-double/2addr v12, v14

    add-double/2addr v7, v12

    float-to-double v12, v2

    aget-object v9, v3, v10

    aget-wide v14, v9, v11

    mul-double/2addr v12, v14

    add-double/2addr v7, v12

    float-to-double v12, v0

    aget-object v9, v3, v11

    aget-wide v14, v9, v6

    mul-double/2addr v12, v14

    float-to-double v14, v1

    aget-object v9, v3, v11

    aget-wide v16, v9, v10

    mul-double v14, v14, v16

    add-double/2addr v12, v14

    float-to-double v14, v2

    aget-object v9, v3, v11

    aget-wide v16, v9, v11

    mul-double v14, v14, v16

    add-double/2addr v12, v14

    const/4 v9, 0x3

    new-array v9, v9, [F

    double-to-float v14, v4

    aput v14, v9, v6

    double-to-float v6, v7

    aput v6, v9, v10

    double-to-float v6, v12

    aput v6, v9, v11

    return-object v9
.end method

.method static yFromInt(I)F
    .registers 12

    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v0

    invoke-static {v0}, Lcom/android/internal/graphics/cam/CamUtils;->linearized(I)F

    move-result v0

    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v1

    invoke-static {v1}, Lcom/android/internal/graphics/cam/CamUtils;->linearized(I)F

    move-result v1

    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result v2

    invoke-static {v2}, Lcom/android/internal/graphics/cam/CamUtils;->linearized(I)F

    move-result v2

    sget-object v3, Lcom/android/internal/graphics/cam/CamUtils;->SRGB_TO_XYZ:[[D

    float-to-double v4, v0

    const/4 v6, 0x1

    aget-object v7, v3, v6

    const/4 v8, 0x0

    aget-wide v7, v7, v8

    mul-double/2addr v4, v7

    float-to-double v7, v1

    aget-object v9, v3, v6

    aget-wide v9, v9, v6

    mul-double/2addr v7, v9

    add-double/2addr v4, v7

    float-to-double v7, v2

    aget-object v6, v3, v6

    const/4 v9, 0x2

    aget-wide v9, v6, v9

    mul-double/2addr v7, v9

    add-double/2addr v4, v7

    double-to-float v6, v4

    return v6
.end method

.method public static yFromLstar(D)D
    .registers 11

    const-wide/high16 v0, 0x4020000000000000L  # 8.0

    cmpl-double v2, p0, v0

    const-wide/high16 v3, 0x4059000000000000L  # 100.0

    if-lez v2, :cond_16

    const-wide/high16 v5, 0x4030000000000000L  # 16.0

    add-double/2addr v5, p0

    const-wide/high16 v7, 0x405d000000000000L  # 116.0

    div-double/2addr v5, v7

    const-wide/high16 v7, 0x4008000000000000L  # 3.0

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    mul-double/2addr v5, v3

    return-wide v5

    :cond_16
    const-wide v5, 0x408c3a5ed097b426L  # 903.2962962962963

    div-double v5, p0, v5

    mul-double/2addr v5, v3

    return-wide v5
.end method
