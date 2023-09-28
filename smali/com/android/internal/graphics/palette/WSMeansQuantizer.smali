# classes4.dex

.class public final Lcom/android/internal/graphics/palette/WSMeansQuantizer;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/internal/graphics/palette/Quantizer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/graphics/palette/WSMeansQuantizer$Distance;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final DEBUG:Z = false

.field private static final MAX_ITERATIONS:I = 0xa

.field private static final MIN_MOVEMENT_DISTANCE:F = 3.0f

.field private static final TAG:Ljava/lang/String; = "QuantizerWsmeans"


# instance fields
.field private mClusterIndices:[I

.field private mClusterPopulations:[I

.field private mClusters:[[F

.field private mDistanceMatrix:[[F

.field private mIndexMatrix:[[I

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

.field private mPalette:Lcom/android/internal/graphics/palette/Palette;

.field private mPixels:[I

.field private final mPointProvider:Lcom/android/internal/graphics/palette/PointProvider;

.field private mPoints:[[F


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>([ILcom/android/internal/graphics/palette/PointProvider;Ljava/util/Map;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I",
            "Lcom/android/internal/graphics/palette/PointProvider;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    new-array v1, v0, [[I

    iput-object v1, p0, Lcom/android/internal/graphics/palette/WSMeansQuantizer;->mIndexMatrix:[[I

    new-array v1, v0, [[F

    iput-object v1, p0, Lcom/android/internal/graphics/palette/WSMeansQuantizer;->mDistanceMatrix:[[F

    iput-object p2, p0, Lcom/android/internal/graphics/palette/WSMeansQuantizer;->mPointProvider:Lcom/android/internal/graphics/palette/PointProvider;

    array-length v1, p1

    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x1

    const/4 v4, 0x3

    aput v4, v2, v3

    aput v1, v2, v0

    const-class v1, F

    invoke-static {v1, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[F

    iput-object v1, p0, Lcom/android/internal/graphics/palette/WSMeansQuantizer;->mClusters:[[F

    const/4 v1, 0x0

    array-length v2, p1

    :goto_24
    if-ge v0, v2, :cond_36

    aget v3, p1, v0

    invoke-interface {p2, v3}, Lcom/android/internal/graphics/palette/PointProvider;->fromInt(I)[F

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/graphics/palette/WSMeansQuantizer;->mClusters:[[F

    add-int/lit8 v6, v1, 0x1

    aput-object v4, v5, v1

    add-int/lit8 v0, v0, 0x1

    move v1, v6

    goto :goto_24

    :cond_36
    iput-object p3, p0, Lcom/android/internal/graphics/palette/WSMeansQuantizer;->mInputPixelToCount:Ljava/util/Map;

    return-void
.end method

.method private initializeClusters(I)V
    .registers 15

    iget-object v0, p0, Lcom/android/internal/graphics/palette/WSMeansQuantizer;->mClusters:[[F

    array-length v1, v0

    const/4 v2, 0x0

    if-lez v1, :cond_8

    const/4 v1, 0x1

    goto :goto_9

    :cond_8
    move v1, v2

    :goto_9
    const-wide/32 v3, 0x42688

    if-nez v1, :cond_69

    array-length v0, v0

    sub-int v0, p1, v0

    new-instance v5, Ljava/util/Random;

    invoke-direct {v5, v3, v4}, Ljava/util/Random;-><init>(J)V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, v0}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    const/4 v8, 0x0

    :goto_21
    if-ge v8, v0, :cond_54

    iget-object v9, p0, Lcom/android/internal/graphics/palette/WSMeansQuantizer;->mPoints:[[F

    array-length v9, v9

    invoke-virtual {v5, v9}, Ljava/util/Random;->nextInt(I)I

    move-result v9

    :goto_2a
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v7, v10}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_43

    invoke-interface {v7}, Ljava/util/Set;->size()I

    move-result v10

    iget-object v11, p0, Lcom/android/internal/graphics/palette/WSMeansQuantizer;->mPoints:[[F

    array-length v12, v11

    if-ge v10, v12, :cond_43

    array-length v10, v11

    invoke-virtual {v5, v10}, Ljava/util/Random;->nextInt(I)I

    move-result v9

    goto :goto_2a

    :cond_43
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v7, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v10, p0, Lcom/android/internal/graphics/palette/WSMeansQuantizer;->mPoints:[[F

    aget-object v10, v10, v9

    invoke-interface {v6, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    goto :goto_21

    :cond_54
    invoke-interface {v6}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [[F

    iget-object v9, p0, Lcom/android/internal/graphics/palette/WSMeansQuantizer;->mClusters:[[F

    invoke-static {v9, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [[F

    array-length v10, v9

    array-length v11, v8

    invoke-static {v8, v2, v9, v10, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v9, p0, Lcom/android/internal/graphics/palette/WSMeansQuantizer;->mClusters:[[F

    :cond_69
    iget-object v0, p0, Lcom/android/internal/graphics/palette/WSMeansQuantizer;->mPixels:[I

    array-length v2, v0

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/android/internal/graphics/palette/WSMeansQuantizer;->mClusterIndices:[I

    array-length v0, v0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/internal/graphics/palette/WSMeansQuantizer;->mClusterPopulations:[I

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0, v3, v4}, Ljava/util/Random;-><init>(J)V

    const/4 v2, 0x0

    :goto_7b
    iget-object v3, p0, Lcom/android/internal/graphics/palette/WSMeansQuantizer;->mPixels:[I

    array-length v3, v3

    if-ge v2, v3, :cond_a3

    invoke-virtual {v0, p1}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    iget-object v4, p0, Lcom/android/internal/graphics/palette/WSMeansQuantizer;->mClusterIndices:[I

    aput v3, v4, v2

    iget-object v4, p0, Lcom/android/internal/graphics/palette/WSMeansQuantizer;->mClusterPopulations:[I

    iget-object v5, p0, Lcom/android/internal/graphics/palette/WSMeansQuantizer;->mInputPixelToCount:Ljava/util/Map;

    iget-object v6, p0, Lcom/android/internal/graphics/palette/WSMeansQuantizer;->mPixels:[I

    aget v6, v6, v2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    aput v5, v4, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_7b

    :cond_a3
    return-void
.end method

.method static synthetic lambda$calculateClusterDistances$0(Lcom/android/internal/graphics/palette/WSMeansQuantizer$Distance;Lcom/android/internal/graphics/palette/WSMeansQuantizer$Distance;)I
    .registers 4

    invoke-virtual {p0}, Lcom/android/internal/graphics/palette/WSMeansQuantizer$Distance;->getDistance()F

    move-result v0

    invoke-virtual {p1}, Lcom/android/internal/graphics/palette/WSMeansQuantizer$Distance;->getDistance()F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    return v0
.end method


# virtual methods
.method calculateClusterDistances(I)V
    .registers 10

    iget-object v0, p0, Lcom/android/internal/graphics/palette/WSMeansQuantizer;->mDistanceMatrix:[[F

    array-length v0, v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq v0, p1, :cond_18

    new-array v0, v2, [I

    aput p1, v0, v3

    aput p1, v0, v1

    const-class v4, F

    invoke-static {v4, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[F

    iput-object v0, p0, Lcom/android/internal/graphics/palette/WSMeansQuantizer;->mDistanceMatrix:[[F

    :cond_18
    const/4 v0, 0x0

    :goto_19
    if-gt v0, p1, :cond_3b

    add-int/lit8 v4, v0, 0x1

    :goto_1d
    if-ge v4, p1, :cond_38

    iget-object v5, p0, Lcom/android/internal/graphics/palette/WSMeansQuantizer;->mPointProvider:Lcom/android/internal/graphics/palette/PointProvider;

    iget-object v6, p0, Lcom/android/internal/graphics/palette/WSMeansQuantizer;->mClusters:[[F

    aget-object v7, v6, v0

    aget-object v6, v6, v4

    invoke-interface {v5, v7, v6}, Lcom/android/internal/graphics/palette/PointProvider;->distance([F[F)F

    move-result v5

    iget-object v6, p0, Lcom/android/internal/graphics/palette/WSMeansQuantizer;->mDistanceMatrix:[[F

    aget-object v7, v6, v4

    aput v5, v7, v0

    aget-object v6, v6, v0

    aput v5, v6, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1d

    :cond_38
    add-int/lit8 v0, v0, 0x1

    goto :goto_19

    :cond_3b
    iget-object v0, p0, Lcom/android/internal/graphics/palette/WSMeansQuantizer;->mIndexMatrix:[[I

    array-length v0, v0

    if-eq v0, p1, :cond_50

    new-array v0, v2, [I

    aput p1, v0, v3

    aput p1, v0, v1

    const-class v1, I

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    iput-object v0, p0, Lcom/android/internal/graphics/palette/WSMeansQuantizer;->mIndexMatrix:[[I

    :cond_50
    const/4 v0, 0x0

    :goto_51
    if-ge v0, p1, :cond_8d

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    :goto_59
    if-ge v2, p1, :cond_6c

    new-instance v3, Lcom/android/internal/graphics/palette/WSMeansQuantizer$Distance;

    iget-object v4, p0, Lcom/android/internal/graphics/palette/WSMeansQuantizer;->mDistanceMatrix:[[F

    aget-object v4, v4, v0

    aget v4, v4, v2

    invoke-direct {v3, v2, v4}, Lcom/android/internal/graphics/palette/WSMeansQuantizer$Distance;-><init>(IF)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_59

    :cond_6c
    new-instance v2, Lcom/android/internal/graphics/palette/WSMeansQuantizer$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Lcom/android/internal/graphics/palette/WSMeansQuantizer$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    const/4 v2, 0x0

    :goto_75
    if-ge v2, p1, :cond_8a

    iget-object v3, p0, Lcom/android/internal/graphics/palette/WSMeansQuantizer;->mIndexMatrix:[[I

    aget-object v3, v3, v0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/graphics/palette/WSMeansQuantizer$Distance;

    invoke-virtual {v4}, Lcom/android/internal/graphics/palette/WSMeansQuantizer$Distance;->getIndex()I

    move-result v4

    aput v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_75

    :cond_8a
    add-int/lit8 v0, v0, 0x1

    goto :goto_51

    :cond_8d
    return-void
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

    iget-object v0, p0, Lcom/android/internal/graphics/palette/WSMeansQuantizer;->mPalette:Lcom/android/internal/graphics/palette/Palette;

    invoke-virtual {v0}, Lcom/android/internal/graphics/palette/Palette;->getSwatches()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public quantize([II)V
    .registers 10

    nop

    iget-object v0, p0, Lcom/android/internal/graphics/palette/WSMeansQuantizer;->mInputPixelToCount:Ljava/util/Map;

    if-nez v0, :cond_13

    new-instance v0, Lcom/android/internal/graphics/palette/QuantizerMap;

    invoke-direct {v0}, Lcom/android/internal/graphics/palette/QuantizerMap;-><init>()V

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/graphics/palette/QuantizerMap;->quantize([II)V

    invoke-virtual {v0}, Lcom/android/internal/graphics/palette/QuantizerMap;->getColorToCount()Ljava/util/Map;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/graphics/palette/WSMeansQuantizer;->mInputPixelToCount:Ljava/util/Map;

    :cond_13
    iget-object v0, p0, Lcom/android/internal/graphics/palette/WSMeansQuantizer;->mInputPixelToCount:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x1

    aput v1, v2, v3

    const/4 v1, 0x0

    aput v0, v2, v1

    const-class v0, F

    invoke-static {v0, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[F

    iput-object v0, p0, Lcom/android/internal/graphics/palette/WSMeansQuantizer;->mPoints:[[F

    iget-object v0, p0, Lcom/android/internal/graphics/palette/WSMeansQuantizer;->mInputPixelToCount:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/internal/graphics/palette/WSMeansQuantizer;->mPixels:[I

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/internal/graphics/palette/WSMeansQuantizer;->mInputPixelToCount:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_42
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_64

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, p0, Lcom/android/internal/graphics/palette/WSMeansQuantizer;->mPixels:[I

    aput v2, v3, v0

    iget-object v3, p0, Lcom/android/internal/graphics/palette/WSMeansQuantizer;->mPoints:[[F

    iget-object v4, p0, Lcom/android/internal/graphics/palette/WSMeansQuantizer;->mPointProvider:Lcom/android/internal/graphics/palette/PointProvider;

    invoke-interface {v4, v2}, Lcom/android/internal/graphics/palette/PointProvider;->fromInt(I)[F

    move-result-object v4

    aput-object v4, v3, v0

    nop

    add-int/lit8 v0, v0, 0x1

    goto :goto_42

    :cond_64
    iget-object v1, p0, Lcom/android/internal/graphics/palette/WSMeansQuantizer;->mClusters:[[F

    array-length v2, v1

    if-lez v2, :cond_6e

    array-length v1, v1

    invoke-static {p2, v1}, Ljava/lang/Math;->min(II)I

    move-result p2

    :cond_6e
    iget-object v1, p0, Lcom/android/internal/graphics/palette/WSMeansQuantizer;->mPoints:[[F

    array-length v1, v1

    invoke-static {p2, v1}, Ljava/lang/Math;->min(II)I

    move-result p2

    invoke-direct {p0, p2}, Lcom/android/internal/graphics/palette/WSMeansQuantizer;->initializeClusters(I)V

    const/4 v1, 0x0

    :goto_79
    const/16 v2, 0xa

    if-ge v1, v2, :cond_8d

    invoke-virtual {p0, p2}, Lcom/android/internal/graphics/palette/WSMeansQuantizer;->calculateClusterDistances(I)V

    invoke-virtual {p0, p2}, Lcom/android/internal/graphics/palette/WSMeansQuantizer;->reassignPoints(I)Z

    move-result v2

    if-nez v2, :cond_87

    goto :goto_8d

    :cond_87
    invoke-virtual {p0, p2}, Lcom/android/internal/graphics/palette/WSMeansQuantizer;->recalculateClusterCenters(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_79

    :cond_8d
    :goto_8d
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    :goto_93
    if-ge v2, p2, :cond_ae

    iget-object v3, p0, Lcom/android/internal/graphics/palette/WSMeansQuantizer;->mClusters:[[F

    aget-object v3, v3, v2

    iget-object v4, p0, Lcom/android/internal/graphics/palette/WSMeansQuantizer;->mPointProvider:Lcom/android/internal/graphics/palette/PointProvider;

    invoke-interface {v4, v3}, Lcom/android/internal/graphics/palette/PointProvider;->toInt([F)I

    move-result v4

    new-instance v5, Lcom/android/internal/graphics/palette/Palette$Swatch;

    iget-object v6, p0, Lcom/android/internal/graphics/palette/WSMeansQuantizer;->mClusterPopulations:[I

    aget v6, v6, v2

    invoke-direct {v5, v4, v6}, Lcom/android/internal/graphics/palette/Palette$Swatch;-><init>(II)V

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_93

    :cond_ae
    invoke-static {v1}, Lcom/android/internal/graphics/palette/Palette;->from(Ljava/util/List;)Lcom/android/internal/graphics/palette/Palette;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/graphics/palette/WSMeansQuantizer;->mPalette:Lcom/android/internal/graphics/palette/Palette;

    return-void
.end method

.method reassignPoints(I)Z
    .registers 14

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_2
    iget-object v2, p0, Lcom/android/internal/graphics/palette/WSMeansQuantizer;->mPoints:[[F

    array-length v3, v2

    if-ge v1, v3, :cond_64

    aget-object v2, v2, v1

    iget-object v3, p0, Lcom/android/internal/graphics/palette/WSMeansQuantizer;->mClusterIndices:[I

    aget v3, v3, v1

    iget-object v4, p0, Lcom/android/internal/graphics/palette/WSMeansQuantizer;->mClusters:[[F

    aget-object v4, v4, v3

    iget-object v5, p0, Lcom/android/internal/graphics/palette/WSMeansQuantizer;->mPointProvider:Lcom/android/internal/graphics/palette/PointProvider;

    invoke-interface {v5, v2, v4}, Lcom/android/internal/graphics/palette/PointProvider;->distance([F[F)F

    move-result v5

    move v6, v5

    const/4 v7, -0x1

    const/4 v8, 0x1

    :goto_1a
    if-ge v8, p1, :cond_43

    iget-object v9, p0, Lcom/android/internal/graphics/palette/WSMeansQuantizer;->mIndexMatrix:[[I

    aget-object v9, v9, v3

    aget v9, v9, v8

    iget-object v10, p0, Lcom/android/internal/graphics/palette/WSMeansQuantizer;->mDistanceMatrix:[[F

    aget-object v10, v10, v3

    aget v10, v10, v9

    const/high16 v11, 0x40800000  # 4.0f

    mul-float/2addr v11, v5

    cmpl-float v10, v10, v11

    if-ltz v10, :cond_30

    goto :goto_43

    :cond_30
    iget-object v10, p0, Lcom/android/internal/graphics/palette/WSMeansQuantizer;->mPointProvider:Lcom/android/internal/graphics/palette/PointProvider;

    iget-object v11, p0, Lcom/android/internal/graphics/palette/WSMeansQuantizer;->mClusters:[[F

    aget-object v11, v11, v9

    invoke-interface {v10, v2, v11}, Lcom/android/internal/graphics/palette/PointProvider;->distance([F[F)F

    move-result v10

    cmpg-float v11, v10, v6

    if-gez v11, :cond_40

    move v6, v10

    move v7, v9

    :cond_40
    add-int/lit8 v8, v8, 0x1

    goto :goto_1a

    :cond_43
    :goto_43
    const/4 v8, -0x1

    if-eq v7, v8, :cond_61

    float-to-double v8, v6

    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    float-to-double v10, v5

    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v10

    sub-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->abs(D)D

    move-result-wide v8

    double-to-float v8, v8

    const/high16 v9, 0x40400000  # 3.0f

    cmpl-float v9, v8, v9

    if-lez v9, :cond_61

    const/4 v0, 0x1

    iget-object v9, p0, Lcom/android/internal/graphics/palette/WSMeansQuantizer;->mClusterIndices:[I

    aput v7, v9, v1

    :cond_61
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_64
    return v0
.end method

.method recalculateClusterCenters(I)V
    .registers 15

    new-array v0, p1, [I

    iput-object v0, p0, Lcom/android/internal/graphics/palette/WSMeansQuantizer;->mClusterPopulations:[I

    new-array v0, p1, [F

    new-array v1, p1, [F

    new-array v2, p1, [F

    const/4 v3, 0x0

    :goto_b
    iget-object v4, p0, Lcom/android/internal/graphics/palette/WSMeansQuantizer;->mPoints:[[F

    array-length v5, v4

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-ge v3, v5, :cond_52

    iget-object v5, p0, Lcom/android/internal/graphics/palette/WSMeansQuantizer;->mClusterIndices:[I

    aget v5, v5, v3

    aget-object v4, v4, v3

    iget-object v9, p0, Lcom/android/internal/graphics/palette/WSMeansQuantizer;->mPixels:[I

    aget v9, v9, v3

    iget-object v10, p0, Lcom/android/internal/graphics/palette/WSMeansQuantizer;->mInputPixelToCount:Ljava/util/Map;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    iget-object v11, p0, Lcom/android/internal/graphics/palette/WSMeansQuantizer;->mClusterPopulations:[I

    aget v12, v11, v5

    add-int/2addr v12, v10

    aput v12, v11, v5

    aget v11, v0, v5

    aget v7, v4, v7

    int-to-float v12, v10

    mul-float/2addr v7, v12

    add-float/2addr v11, v7

    aput v11, v0, v5

    aget v7, v1, v5

    aget v8, v4, v8

    int-to-float v11, v10

    mul-float/2addr v8, v11

    add-float/2addr v7, v8

    aput v7, v1, v5

    aget v7, v2, v5

    aget v6, v4, v6

    int-to-float v8, v10

    mul-float/2addr v6, v8

    add-float/2addr v7, v6

    aput v7, v2, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    :cond_52
    const/4 v3, 0x0

    :goto_53
    if-ge v3, p1, :cond_75

    iget-object v4, p0, Lcom/android/internal/graphics/palette/WSMeansQuantizer;->mClusterPopulations:[I

    aget v4, v4, v3

    aget v5, v0, v3

    aget v9, v1, v3

    aget v10, v2, v3

    iget-object v11, p0, Lcom/android/internal/graphics/palette/WSMeansQuantizer;->mClusters:[[F

    aget-object v11, v11, v3

    int-to-float v12, v4

    div-float v12, v5, v12

    aput v12, v11, v7

    int-to-float v12, v4

    div-float v12, v9, v12

    aput v12, v11, v8

    int-to-float v12, v4

    div-float v12, v10, v12

    aput v12, v11, v6

    add-int/lit8 v3, v3, 0x1

    goto :goto_53

    :cond_75
    return-void
.end method
