# classes4.dex

.class public final Lcom/android/internal/graphics/palette/WuQuantizer;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/internal/graphics/palette/Quantizer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/graphics/palette/WuQuantizer$Box;,
        Lcom/android/internal/graphics/palette/WuQuantizer$CreateBoxesResult;,
        Lcom/android/internal/graphics/palette/WuQuantizer$MaximizeResult;,
        Lcom/android/internal/graphics/palette/WuQuantizer$Direction;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final BITS:I = 0x5

.field private static final MAX_INDEX:I = 0x20

.field private static final SIDE_LENGTH:I = 0x21

.field private static final TOTAL_SIZE:I = 0x8c61


# instance fields
.field private mColors:[I

.field private mCubes:[Lcom/android/internal/graphics/palette/WuQuantizer$Box;

.field private mInputPixelToCount:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mMoments:[D

.field private mMomentsB:[I

.field private mMomentsG:[I

.field private mMomentsR:[I

.field private mPalette:Lcom/android/internal/graphics/palette/Palette;

.field private mWeights:[I


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static bottom(Lcom/android/internal/graphics/palette/WuQuantizer$Box;Lcom/android/internal/graphics/palette/WuQuantizer$Direction;[I)I
    .registers 7

    sget-object v0, Lcom/android/internal/graphics/palette/WuQuantizer$1;->$SwitchMap$com$android$internal$graphics$palette$WuQuantizer$Direction:[I

    invoke-virtual {p1}, Lcom/android/internal/graphics/palette/WuQuantizer$Direction;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_c4

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unexpected direction "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_25  #0x3
    iget v0, p0, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->r1:I

    iget v1, p0, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->g1:I

    iget v2, p0, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->b0:I

    invoke-static {v0, v1, v2}, Lcom/android/internal/graphics/palette/WuQuantizer;->getIndex(III)I

    move-result v0

    aget v0, p2, v0

    neg-int v0, v0

    iget v1, p0, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->r1:I

    iget v2, p0, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->g0:I

    iget v3, p0, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->b0:I

    invoke-static {v1, v2, v3}, Lcom/android/internal/graphics/palette/WuQuantizer;->getIndex(III)I

    move-result v1

    aget v1, p2, v1

    add-int/2addr v0, v1

    iget v1, p0, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->r0:I

    iget v2, p0, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->g1:I

    iget v3, p0, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->b0:I

    invoke-static {v1, v2, v3}, Lcom/android/internal/graphics/palette/WuQuantizer;->getIndex(III)I

    move-result v1

    aget v1, p2, v1

    add-int/2addr v0, v1

    iget v1, p0, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->r0:I

    iget v2, p0, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->g0:I

    iget v3, p0, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->b0:I

    invoke-static {v1, v2, v3}, Lcom/android/internal/graphics/palette/WuQuantizer;->getIndex(III)I

    move-result v1

    aget v1, p2, v1

    sub-int/2addr v0, v1

    return v0

    :pswitch_5a  #0x2
    iget v0, p0, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->r1:I

    iget v1, p0, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->g0:I

    iget v2, p0, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->b1:I

    invoke-static {v0, v1, v2}, Lcom/android/internal/graphics/palette/WuQuantizer;->getIndex(III)I

    move-result v0

    aget v0, p2, v0

    neg-int v0, v0

    iget v1, p0, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->r1:I

    iget v2, p0, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->g0:I

    iget v3, p0, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->b0:I

    invoke-static {v1, v2, v3}, Lcom/android/internal/graphics/palette/WuQuantizer;->getIndex(III)I

    move-result v1

    aget v1, p2, v1

    add-int/2addr v0, v1

    iget v1, p0, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->r0:I

    iget v2, p0, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->g0:I

    iget v3, p0, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->b1:I

    invoke-static {v1, v2, v3}, Lcom/android/internal/graphics/palette/WuQuantizer;->getIndex(III)I

    move-result v1

    aget v1, p2, v1

    add-int/2addr v0, v1

    iget v1, p0, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->r0:I

    iget v2, p0, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->g0:I

    iget v3, p0, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->b0:I

    invoke-static {v1, v2, v3}, Lcom/android/internal/graphics/palette/WuQuantizer;->getIndex(III)I

    move-result v1

    aget v1, p2, v1

    sub-int/2addr v0, v1

    return v0

    :pswitch_8f  #0x1
    iget v0, p0, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->r0:I

    iget v1, p0, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->g1:I

    iget v2, p0, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->b1:I

    invoke-static {v0, v1, v2}, Lcom/android/internal/graphics/palette/WuQuantizer;->getIndex(III)I

    move-result v0

    aget v0, p2, v0

    neg-int v0, v0

    iget v1, p0, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->r0:I

    iget v2, p0, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->g1:I

    iget v3, p0, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->b0:I

    invoke-static {v1, v2, v3}, Lcom/android/internal/graphics/palette/WuQuantizer;->getIndex(III)I

    move-result v1

    aget v1, p2, v1

    add-int/2addr v0, v1

    iget v1, p0, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->r0:I

    iget v2, p0, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->g0:I

    iget v3, p0, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->b1:I

    invoke-static {v1, v2, v3}, Lcom/android/internal/graphics/palette/WuQuantizer;->getIndex(III)I

    move-result v1

    aget v1, p2, v1

    add-int/2addr v0, v1

    iget v1, p0, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->r0:I

    iget v2, p0, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->g0:I

    iget v3, p0, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->b0:I

    invoke-static {v1, v2, v3}, Lcom/android/internal/graphics/palette/WuQuantizer;->getIndex(III)I

    move-result v1

    aget v1, p2, v1

    sub-int/2addr v0, v1

    return v0

    :pswitch_data_c4
    .packed-switch 0x1
        :pswitch_8f  #00000001
        :pswitch_5a  #00000002
        :pswitch_25  #00000003
    .end packed-switch
.end method

.method private constructHistogram(Ljava/util/Map;)V
    .registers 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    const v1, 0x8c61

    new-array v2, v1, [I

    iput-object v2, v0, Lcom/android/internal/graphics/palette/WuQuantizer;->mWeights:[I

    new-array v2, v1, [I

    iput-object v2, v0, Lcom/android/internal/graphics/palette/WuQuantizer;->mMomentsR:[I

    new-array v2, v1, [I

    iput-object v2, v0, Lcom/android/internal/graphics/palette/WuQuantizer;->mMomentsG:[I

    new-array v2, v1, [I

    iput-object v2, v0, Lcom/android/internal/graphics/palette/WuQuantizer;->mMomentsB:[I

    new-array v1, v1, [D

    iput-object v1, v0, Lcom/android/internal/graphics/palette/WuQuantizer;->mMoments:[D

    invoke-interface/range {p1 .. p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_21
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v3}, Landroid/graphics/Color;->red(I)I

    move-result v5

    invoke-static {v3}, Landroid/graphics/Color;->green(I)I

    move-result v6

    invoke-static {v3}, Landroid/graphics/Color;->blue(I)I

    move-result v7

    const/4 v8, 0x3

    shr-int v9, v5, v8

    add-int/lit8 v9, v9, 0x1

    shr-int v10, v6, v8

    add-int/lit8 v10, v10, 0x1

    shr-int v11, v7, v8

    add-int/lit8 v11, v11, 0x1

    invoke-static {v9, v10, v11}, Lcom/android/internal/graphics/palette/WuQuantizer;->getIndex(III)I

    move-result v12

    iget-object v13, v0, Lcom/android/internal/graphics/palette/WuQuantizer;->mWeights:[I

    aget v14, v13, v12

    add-int/2addr v14, v4

    aput v14, v13, v12

    iget-object v13, v0, Lcom/android/internal/graphics/palette/WuQuantizer;->mMomentsR:[I

    aget v14, v13, v12

    mul-int v15, v5, v4

    add-int/2addr v14, v15

    aput v14, v13, v12

    iget-object v13, v0, Lcom/android/internal/graphics/palette/WuQuantizer;->mMomentsG:[I

    aget v14, v13, v12

    mul-int v15, v6, v4

    add-int/2addr v14, v15

    aput v14, v13, v12

    iget-object v13, v0, Lcom/android/internal/graphics/palette/WuQuantizer;->mMomentsB:[I

    aget v14, v13, v12

    mul-int v15, v7, v4

    add-int/2addr v14, v15

    aput v14, v13, v12

    iget-object v13, v0, Lcom/android/internal/graphics/palette/WuQuantizer;->mMoments:[D

    aget-wide v14, v13, v12

    mul-int v16, v5, v5

    mul-int v17, v6, v6

    add-int v16, v16, v17

    mul-int v17, v7, v7

    add-int v16, v16, v17

    mul-int v0, v4, v16

    move-object/from16 v16, v1

    int-to-double v0, v0

    add-double/2addr v14, v0

    aput-wide v14, v13, v12

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    goto :goto_21

    :cond_9b
    return-void
.end method

.method private createBoxes(I)Lcom/android/internal/graphics/palette/WuQuantizer$CreateBoxesResult;
    .registers 15

    new-array v0, p1, [Lcom/android/internal/graphics/palette/WuQuantizer$Box;

    iput-object v0, p0, Lcom/android/internal/graphics/palette/WuQuantizer;->mCubes:[Lcom/android/internal/graphics/palette/WuQuantizer$Box;

    const/4 v0, 0x0

    :goto_5
    if-ge v0, p1, :cond_14

    iget-object v1, p0, Lcom/android/internal/graphics/palette/WuQuantizer;->mCubes:[Lcom/android/internal/graphics/palette/WuQuantizer$Box;

    new-instance v2, Lcom/android/internal/graphics/palette/WuQuantizer$Box;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/android/internal/graphics/palette/WuQuantizer$Box;-><init>(Lcom/android/internal/graphics/palette/WuQuantizer$Box-IA;)V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_14
    new-array v0, p1, [D

    iget-object v1, p0, Lcom/android/internal/graphics/palette/WuQuantizer;->mCubes:[Lcom/android/internal/graphics/palette/WuQuantizer$Box;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    const/16 v3, 0x20

    iput v3, v1, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->r1:I

    iput v3, v1, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->g1:I

    iput v3, v1, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->b1:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    :goto_26
    if-ge v5, p1, :cond_80

    iget-object v6, p0, Lcom/android/internal/graphics/palette/WuQuantizer;->mCubes:[Lcom/android/internal/graphics/palette/WuQuantizer$Box;

    aget-object v7, v6, v4

    aget-object v6, v6, v5

    invoke-direct {p0, v7, v6}, Lcom/android/internal/graphics/palette/WuQuantizer;->cut(Lcom/android/internal/graphics/palette/WuQuantizer$Box;Lcom/android/internal/graphics/palette/WuQuantizer$Box;)Z

    move-result v6

    const-wide/16 v7, 0x0

    if-eqz v6, :cond_60

    iget-object v6, p0, Lcom/android/internal/graphics/palette/WuQuantizer;->mCubes:[Lcom/android/internal/graphics/palette/WuQuantizer$Box;

    aget-object v6, v6, v4

    iget v6, v6, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->vol:I

    const/4 v9, 0x1

    if-le v6, v9, :cond_48

    iget-object v6, p0, Lcom/android/internal/graphics/palette/WuQuantizer;->mCubes:[Lcom/android/internal/graphics/palette/WuQuantizer$Box;

    aget-object v6, v6, v4

    invoke-direct {p0, v6}, Lcom/android/internal/graphics/palette/WuQuantizer;->variance(Lcom/android/internal/graphics/palette/WuQuantizer$Box;)D

    move-result-wide v10

    goto :goto_49

    :cond_48
    move-wide v10, v7

    :goto_49
    aput-wide v10, v0, v4

    iget-object v6, p0, Lcom/android/internal/graphics/palette/WuQuantizer;->mCubes:[Lcom/android/internal/graphics/palette/WuQuantizer$Box;

    aget-object v6, v6, v5

    iget v6, v6, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->vol:I

    if-le v6, v9, :cond_5c

    iget-object v6, p0, Lcom/android/internal/graphics/palette/WuQuantizer;->mCubes:[Lcom/android/internal/graphics/palette/WuQuantizer$Box;

    aget-object v6, v6, v5

    invoke-direct {p0, v6}, Lcom/android/internal/graphics/palette/WuQuantizer;->variance(Lcom/android/internal/graphics/palette/WuQuantizer$Box;)D

    move-result-wide v9

    goto :goto_5d

    :cond_5c
    move-wide v9, v7

    :goto_5d
    aput-wide v9, v0, v5

    goto :goto_64

    :cond_60
    aput-wide v7, v0, v4

    add-int/lit8 v5, v5, -0x1

    :goto_64
    const/4 v4, 0x0

    aget-wide v9, v0, v2

    const/4 v6, 0x1

    :goto_68
    if-gt v6, v5, :cond_76

    aget-wide v11, v0, v6

    cmpl-double v11, v11, v9

    if-lez v11, :cond_73

    aget-wide v9, v0, v6

    move v4, v6

    :cond_73
    add-int/lit8 v6, v6, 0x1

    goto :goto_68

    :cond_76
    add-int/lit8 v3, v5, 0x1

    cmpg-double v6, v9, v7

    if-gtz v6, :cond_7d

    goto :goto_80

    :cond_7d
    add-int/lit8 v5, v5, 0x1

    goto :goto_26

    :cond_80
    :goto_80
    new-instance v2, Lcom/android/internal/graphics/palette/WuQuantizer$CreateBoxesResult;

    invoke-direct {v2, p1, v3}, Lcom/android/internal/graphics/palette/WuQuantizer$CreateBoxesResult;-><init>(II)V

    return-object v2
.end method

.method private createMoments()V
    .registers 23

    move-object/from16 v0, p0

    const/4 v1, 0x1

    :goto_3
    const/16 v2, 0x21

    if-ge v1, v2, :cond_a0

    new-array v3, v2, [I

    new-array v4, v2, [I

    new-array v5, v2, [I

    new-array v6, v2, [I

    new-array v7, v2, [D

    const/4 v8, 0x1

    :goto_12
    if-ge v8, v2, :cond_9c

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const-wide/16 v13, 0x0

    const/4 v15, 0x1

    :goto_1b
    if-ge v15, v2, :cond_96

    invoke-static {v1, v8, v15}, Lcom/android/internal/graphics/palette/WuQuantizer;->getIndex(III)I

    move-result v16

    iget-object v2, v0, Lcom/android/internal/graphics/palette/WuQuantizer;->mWeights:[I

    aget v2, v2, v16

    add-int/2addr v9, v2

    iget-object v2, v0, Lcom/android/internal/graphics/palette/WuQuantizer;->mMomentsR:[I

    aget v2, v2, v16

    add-int/2addr v10, v2

    iget-object v2, v0, Lcom/android/internal/graphics/palette/WuQuantizer;->mMomentsG:[I

    aget v2, v2, v16

    add-int/2addr v11, v2

    iget-object v2, v0, Lcom/android/internal/graphics/palette/WuQuantizer;->mMomentsB:[I

    aget v2, v2, v16

    add-int/2addr v12, v2

    iget-object v2, v0, Lcom/android/internal/graphics/palette/WuQuantizer;->mMoments:[D

    aget-wide v17, v2, v16

    add-double v13, v13, v17

    aget v2, v3, v15

    add-int/2addr v2, v9

    aput v2, v3, v15

    aget v2, v4, v15

    add-int/2addr v2, v10

    aput v2, v4, v15

    aget v2, v5, v15

    add-int/2addr v2, v11

    aput v2, v5, v15

    aget v2, v6, v15

    add-int/2addr v2, v12

    aput v2, v6, v15

    aget-wide v17, v7, v15

    add-double v17, v17, v13

    aput-wide v17, v7, v15

    add-int/lit8 v2, v1, -0x1

    invoke-static {v2, v8, v15}, Lcom/android/internal/graphics/palette/WuQuantizer;->getIndex(III)I

    move-result v2

    move/from16 v17, v9

    iget-object v9, v0, Lcom/android/internal/graphics/palette/WuQuantizer;->mWeights:[I

    aget v18, v9, v2

    aget v19, v3, v15

    add-int v18, v18, v19

    aput v18, v9, v16

    iget-object v9, v0, Lcom/android/internal/graphics/palette/WuQuantizer;->mMomentsR:[I

    aget v18, v9, v2

    aget v19, v4, v15

    add-int v18, v18, v19

    aput v18, v9, v16

    iget-object v9, v0, Lcom/android/internal/graphics/palette/WuQuantizer;->mMomentsG:[I

    aget v18, v9, v2

    aget v19, v5, v15

    add-int v18, v18, v19

    aput v18, v9, v16

    iget-object v9, v0, Lcom/android/internal/graphics/palette/WuQuantizer;->mMomentsB:[I

    aget v18, v9, v2

    aget v19, v6, v15

    add-int v18, v18, v19

    aput v18, v9, v16

    iget-object v9, v0, Lcom/android/internal/graphics/palette/WuQuantizer;->mMoments:[D

    aget-wide v18, v9, v2

    aget-wide v20, v7, v15

    add-double v18, v18, v20

    aput-wide v18, v9, v16

    add-int/lit8 v15, v15, 0x1

    move/from16 v9, v17

    const/16 v2, 0x21

    goto :goto_1b

    :cond_96
    add-int/lit8 v8, v8, 0x1

    const/16 v2, 0x21

    goto/16 :goto_12

    :cond_9c
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_3

    :cond_a0
    return-void
.end method

.method private createResult(I)[I
    .registers 12

    new-array v0, p1, [I

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_4
    if-ge v2, p1, :cond_33

    iget-object v3, p0, Lcom/android/internal/graphics/palette/WuQuantizer;->mCubes:[Lcom/android/internal/graphics/palette/WuQuantizer$Box;

    aget-object v3, v3, v2

    iget-object v4, p0, Lcom/android/internal/graphics/palette/WuQuantizer;->mWeights:[I

    invoke-static {v3, v4}, Lcom/android/internal/graphics/palette/WuQuantizer;->volume(Lcom/android/internal/graphics/palette/WuQuantizer$Box;[I)I

    move-result v4

    if-lez v4, :cond_30

    iget-object v5, p0, Lcom/android/internal/graphics/palette/WuQuantizer;->mMomentsR:[I

    invoke-static {v3, v5}, Lcom/android/internal/graphics/palette/WuQuantizer;->volume(Lcom/android/internal/graphics/palette/WuQuantizer$Box;[I)I

    move-result v5

    div-int/2addr v5, v4

    iget-object v6, p0, Lcom/android/internal/graphics/palette/WuQuantizer;->mMomentsG:[I

    invoke-static {v3, v6}, Lcom/android/internal/graphics/palette/WuQuantizer;->volume(Lcom/android/internal/graphics/palette/WuQuantizer$Box;[I)I

    move-result v6

    div-int/2addr v6, v4

    iget-object v7, p0, Lcom/android/internal/graphics/palette/WuQuantizer;->mMomentsB:[I

    invoke-static {v3, v7}, Lcom/android/internal/graphics/palette/WuQuantizer;->volume(Lcom/android/internal/graphics/palette/WuQuantizer$Box;[I)I

    move-result v7

    div-int/2addr v7, v4

    invoke-static {v5, v6, v7}, Landroid/graphics/Color;->rgb(III)I

    move-result v8

    add-int/lit8 v9, v1, 0x1

    aput v8, v0, v1

    move v1, v9

    :cond_30
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_33
    new-array v2, v1, [I

    const/4 v3, 0x0

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method

.method private cut(Lcom/android/internal/graphics/palette/WuQuantizer$Box;Lcom/android/internal/graphics/palette/WuQuantizer$Box;)Z
    .registers 24

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move-object/from16 v11, p2

    iget-object v0, v9, Lcom/android/internal/graphics/palette/WuQuantizer;->mMomentsR:[I

    invoke-static {v10, v0}, Lcom/android/internal/graphics/palette/WuQuantizer;->volume(Lcom/android/internal/graphics/palette/WuQuantizer$Box;[I)I

    move-result v12

    iget-object v0, v9, Lcom/android/internal/graphics/palette/WuQuantizer;->mMomentsG:[I

    invoke-static {v10, v0}, Lcom/android/internal/graphics/palette/WuQuantizer;->volume(Lcom/android/internal/graphics/palette/WuQuantizer$Box;[I)I

    move-result v13

    iget-object v0, v9, Lcom/android/internal/graphics/palette/WuQuantizer;->mMomentsB:[I

    invoke-static {v10, v0}, Lcom/android/internal/graphics/palette/WuQuantizer;->volume(Lcom/android/internal/graphics/palette/WuQuantizer$Box;[I)I

    move-result v14

    iget-object v0, v9, Lcom/android/internal/graphics/palette/WuQuantizer;->mWeights:[I

    invoke-static {v10, v0}, Lcom/android/internal/graphics/palette/WuQuantizer;->volume(Lcom/android/internal/graphics/palette/WuQuantizer$Box;[I)I

    move-result v15

    sget-object v2, Lcom/android/internal/graphics/palette/WuQuantizer$Direction;->RED:Lcom/android/internal/graphics/palette/WuQuantizer$Direction;

    iget v0, v10, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->r0:I

    const/16 v16, 0x1

    add-int/lit8 v3, v0, 0x1

    iget v4, v10, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->r1:I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v5, v12

    move v6, v13

    move v7, v14

    move v8, v15

    invoke-direct/range {v0 .. v8}, Lcom/android/internal/graphics/palette/WuQuantizer;->maximize(Lcom/android/internal/graphics/palette/WuQuantizer$Box;Lcom/android/internal/graphics/palette/WuQuantizer$Direction;IIIIII)Lcom/android/internal/graphics/palette/WuQuantizer$MaximizeResult;

    move-result-object v8

    sget-object v2, Lcom/android/internal/graphics/palette/WuQuantizer$Direction;->GREEN:Lcom/android/internal/graphics/palette/WuQuantizer$Direction;

    iget v0, v10, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->g0:I

    add-int/lit8 v3, v0, 0x1

    iget v4, v10, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->g1:I

    move-object/from16 v0, p0

    move-object v9, v8

    move v8, v15

    invoke-direct/range {v0 .. v8}, Lcom/android/internal/graphics/palette/WuQuantizer;->maximize(Lcom/android/internal/graphics/palette/WuQuantizer$Box;Lcom/android/internal/graphics/palette/WuQuantizer$Direction;IIIIII)Lcom/android/internal/graphics/palette/WuQuantizer$MaximizeResult;

    move-result-object v8

    sget-object v2, Lcom/android/internal/graphics/palette/WuQuantizer$Direction;->BLUE:Lcom/android/internal/graphics/palette/WuQuantizer$Direction;

    iget v0, v10, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->b0:I

    add-int/lit8 v3, v0, 0x1

    iget v4, v10, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->b1:I

    move-object/from16 v0, p0

    move/from16 v17, v12

    move-object v12, v8

    move v8, v15

    invoke-direct/range {v0 .. v8}, Lcom/android/internal/graphics/palette/WuQuantizer;->maximize(Lcom/android/internal/graphics/palette/WuQuantizer$Box;Lcom/android/internal/graphics/palette/WuQuantizer$Direction;IIIIII)Lcom/android/internal/graphics/palette/WuQuantizer$MaximizeResult;

    move-result-object v0

    iget-wide v1, v9, Lcom/android/internal/graphics/palette/WuQuantizer$MaximizeResult;->mMaximum:D

    iget-wide v3, v12, Lcom/android/internal/graphics/palette/WuQuantizer$MaximizeResult;->mMaximum:D

    iget-wide v5, v0, Lcom/android/internal/graphics/palette/WuQuantizer$MaximizeResult;->mMaximum:D

    cmpl-double v7, v1, v3

    if-ltz v7, :cond_6d

    cmpl-double v7, v1, v5

    if-ltz v7, :cond_6d

    iget v7, v9, Lcom/android/internal/graphics/palette/WuQuantizer$MaximizeResult;->mCutLocation:I

    if-gez v7, :cond_6a

    const/4 v7, 0x0

    return v7

    :cond_6a
    sget-object v7, Lcom/android/internal/graphics/palette/WuQuantizer$Direction;->RED:Lcom/android/internal/graphics/palette/WuQuantizer$Direction;

    goto :goto_7a

    :cond_6d
    cmpl-double v7, v3, v1

    if-ltz v7, :cond_78

    cmpl-double v7, v3, v5

    if-ltz v7, :cond_78

    sget-object v7, Lcom/android/internal/graphics/palette/WuQuantizer$Direction;->GREEN:Lcom/android/internal/graphics/palette/WuQuantizer$Direction;

    goto :goto_7a

    :cond_78
    sget-object v7, Lcom/android/internal/graphics/palette/WuQuantizer$Direction;->BLUE:Lcom/android/internal/graphics/palette/WuQuantizer$Direction;

    :goto_7a
    iget v8, v10, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->r1:I

    iput v8, v11, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->r1:I

    iget v8, v10, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->g1:I

    iput v8, v11, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->g1:I

    iget v8, v10, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->b1:I

    iput v8, v11, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->b1:I

    sget-object v8, Lcom/android/internal/graphics/palette/WuQuantizer$1;->$SwitchMap$com$android$internal$graphics$palette$WuQuantizer$Direction:[I

    invoke-virtual {v7}, Lcom/android/internal/graphics/palette/WuQuantizer$Direction;->ordinal()I

    move-result v18

    aget v8, v8, v18

    packed-switch v8, :pswitch_data_10e

    move-object/from16 v18, v0

    move-wide/from16 v19, v1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unexpected direction "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_af  #0x3
    iget v8, v0, Lcom/android/internal/graphics/palette/WuQuantizer$MaximizeResult;->mCutLocation:I

    iput v8, v10, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->b1:I

    iget v8, v10, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->r0:I

    iput v8, v11, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->r0:I

    iget v8, v10, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->g0:I

    iput v8, v11, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->g0:I

    iget v8, v10, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->b1:I

    iput v8, v11, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->b0:I

    goto :goto_e2

    :pswitch_c0  #0x2
    iget v8, v12, Lcom/android/internal/graphics/palette/WuQuantizer$MaximizeResult;->mCutLocation:I

    iput v8, v10, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->g1:I

    iget v8, v10, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->r0:I

    iput v8, v11, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->r0:I

    iget v8, v10, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->g1:I

    iput v8, v11, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->g0:I

    iget v8, v10, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->b0:I

    iput v8, v11, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->b0:I

    goto :goto_e2

    :pswitch_d1  #0x1
    iget v8, v9, Lcom/android/internal/graphics/palette/WuQuantizer$MaximizeResult;->mCutLocation:I

    iput v8, v10, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->r1:I

    iget v8, v10, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->r1:I

    iput v8, v11, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->r0:I

    iget v8, v10, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->g0:I

    iput v8, v11, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->g0:I

    iget v8, v10, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->b0:I

    iput v8, v11, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->b0:I

    nop

    :goto_e2
    iget v8, v10, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->r1:I

    move-object/from16 v18, v0

    iget v0, v10, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->r0:I

    sub-int/2addr v8, v0

    iget v0, v10, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->g1:I

    move-wide/from16 v19, v1

    iget v1, v10, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->g0:I

    sub-int/2addr v0, v1

    mul-int/2addr v8, v0

    iget v0, v10, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->b1:I

    iget v1, v10, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->b0:I

    sub-int/2addr v0, v1

    mul-int/2addr v8, v0

    iput v8, v10, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->vol:I

    iget v0, v11, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->r1:I

    iget v1, v11, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->r0:I

    sub-int/2addr v0, v1

    iget v1, v11, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->g1:I

    iget v2, v11, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->g0:I

    sub-int/2addr v1, v2

    mul-int/2addr v0, v1

    iget v1, v11, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->b1:I

    iget v2, v11, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->b0:I

    sub-int/2addr v1, v2

    mul-int/2addr v0, v1

    iput v0, v11, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->vol:I

    return v16

    nop

    :pswitch_data_10e
    .packed-switch 0x1
        :pswitch_d1  #00000001
        :pswitch_c0  #00000002
        :pswitch_af  #00000003
    .end packed-switch
.end method

.method private static getIndex(III)I
    .registers 5

    shl-int/lit8 v0, p0, 0xa

    shl-int/lit8 v1, p0, 0x6

    add-int/2addr v0, v1

    shl-int/lit8 v1, p1, 0x5

    add-int/2addr v0, v1

    add-int/2addr v0, p0

    add-int/2addr v0, p1

    add-int/2addr v0, p2

    return v0
.end method

.method private maximize(Lcom/android/internal/graphics/palette/WuQuantizer$Box;Lcom/android/internal/graphics/palette/WuQuantizer$Direction;IIIIII)Lcom/android/internal/graphics/palette/WuQuantizer$MaximizeResult;
    .registers 32

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    iget-object v3, v0, Lcom/android/internal/graphics/palette/WuQuantizer;->mMomentsR:[I

    invoke-static {v1, v2, v3}, Lcom/android/internal/graphics/palette/WuQuantizer;->bottom(Lcom/android/internal/graphics/palette/WuQuantizer$Box;Lcom/android/internal/graphics/palette/WuQuantizer$Direction;[I)I

    move-result v3

    iget-object v4, v0, Lcom/android/internal/graphics/palette/WuQuantizer;->mMomentsG:[I

    invoke-static {v1, v2, v4}, Lcom/android/internal/graphics/palette/WuQuantizer;->bottom(Lcom/android/internal/graphics/palette/WuQuantizer$Box;Lcom/android/internal/graphics/palette/WuQuantizer$Direction;[I)I

    move-result v4

    iget-object v5, v0, Lcom/android/internal/graphics/palette/WuQuantizer;->mMomentsB:[I

    invoke-static {v1, v2, v5}, Lcom/android/internal/graphics/palette/WuQuantizer;->bottom(Lcom/android/internal/graphics/palette/WuQuantizer$Box;Lcom/android/internal/graphics/palette/WuQuantizer$Direction;[I)I

    move-result v5

    iget-object v6, v0, Lcom/android/internal/graphics/palette/WuQuantizer;->mWeights:[I

    invoke-static {v1, v2, v6}, Lcom/android/internal/graphics/palette/WuQuantizer;->bottom(Lcom/android/internal/graphics/palette/WuQuantizer$Box;Lcom/android/internal/graphics/palette/WuQuantizer$Direction;[I)I

    move-result v6

    const-wide/16 v7, 0x0

    const/4 v9, -0x1

    move/from16 v10, p3

    :goto_23
    move/from16 v11, p4

    if-ge v10, v11, :cond_87

    iget-object v12, v0, Lcom/android/internal/graphics/palette/WuQuantizer;->mMomentsR:[I

    invoke-static {v1, v2, v10, v12}, Lcom/android/internal/graphics/palette/WuQuantizer;->top(Lcom/android/internal/graphics/palette/WuQuantizer$Box;Lcom/android/internal/graphics/palette/WuQuantizer$Direction;I[I)I

    move-result v12

    add-int/2addr v12, v3

    iget-object v13, v0, Lcom/android/internal/graphics/palette/WuQuantizer;->mMomentsG:[I

    invoke-static {v1, v2, v10, v13}, Lcom/android/internal/graphics/palette/WuQuantizer;->top(Lcom/android/internal/graphics/palette/WuQuantizer$Box;Lcom/android/internal/graphics/palette/WuQuantizer$Direction;I[I)I

    move-result v13

    add-int/2addr v13, v4

    iget-object v14, v0, Lcom/android/internal/graphics/palette/WuQuantizer;->mMomentsB:[I

    invoke-static {v1, v2, v10, v14}, Lcom/android/internal/graphics/palette/WuQuantizer;->top(Lcom/android/internal/graphics/palette/WuQuantizer$Box;Lcom/android/internal/graphics/palette/WuQuantizer$Direction;I[I)I

    move-result v14

    add-int/2addr v14, v5

    iget-object v15, v0, Lcom/android/internal/graphics/palette/WuQuantizer;->mWeights:[I

    invoke-static {v1, v2, v10, v15}, Lcom/android/internal/graphics/palette/WuQuantizer;->top(Lcom/android/internal/graphics/palette/WuQuantizer$Box;Lcom/android/internal/graphics/palette/WuQuantizer$Direction;I[I)I

    move-result v15

    add-int/2addr v15, v6

    if-nez v15, :cond_48

    move/from16 v16, v3

    goto :goto_7c

    :cond_48
    mul-int v16, v12, v12

    mul-int v17, v13, v13

    add-int v16, v16, v17

    mul-int v17, v14, v14

    add-int v0, v16, v17

    int-to-double v0, v0

    move/from16 v16, v3

    int-to-double v2, v15

    div-double v17, v0, v2

    sub-int v12, p5, v12

    sub-int v13, p6, v13

    sub-int v14, p7, v14

    sub-int v15, p8, v15

    if-nez v15, :cond_63

    goto :goto_7c

    :cond_63
    mul-int v19, v12, v12

    mul-int v20, v13, v13

    add-int v19, v19, v20

    mul-int v20, v14, v14

    move-wide/from16 v21, v0

    add-int v0, v19, v20

    int-to-double v0, v0

    int-to-double v2, v15

    div-double v19, v0, v2

    add-double v17, v17, v19

    cmpl-double v19, v17, v7

    if-lez v19, :cond_7c

    move-wide/from16 v7, v17

    move v9, v10

    :cond_7c
    :goto_7c
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, v16

    goto :goto_23

    :cond_87
    new-instance v0, Lcom/android/internal/graphics/palette/WuQuantizer$MaximizeResult;

    invoke-direct {v0, v9, v7, v8}, Lcom/android/internal/graphics/palette/WuQuantizer$MaximizeResult;-><init>(ID)V

    return-object v0
.end method

.method private static top(Lcom/android/internal/graphics/palette/WuQuantizer$Box;Lcom/android/internal/graphics/palette/WuQuantizer$Direction;I[I)I
    .registers 7

    sget-object v0, Lcom/android/internal/graphics/palette/WuQuantizer$1;->$SwitchMap$com$android$internal$graphics$palette$WuQuantizer$Direction:[I

    invoke-virtual {p1}, Lcom/android/internal/graphics/palette/WuQuantizer$Direction;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_aa

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unexpected direction "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_25  #0x3
    iget v0, p0, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->r1:I

    iget v1, p0, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->g1:I

    invoke-static {v0, v1, p2}, Lcom/android/internal/graphics/palette/WuQuantizer;->getIndex(III)I

    move-result v0

    aget v0, p3, v0

    iget v1, p0, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->r1:I

    iget v2, p0, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->g0:I

    invoke-static {v1, v2, p2}, Lcom/android/internal/graphics/palette/WuQuantizer;->getIndex(III)I

    move-result v1

    aget v1, p3, v1

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->r0:I

    iget v2, p0, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->g1:I

    invoke-static {v1, v2, p2}, Lcom/android/internal/graphics/palette/WuQuantizer;->getIndex(III)I

    move-result v1

    aget v1, p3, v1

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->r0:I

    iget v2, p0, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->g0:I

    invoke-static {v1, v2, p2}, Lcom/android/internal/graphics/palette/WuQuantizer;->getIndex(III)I

    move-result v1

    aget v1, p3, v1

    add-int/2addr v0, v1

    return v0

    :pswitch_51  #0x2
    iget v0, p0, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->r1:I

    iget v1, p0, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->b1:I

    invoke-static {v0, p2, v1}, Lcom/android/internal/graphics/palette/WuQuantizer;->getIndex(III)I

    move-result v0

    aget v0, p3, v0

    iget v1, p0, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->r1:I

    iget v2, p0, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->b0:I

    invoke-static {v1, p2, v2}, Lcom/android/internal/graphics/palette/WuQuantizer;->getIndex(III)I

    move-result v1

    aget v1, p3, v1

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->r0:I

    iget v2, p0, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->b1:I

    invoke-static {v1, p2, v2}, Lcom/android/internal/graphics/palette/WuQuantizer;->getIndex(III)I

    move-result v1

    aget v1, p3, v1

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->r0:I

    iget v2, p0, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->b0:I

    invoke-static {v1, p2, v2}, Lcom/android/internal/graphics/palette/WuQuantizer;->getIndex(III)I

    move-result v1

    aget v1, p3, v1

    add-int/2addr v0, v1

    return v0

    :pswitch_7d  #0x1
    iget v0, p0, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->g1:I

    iget v1, p0, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->b1:I

    invoke-static {p2, v0, v1}, Lcom/android/internal/graphics/palette/WuQuantizer;->getIndex(III)I

    move-result v0

    aget v0, p3, v0

    iget v1, p0, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->g1:I

    iget v2, p0, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->b0:I

    invoke-static {p2, v1, v2}, Lcom/android/internal/graphics/palette/WuQuantizer;->getIndex(III)I

    move-result v1

    aget v1, p3, v1

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->g0:I

    iget v2, p0, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->b1:I

    invoke-static {p2, v1, v2}, Lcom/android/internal/graphics/palette/WuQuantizer;->getIndex(III)I

    move-result v1

    aget v1, p3, v1

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->g0:I

    iget v2, p0, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->b0:I

    invoke-static {p2, v1, v2}, Lcom/android/internal/graphics/palette/WuQuantizer;->getIndex(III)I

    move-result v1

    aget v1, p3, v1

    add-int/2addr v0, v1

    return v0

    nop

    :pswitch_data_aa
    .packed-switch 0x1
        :pswitch_7d  #00000001
        :pswitch_51  #00000002
        :pswitch_25  #00000003
    .end packed-switch
.end method

.method private variance(Lcom/android/internal/graphics/palette/WuQuantizer$Box;)D
    .registers 13

    iget-object v0, p0, Lcom/android/internal/graphics/palette/WuQuantizer;->mMomentsR:[I

    invoke-static {p1, v0}, Lcom/android/internal/graphics/palette/WuQuantizer;->volume(Lcom/android/internal/graphics/palette/WuQuantizer$Box;[I)I

    move-result v0

    iget-object v1, p0, Lcom/android/internal/graphics/palette/WuQuantizer;->mMomentsG:[I

    invoke-static {p1, v1}, Lcom/android/internal/graphics/palette/WuQuantizer;->volume(Lcom/android/internal/graphics/palette/WuQuantizer$Box;[I)I

    move-result v1

    iget-object v2, p0, Lcom/android/internal/graphics/palette/WuQuantizer;->mMomentsB:[I

    invoke-static {p1, v2}, Lcom/android/internal/graphics/palette/WuQuantizer;->volume(Lcom/android/internal/graphics/palette/WuQuantizer$Box;[I)I

    move-result v2

    iget-object v3, p0, Lcom/android/internal/graphics/palette/WuQuantizer;->mMoments:[D

    iget v4, p1, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->r1:I

    iget v5, p1, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->g1:I

    iget v6, p1, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->b1:I

    invoke-static {v4, v5, v6}, Lcom/android/internal/graphics/palette/WuQuantizer;->getIndex(III)I

    move-result v4

    aget-wide v3, v3, v4

    iget-object v5, p0, Lcom/android/internal/graphics/palette/WuQuantizer;->mMoments:[D

    iget v6, p1, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->r1:I

    iget v7, p1, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->g1:I

    iget v8, p1, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->b0:I

    invoke-static {v6, v7, v8}, Lcom/android/internal/graphics/palette/WuQuantizer;->getIndex(III)I

    move-result v6

    aget-wide v5, v5, v6

    sub-double/2addr v3, v5

    iget-object v5, p0, Lcom/android/internal/graphics/palette/WuQuantizer;->mMoments:[D

    iget v6, p1, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->r1:I

    iget v7, p1, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->g0:I

    iget v8, p1, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->b1:I

    invoke-static {v6, v7, v8}, Lcom/android/internal/graphics/palette/WuQuantizer;->getIndex(III)I

    move-result v6

    aget-wide v5, v5, v6

    sub-double/2addr v3, v5

    iget-object v5, p0, Lcom/android/internal/graphics/palette/WuQuantizer;->mMoments:[D

    iget v6, p1, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->r1:I

    iget v7, p1, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->g0:I

    iget v8, p1, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->b0:I

    invoke-static {v6, v7, v8}, Lcom/android/internal/graphics/palette/WuQuantizer;->getIndex(III)I

    move-result v6

    aget-wide v5, v5, v6

    add-double/2addr v3, v5

    iget-object v5, p0, Lcom/android/internal/graphics/palette/WuQuantizer;->mMoments:[D

    iget v6, p1, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->r0:I

    iget v7, p1, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->g1:I

    iget v8, p1, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->b1:I

    invoke-static {v6, v7, v8}, Lcom/android/internal/graphics/palette/WuQuantizer;->getIndex(III)I

    move-result v6

    aget-wide v5, v5, v6

    sub-double/2addr v3, v5

    iget-object v5, p0, Lcom/android/internal/graphics/palette/WuQuantizer;->mMoments:[D

    iget v6, p1, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->r0:I

    iget v7, p1, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->g1:I

    iget v8, p1, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->b0:I

    invoke-static {v6, v7, v8}, Lcom/android/internal/graphics/palette/WuQuantizer;->getIndex(III)I

    move-result v6

    aget-wide v5, v5, v6

    add-double/2addr v3, v5

    iget-object v5, p0, Lcom/android/internal/graphics/palette/WuQuantizer;->mMoments:[D

    iget v6, p1, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->r0:I

    iget v7, p1, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->g0:I

    iget v8, p1, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->b1:I

    invoke-static {v6, v7, v8}, Lcom/android/internal/graphics/palette/WuQuantizer;->getIndex(III)I

    move-result v6

    aget-wide v5, v5, v6

    add-double/2addr v3, v5

    iget-object v5, p0, Lcom/android/internal/graphics/palette/WuQuantizer;->mMoments:[D

    iget v6, p1, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->r0:I

    iget v7, p1, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->g0:I

    iget v8, p1, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->b0:I

    invoke-static {v6, v7, v8}, Lcom/android/internal/graphics/palette/WuQuantizer;->getIndex(III)I

    move-result v6

    aget-wide v5, v5, v6

    sub-double/2addr v3, v5

    mul-int v5, v0, v0

    mul-int v6, v1, v1

    add-int/2addr v5, v6

    mul-int v6, v2, v2

    add-int/2addr v5, v6

    iget-object v6, p0, Lcom/android/internal/graphics/palette/WuQuantizer;->mWeights:[I

    invoke-static {p1, v6}, Lcom/android/internal/graphics/palette/WuQuantizer;->volume(Lcom/android/internal/graphics/palette/WuQuantizer$Box;[I)I

    move-result v6

    int-to-double v7, v5

    int-to-double v9, v6

    div-double/2addr v7, v9

    sub-double v7, v3, v7

    return-wide v7
.end method

.method private static volume(Lcom/android/internal/graphics/palette/WuQuantizer$Box;[I)I
    .registers 6

    iget v0, p0, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->r1:I

    iget v1, p0, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->g1:I

    iget v2, p0, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->b1:I

    invoke-static {v0, v1, v2}, Lcom/android/internal/graphics/palette/WuQuantizer;->getIndex(III)I

    move-result v0

    aget v0, p1, v0

    iget v1, p0, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->r1:I

    iget v2, p0, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->g1:I

    iget v3, p0, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->b0:I

    invoke-static {v1, v2, v3}, Lcom/android/internal/graphics/palette/WuQuantizer;->getIndex(III)I

    move-result v1

    aget v1, p1, v1

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->r1:I

    iget v2, p0, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->g0:I

    iget v3, p0, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->b1:I

    invoke-static {v1, v2, v3}, Lcom/android/internal/graphics/palette/WuQuantizer;->getIndex(III)I

    move-result v1

    aget v1, p1, v1

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->r1:I

    iget v2, p0, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->g0:I

    iget v3, p0, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->b0:I

    invoke-static {v1, v2, v3}, Lcom/android/internal/graphics/palette/WuQuantizer;->getIndex(III)I

    move-result v1

    aget v1, p1, v1

    add-int/2addr v0, v1

    iget v1, p0, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->r0:I

    iget v2, p0, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->g1:I

    iget v3, p0, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->b1:I

    invoke-static {v1, v2, v3}, Lcom/android/internal/graphics/palette/WuQuantizer;->getIndex(III)I

    move-result v1

    aget v1, p1, v1

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->r0:I

    iget v2, p0, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->g1:I

    iget v3, p0, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->b0:I

    invoke-static {v1, v2, v3}, Lcom/android/internal/graphics/palette/WuQuantizer;->getIndex(III)I

    move-result v1

    aget v1, p1, v1

    add-int/2addr v0, v1

    iget v1, p0, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->r0:I

    iget v2, p0, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->g0:I

    iget v3, p0, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->b1:I

    invoke-static {v1, v2, v3}, Lcom/android/internal/graphics/palette/WuQuantizer;->getIndex(III)I

    move-result v1

    aget v1, p1, v1

    add-int/2addr v0, v1

    iget v1, p0, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->r0:I

    iget v2, p0, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->g0:I

    iget v3, p0, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->b0:I

    invoke-static {v1, v2, v3}, Lcom/android/internal/graphics/palette/WuQuantizer;->getIndex(III)I

    move-result v1

    aget v1, p1, v1

    sub-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method public getColors()[I
    .registers 2

    iget-object v0, p0, Lcom/android/internal/graphics/palette/WuQuantizer;->mColors:[I

    return-object v0
.end method

.method public getQuantizedColors()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/internal/graphics/palette/Palette$Swatch;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/graphics/palette/WuQuantizer;->mPalette:Lcom/android/internal/graphics/palette/Palette;

    invoke-virtual {v0}, Lcom/android/internal/graphics/palette/Palette;->getSwatches()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public inputPixelToCount()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/graphics/palette/WuQuantizer;->mInputPixelToCount:Ljava/util/Map;

    return-object v0
.end method

.method public quantize([II)V
    .registers 12

    nop

    new-instance v0, Lcom/android/internal/graphics/palette/QuantizerMap;

    invoke-direct {v0}, Lcom/android/internal/graphics/palette/QuantizerMap;-><init>()V

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/graphics/palette/QuantizerMap;->quantize([II)V

    invoke-virtual {v0}, Lcom/android/internal/graphics/palette/QuantizerMap;->getColorToCount()Ljava/util/Map;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/graphics/palette/WuQuantizer;->mInputPixelToCount:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v2

    if-gt v2, p2, :cond_45

    iget-object v2, p0, Lcom/android/internal/graphics/palette/WuQuantizer;->mInputPixelToCount:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/android/internal/graphics/palette/WuQuantizer;->mColors:[I

    const/4 v2, 0x0

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_44

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object v5, p0, Lcom/android/internal/graphics/palette/WuQuantizer;->mColors:[I

    add-int/lit8 v6, v2, 0x1

    aput v4, v5, v2

    move v2, v6

    goto :goto_2c

    :cond_44
    goto :goto_59

    :cond_45
    iget-object v2, p0, Lcom/android/internal/graphics/palette/WuQuantizer;->mInputPixelToCount:Ljava/util/Map;

    invoke-direct {p0, v2}, Lcom/android/internal/graphics/palette/WuQuantizer;->constructHistogram(Ljava/util/Map;)V

    invoke-direct {p0}, Lcom/android/internal/graphics/palette/WuQuantizer;->createMoments()V

    invoke-direct {p0, p2}, Lcom/android/internal/graphics/palette/WuQuantizer;->createBoxes(I)Lcom/android/internal/graphics/palette/WuQuantizer$CreateBoxesResult;

    move-result-object v2

    iget v3, v2, Lcom/android/internal/graphics/palette/WuQuantizer$CreateBoxesResult;->mResultCount:I

    invoke-direct {p0, v3}, Lcom/android/internal/graphics/palette/WuQuantizer;->createResult(I)[I

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/graphics/palette/WuQuantizer;->mColors:[I

    :goto_59
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, p0, Lcom/android/internal/graphics/palette/WuQuantizer;->mColors:[I

    array-length v4, v3

    const/4 v5, 0x0

    move v6, v5

    :goto_63
    if-ge v6, v4, :cond_72

    aget v7, v3, v6

    new-instance v8, Lcom/android/internal/graphics/palette/Palette$Swatch;

    invoke-direct {v8, v7, v5}, Lcom/android/internal/graphics/palette/Palette$Swatch;-><init>(II)V

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_63

    :cond_72
    invoke-static {v2}, Lcom/android/internal/graphics/palette/Palette;->from(Ljava/util/List;)Lcom/android/internal/graphics/palette/Palette;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/graphics/palette/WuQuantizer;->mPalette:Lcom/android/internal/graphics/palette/Palette;

    return-void
.end method
