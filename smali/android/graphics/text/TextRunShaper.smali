# classes.dex

.class public Landroid/graphics/text/TextRunShaper;
.super Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static native nativeShapeTextRun(Ljava/lang/String;IIIIZJ)J
.end method

.method private static native nativeShapeTextRun([CIIIIZJ)J
.end method

.method public static shapeTextRun(Ljava/lang/CharSequence;IIIIFFZLandroid/graphics/Paint;)Landroid/graphics/text/PositionedGlyphs;
    .registers 24

    move-object v0, p0

    move/from16 v9, p3

    move/from16 v10, p4

    move/from16 v11, p5

    move/from16 v12, p6

    invoke-static {p0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static/range {p8 .. p8}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_2e

    new-instance v13, Landroid/graphics/text/PositionedGlyphs;

    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    invoke-virtual/range {p8 .. p8}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v7

    move/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p7

    invoke-static/range {v1 .. v8}, Landroid/graphics/text/TextRunShaper;->nativeShapeTextRun(Ljava/lang/String;IIIIZJ)J

    move-result-wide v1

    invoke-direct {v13, v1, v2, v11, v12}, Landroid/graphics/text/PositionedGlyphs;-><init>(JFF)V

    return-object v13

    :cond_2e
    new-array v13, v10, [C

    add-int v1, v9, v10

    const/4 v2, 0x0

    invoke-static {p0, v9, v1, v13, v2}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    new-instance v14, Landroid/graphics/text/PositionedGlyphs;

    sub-int v2, p1, v9

    const/4 v4, 0x0

    invoke-virtual/range {p8 .. p8}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v7

    move-object v1, v13

    move/from16 v3, p2

    move/from16 v5, p4

    move/from16 v6, p7

    invoke-static/range {v1 .. v8}, Landroid/graphics/text/TextRunShaper;->nativeShapeTextRun([CIIIIZJ)J

    move-result-wide v1

    invoke-direct {v14, v1, v2, v11, v12}, Landroid/graphics/text/PositionedGlyphs;-><init>(JFF)V

    return-object v14
.end method

.method public static shapeTextRun([CIIIIFFZLandroid/graphics/Paint;)Landroid/graphics/text/PositionedGlyphs;
    .registers 18

    invoke-static {p0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static/range {p8 .. p8}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Landroid/graphics/text/PositionedGlyphs;

    invoke-virtual/range {p8 .. p8}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v7

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move/from16 v6, p7

    invoke-static/range {v1 .. v8}, Landroid/graphics/text/TextRunShaper;->nativeShapeTextRun([CIIIIZJ)J

    move-result-wide v1

    move v3, p5

    move v4, p6

    invoke-direct {v0, v1, v2, p5, p6}, Landroid/graphics/text/PositionedGlyphs;-><init>(JFF)V

    return-object v0
.end method
