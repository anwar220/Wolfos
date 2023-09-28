# classes3.dex

.class public Landroid/text/MeasuredParagraph;
.super Ljava/lang/Object;


# static fields
.field private static final OBJECT_REPLACEMENT_CHARACTER:C = '\ufffc'

.field private static final sPool:Landroid/util/Pools$SynchronizedPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pools$SynchronizedPool<",
            "Landroid/text/MeasuredParagraph;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mCachedFm:Landroid/graphics/Paint$FontMetricsInt;

.field private mCachedPaint:Landroid/text/TextPaint;

.field private mCopiedBuffer:[C

.field private mFontMetrics:Landroid/text/AutoGrowArray$IntArray;

.field private mLevels:Landroid/text/AutoGrowArray$ByteArray;

.field private mLtrWithoutBidi:Z

.field private mMeasuredText:Landroid/graphics/text/MeasuredText;

.field private mParaDir:I

.field private mSpanEndCache:Landroid/text/AutoGrowArray$IntArray;

.field private mSpanned:Landroid/text/Spanned;

.field private mTextLength:I

.field private mTextStart:I

.field private mWholeWidth:F

.field private mWidths:Landroid/text/AutoGrowArray$FloatArray;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Landroid/util/Pools$SynchronizedPool;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/util/Pools$SynchronizedPool;-><init>(I)V

    sput-object v0, Landroid/text/MeasuredParagraph;->sPool:Landroid/util/Pools$SynchronizedPool;

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/text/AutoGrowArray$ByteArray;

    invoke-direct {v0}, Landroid/text/AutoGrowArray$ByteArray;-><init>()V

    iput-object v0, p0, Landroid/text/MeasuredParagraph;->mLevels:Landroid/text/AutoGrowArray$ByteArray;

    new-instance v0, Landroid/text/AutoGrowArray$FloatArray;

    invoke-direct {v0}, Landroid/text/AutoGrowArray$FloatArray;-><init>()V

    iput-object v0, p0, Landroid/text/MeasuredParagraph;->mWidths:Landroid/text/AutoGrowArray$FloatArray;

    new-instance v0, Landroid/text/AutoGrowArray$IntArray;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Landroid/text/AutoGrowArray$IntArray;-><init>(I)V

    iput-object v0, p0, Landroid/text/MeasuredParagraph;->mSpanEndCache:Landroid/text/AutoGrowArray$IntArray;

    new-instance v0, Landroid/text/AutoGrowArray$IntArray;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/text/AutoGrowArray$IntArray;-><init>(I)V

    iput-object v0, p0, Landroid/text/MeasuredParagraph;->mFontMetrics:Landroid/text/AutoGrowArray$IntArray;

    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    iput-object v0, p0, Landroid/text/MeasuredParagraph;->mCachedPaint:Landroid/text/TextPaint;

    return-void
.end method

.method private applyMetricsAffectingSpan(Landroid/text/TextPaint;Landroid/graphics/text/LineBreakConfig;[Landroid/text/style/MetricAffectingSpan;IILandroid/graphics/text/MeasuredText$Builder;)V
    .registers 20

    move-object v6, p0

    move-object/from16 v7, p3

    iget-object v0, v6, Landroid/text/MeasuredParagraph;->mCachedPaint:Landroid/text/TextPaint;

    move-object v8, p1

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V

    iget-object v0, v6, Landroid/text/MeasuredParagraph;->mCachedPaint:Landroid/text/TextPaint;

    const/4 v1, 0x0

    iput v1, v0, Landroid/text/TextPaint;->baselineShift:I

    if-eqz p6, :cond_11

    const/4 v1, 0x1

    :cond_11
    move v9, v1

    if-eqz v9, :cond_1f

    iget-object v0, v6, Landroid/text/MeasuredParagraph;->mCachedFm:Landroid/graphics/Paint$FontMetricsInt;

    if-nez v0, :cond_1f

    new-instance v0, Landroid/graphics/Paint$FontMetricsInt;

    invoke-direct {v0}, Landroid/graphics/Paint$FontMetricsInt;-><init>()V

    iput-object v0, v6, Landroid/text/MeasuredParagraph;->mCachedFm:Landroid/graphics/Paint$FontMetricsInt;

    :cond_1f
    const/4 v0, 0x0

    if-eqz v7, :cond_3a

    const/4 v1, 0x0

    :goto_23
    array-length v2, v7

    if-ge v1, v2, :cond_38

    aget-object v2, v7, v1

    instance-of v3, v2, Landroid/text/style/ReplacementSpan;

    if-eqz v3, :cond_30

    move-object v0, v2

    check-cast v0, Landroid/text/style/ReplacementSpan;

    goto :goto_35

    :cond_30
    iget-object v3, v6, Landroid/text/MeasuredParagraph;->mCachedPaint:Landroid/text/TextPaint;

    invoke-virtual {v2, v3}, Landroid/text/style/MetricAffectingSpan;->updateMeasureState(Landroid/text/TextPaint;)V

    :goto_35
    add-int/lit8 v1, v1, 0x1

    goto :goto_23

    :cond_38
    move-object v10, v0

    goto :goto_3b

    :cond_3a
    move-object v10, v0

    :goto_3b
    iget v0, v6, Landroid/text/MeasuredParagraph;->mTextStart:I

    sub-int v11, p4, v0

    sub-int v12, p5, v0

    if-eqz p6, :cond_4a

    iget-object v0, v6, Landroid/text/MeasuredParagraph;->mCachedPaint:Landroid/text/TextPaint;

    iget-object v1, v6, Landroid/text/MeasuredParagraph;->mCachedFm:Landroid/graphics/Paint$FontMetricsInt;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->getFontMetricsInt(Landroid/graphics/Paint$FontMetricsInt;)I

    :cond_4a
    if-eqz v10, :cond_58

    iget-object v4, v6, Landroid/text/MeasuredParagraph;->mCachedPaint:Landroid/text/TextPaint;

    move-object v0, p0

    move-object v1, v10

    move v2, v11

    move v3, v12

    move-object/from16 v5, p6

    invoke-direct/range {v0 .. v5}, Landroid/text/MeasuredParagraph;->applyReplacementRun(Landroid/text/style/ReplacementSpan;IILandroid/text/TextPaint;Landroid/graphics/text/MeasuredText$Builder;)V

    goto :goto_63

    :cond_58
    iget-object v3, v6, Landroid/text/MeasuredParagraph;->mCachedPaint:Landroid/text/TextPaint;

    move-object v0, p0

    move v1, v11

    move v2, v12

    move-object v4, p2

    move-object/from16 v5, p6

    invoke-direct/range {v0 .. v5}, Landroid/text/MeasuredParagraph;->applyStyleRun(IILandroid/text/TextPaint;Landroid/graphics/text/LineBreakConfig;Landroid/graphics/text/MeasuredText$Builder;)V

    :goto_63
    if-eqz v9, :cond_bc

    iget-object v0, v6, Landroid/text/MeasuredParagraph;->mCachedPaint:Landroid/text/TextPaint;

    iget v0, v0, Landroid/text/TextPaint;->baselineShift:I

    if-gez v0, :cond_82

    iget-object v0, v6, Landroid/text/MeasuredParagraph;->mCachedFm:Landroid/graphics/Paint$FontMetricsInt;

    iget v1, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    iget-object v2, v6, Landroid/text/MeasuredParagraph;->mCachedPaint:Landroid/text/TextPaint;

    iget v2, v2, Landroid/text/TextPaint;->baselineShift:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    iget-object v0, v6, Landroid/text/MeasuredParagraph;->mCachedFm:Landroid/graphics/Paint$FontMetricsInt;

    iget v1, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    iget-object v2, v6, Landroid/text/MeasuredParagraph;->mCachedPaint:Landroid/text/TextPaint;

    iget v2, v2, Landroid/text/TextPaint;->baselineShift:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    goto :goto_98

    :cond_82
    iget-object v0, v6, Landroid/text/MeasuredParagraph;->mCachedFm:Landroid/graphics/Paint$FontMetricsInt;

    iget v1, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    iget-object v2, v6, Landroid/text/MeasuredParagraph;->mCachedPaint:Landroid/text/TextPaint;

    iget v2, v2, Landroid/text/TextPaint;->baselineShift:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    iget-object v0, v6, Landroid/text/MeasuredParagraph;->mCachedFm:Landroid/graphics/Paint$FontMetricsInt;

    iget v1, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    iget-object v2, v6, Landroid/text/MeasuredParagraph;->mCachedPaint:Landroid/text/TextPaint;

    iget v2, v2, Landroid/text/TextPaint;->baselineShift:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    :goto_98
    iget-object v0, v6, Landroid/text/MeasuredParagraph;->mFontMetrics:Landroid/text/AutoGrowArray$IntArray;

    iget-object v1, v6, Landroid/text/MeasuredParagraph;->mCachedFm:Landroid/graphics/Paint$FontMetricsInt;

    iget v1, v1, Landroid/graphics/Paint$FontMetricsInt;->top:I

    invoke-virtual {v0, v1}, Landroid/text/AutoGrowArray$IntArray;->append(I)V

    iget-object v0, v6, Landroid/text/MeasuredParagraph;->mFontMetrics:Landroid/text/AutoGrowArray$IntArray;

    iget-object v1, v6, Landroid/text/MeasuredParagraph;->mCachedFm:Landroid/graphics/Paint$FontMetricsInt;

    iget v1, v1, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    invoke-virtual {v0, v1}, Landroid/text/AutoGrowArray$IntArray;->append(I)V

    iget-object v0, v6, Landroid/text/MeasuredParagraph;->mFontMetrics:Landroid/text/AutoGrowArray$IntArray;

    iget-object v1, v6, Landroid/text/MeasuredParagraph;->mCachedFm:Landroid/graphics/Paint$FontMetricsInt;

    iget v1, v1, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    invoke-virtual {v0, v1}, Landroid/text/AutoGrowArray$IntArray;->append(I)V

    iget-object v0, v6, Landroid/text/MeasuredParagraph;->mFontMetrics:Landroid/text/AutoGrowArray$IntArray;

    iget-object v1, v6, Landroid/text/MeasuredParagraph;->mCachedFm:Landroid/graphics/Paint$FontMetricsInt;

    iget v1, v1, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    invoke-virtual {v0, v1}, Landroid/text/AutoGrowArray$IntArray;->append(I)V

    :cond_bc
    return-void
.end method

.method private applyReplacementRun(Landroid/text/style/ReplacementSpan;IILandroid/text/TextPaint;Landroid/graphics/text/MeasuredText$Builder;)V
    .registers 12

    iget-object v2, p0, Landroid/text/MeasuredParagraph;->mSpanned:Landroid/text/Spanned;

    iget v0, p0, Landroid/text/MeasuredParagraph;->mTextStart:I

    add-int v3, p2, v0

    add-int v4, p3, v0

    iget-object v5, p0, Landroid/text/MeasuredParagraph;->mCachedFm:Landroid/graphics/Paint$FontMetricsInt;

    move-object v0, p1

    move-object v1, p4

    invoke-virtual/range {v0 .. v5}, Landroid/text/style/ReplacementSpan;->getSize(Landroid/graphics/Paint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;)I

    move-result v0

    int-to-float v0, v0

    if-nez p5, :cond_2e

    iget-object v1, p0, Landroid/text/MeasuredParagraph;->mWidths:Landroid/text/AutoGrowArray$FloatArray;

    invoke-virtual {v1, p2, v0}, Landroid/text/AutoGrowArray$FloatArray;->set(IF)V

    add-int/lit8 v1, p2, 0x1

    if-le p3, v1, :cond_28

    iget-object v1, p0, Landroid/text/MeasuredParagraph;->mWidths:Landroid/text/AutoGrowArray$FloatArray;

    invoke-virtual {v1}, Landroid/text/AutoGrowArray$FloatArray;->getRawArray()[F

    move-result-object v1

    add-int/lit8 v2, p2, 0x1

    const/4 v3, 0x0

    invoke-static {v1, v2, p3, v3}, Ljava/util/Arrays;->fill([FIIF)V

    :cond_28
    iget v1, p0, Landroid/text/MeasuredParagraph;->mWholeWidth:F

    add-float/2addr v1, v0

    iput v1, p0, Landroid/text/MeasuredParagraph;->mWholeWidth:F

    goto :goto_33

    :cond_2e
    sub-int v1, p3, p2

    invoke-virtual {p5, p4, v1, v0}, Landroid/graphics/text/MeasuredText$Builder;->appendReplacementRun(Landroid/graphics/Paint;IF)Landroid/graphics/text/MeasuredText$Builder;

    :goto_33
    return-void
.end method

.method private applyStyleRun(IILandroid/text/TextPaint;Landroid/graphics/text/LineBreakConfig;Landroid/graphics/text/MeasuredText$Builder;)V
    .registers 27

    move-object/from16 v0, p0

    move/from16 v10, p1

    move/from16 v11, p2

    move-object/from16 v12, p3

    move-object/from16 v13, p4

    move-object/from16 v14, p5

    iget-boolean v1, v0, Landroid/text/MeasuredParagraph;->mLtrWithoutBidi:Z

    const/4 v15, 0x0

    if-eqz v1, :cond_3a

    if-nez v14, :cond_33

    iget v15, v0, Landroid/text/MeasuredParagraph;->mWholeWidth:F

    iget-object v2, v0, Landroid/text/MeasuredParagraph;->mCopiedBuffer:[C

    sub-int v4, v11, v10

    sub-int v6, v11, v10

    const/4 v7, 0x0

    iget-object v1, v0, Landroid/text/MeasuredParagraph;->mWidths:Landroid/text/AutoGrowArray$FloatArray;

    invoke-virtual {v1}, Landroid/text/AutoGrowArray$FloatArray;->getRawArray()[F

    move-result-object v8

    move-object/from16 v1, p3

    move/from16 v3, p1

    move/from16 v5, p1

    move/from16 v9, p1

    invoke-virtual/range {v1 .. v9}, Landroid/text/TextPaint;->getTextRunAdvances([CIIIIZ[FI)F

    move-result v1

    add-float/2addr v15, v1

    iput v15, v0, Landroid/text/MeasuredParagraph;->mWholeWidth:F

    goto/16 :goto_9a

    :cond_33
    sub-int v1, v11, v10

    invoke-virtual {v14, v12, v13, v1, v15}, Landroid/graphics/text/MeasuredText$Builder;->appendStyleRun(Landroid/graphics/Paint;Landroid/graphics/text/LineBreakConfig;IZ)Landroid/graphics/text/MeasuredText$Builder;

    goto/16 :goto_9a

    :cond_3a
    iget-object v1, v0, Landroid/text/MeasuredParagraph;->mLevels:Landroid/text/AutoGrowArray$ByteArray;

    invoke-virtual {v1, v10}, Landroid/text/AutoGrowArray$ByteArray;->get(I)B

    move-result v1

    move/from16 v2, p1

    add-int/lit8 v3, v10, 0x1

    move v9, v1

    move/from16 v16, v2

    move v8, v3

    :goto_48
    if-eq v8, v11, :cond_55

    iget-object v1, v0, Landroid/text/MeasuredParagraph;->mLevels:Landroid/text/AutoGrowArray$ByteArray;

    invoke-virtual {v1, v8}, Landroid/text/AutoGrowArray$ByteArray;->get(I)B

    move-result v1

    if-eq v1, v9, :cond_53

    goto :goto_55

    :cond_53
    move v15, v8

    goto :goto_a5

    :cond_55
    :goto_55
    and-int/lit8 v1, v9, 0x1

    if-eqz v1, :cond_5b

    const/4 v1, 0x1

    goto :goto_5c

    :cond_5b
    move v1, v15

    :goto_5c
    move v7, v1

    if-nez v14, :cond_8b

    sub-int v17, v8, v16

    iget v6, v0, Landroid/text/MeasuredParagraph;->mWholeWidth:F

    iget-object v2, v0, Landroid/text/MeasuredParagraph;->mCopiedBuffer:[C

    iget-object v1, v0, Landroid/text/MeasuredParagraph;->mWidths:Landroid/text/AutoGrowArray$FloatArray;

    invoke-virtual {v1}, Landroid/text/AutoGrowArray$FloatArray;->getRawArray()[F

    move-result-object v18

    move-object/from16 v1, p3

    move/from16 v3, v16

    move/from16 v4, v17

    move/from16 v5, v16

    move/from16 v19, v6

    move/from16 v6, v17

    move/from16 v20, v7

    move v15, v8

    move-object/from16 v8, v18

    move/from16 v18, v9

    move/from16 v9, v16

    invoke-virtual/range {v1 .. v9}, Landroid/text/TextPaint;->getTextRunAdvances([CIIIIZ[FI)F

    move-result v1

    add-float v6, v19, v1

    iput v6, v0, Landroid/text/MeasuredParagraph;->mWholeWidth:F

    move/from16 v1, v20

    goto :goto_97

    :cond_8b
    move/from16 v20, v7

    move v15, v8

    move/from16 v18, v9

    sub-int v8, v15, v16

    move/from16 v1, v20

    invoke-virtual {v14, v12, v13, v8, v1}, Landroid/graphics/text/MeasuredText$Builder;->appendStyleRun(Landroid/graphics/Paint;Landroid/graphics/text/LineBreakConfig;IZ)Landroid/graphics/text/MeasuredText$Builder;

    :goto_97
    if-ne v15, v11, :cond_9b

    nop

    :goto_9a
    return-void

    :cond_9b
    move v2, v15

    iget-object v3, v0, Landroid/text/MeasuredParagraph;->mLevels:Landroid/text/AutoGrowArray$ByteArray;

    invoke-virtual {v3, v15}, Landroid/text/AutoGrowArray$ByteArray;->get(I)B

    move-result v3

    move/from16 v16, v2

    move v9, v3

    :goto_a5
    add-int/lit8 v8, v15, 0x1

    const/4 v15, 0x0

    goto :goto_48
.end method

.method public static buildForBidi(Ljava/lang/CharSequence;IILandroid/text/TextDirectionHeuristic;Landroid/text/MeasuredParagraph;)Landroid/text/MeasuredParagraph;
    .registers 6

    if-nez p4, :cond_7

    invoke-static {}, Landroid/text/MeasuredParagraph;->obtain()Landroid/text/MeasuredParagraph;

    move-result-object v0

    goto :goto_8

    :cond_7
    move-object v0, p4

    :goto_8
    invoke-direct {v0, p0, p1, p2, p3}, Landroid/text/MeasuredParagraph;->resetAndAnalyzeBidi(Ljava/lang/CharSequence;IILandroid/text/TextDirectionHeuristic;)V

    return-object v0
.end method

.method public static buildForMeasurement(Landroid/text/TextPaint;Ljava/lang/CharSequence;IILandroid/text/TextDirectionHeuristic;Landroid/text/MeasuredParagraph;)Landroid/text/MeasuredParagraph;
    .registers 22

    move/from16 v7, p3

    if-nez p5, :cond_9

    invoke-static {}, Landroid/text/MeasuredParagraph;->obtain()Landroid/text/MeasuredParagraph;

    move-result-object v0

    goto :goto_b

    :cond_9
    move-object/from16 v0, p5

    :goto_b
    move-object v15, v0

    move-object/from16 v14, p1

    move/from16 v13, p2

    move-object/from16 v12, p4

    invoke-direct {v15, v14, v13, v7, v12}, Landroid/text/MeasuredParagraph;->resetAndAnalyzeBidi(Ljava/lang/CharSequence;IILandroid/text/TextDirectionHeuristic;)V

    iget-object v0, v15, Landroid/text/MeasuredParagraph;->mWidths:Landroid/text/AutoGrowArray$FloatArray;

    iget v1, v15, Landroid/text/MeasuredParagraph;->mTextLength:I

    invoke-virtual {v0, v1}, Landroid/text/AutoGrowArray$FloatArray;->resize(I)V

    iget v0, v15, Landroid/text/MeasuredParagraph;->mTextLength:I

    if-nez v0, :cond_21

    return-object v15

    :cond_21
    iget-object v0, v15, Landroid/text/MeasuredParagraph;->mSpanned:Landroid/text/Spanned;

    if-nez v0, :cond_33

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v6, 0x0

    move-object v0, v15

    move-object/from16 v1, p0

    move/from16 v4, p2

    move/from16 v5, p3

    invoke-direct/range {v0 .. v6}, Landroid/text/MeasuredParagraph;->applyMetricsAffectingSpan(Landroid/text/TextPaint;Landroid/graphics/text/LineBreakConfig;[Landroid/text/style/MetricAffectingSpan;IILandroid/graphics/text/MeasuredText$Builder;)V

    goto :goto_68

    :cond_33
    move/from16 v0, p2

    :goto_35
    if-ge v0, v7, :cond_68

    iget-object v1, v15, Landroid/text/MeasuredParagraph;->mSpanned:Landroid/text/Spanned;

    const-class v2, Landroid/text/style/MetricAffectingSpan;

    invoke-interface {v1, v0, v7, v2}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v1

    iget-object v2, v15, Landroid/text/MeasuredParagraph;->mSpanned:Landroid/text/Spanned;

    const-class v3, Landroid/text/style/MetricAffectingSpan;

    invoke-interface {v2, v0, v1, v3}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/text/style/MetricAffectingSpan;

    iget-object v3, v15, Landroid/text/MeasuredParagraph;->mSpanned:Landroid/text/Spanned;

    const-class v4, Landroid/text/style/MetricAffectingSpan;

    invoke-static {v2, v3, v4}, Landroid/text/TextUtils;->removeEmptySpans([Ljava/lang/Object;Landroid/text/Spanned;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v3

    move-object v2, v3

    check-cast v2, [Landroid/text/style/MetricAffectingSpan;

    const/4 v10, 0x0

    const/4 v3, 0x0

    move-object v8, v15

    move-object/from16 v9, p0

    move-object v11, v2

    move v12, v0

    move v13, v1

    move-object v14, v3

    invoke-direct/range {v8 .. v14}, Landroid/text/MeasuredParagraph;->applyMetricsAffectingSpan(Landroid/text/TextPaint;Landroid/graphics/text/LineBreakConfig;[Landroid/text/style/MetricAffectingSpan;IILandroid/graphics/text/MeasuredText$Builder;)V

    move v0, v1

    move-object/from16 v14, p1

    move/from16 v13, p2

    move-object/from16 v12, p4

    goto :goto_35

    :cond_68
    :goto_68
    return-object v15
.end method

.method public static buildForStaticLayout(Landroid/text/TextPaint;Landroid/graphics/text/LineBreakConfig;Ljava/lang/CharSequence;IILandroid/text/TextDirectionHeuristic;IZLandroid/text/MeasuredParagraph;Landroid/text/MeasuredParagraph;)Landroid/text/MeasuredParagraph;
    .registers 27

    move/from16 v7, p4

    move-object/from16 v8, p8

    if-nez p9, :cond_b

    invoke-static {}, Landroid/text/MeasuredParagraph;->obtain()Landroid/text/MeasuredParagraph;

    move-result-object v0

    goto :goto_d

    :cond_b
    move-object/from16 v0, p9

    :goto_d
    move-object v15, v0

    move-object/from16 v14, p2

    move/from16 v13, p3

    move-object/from16 v12, p5

    invoke-direct {v15, v14, v13, v7, v12}, Landroid/text/MeasuredParagraph;->resetAndAnalyzeBidi(Ljava/lang/CharSequence;IILandroid/text/TextDirectionHeuristic;)V

    if-nez v8, :cond_2f

    new-instance v0, Landroid/graphics/text/MeasuredText$Builder;

    iget-object v1, v15, Landroid/text/MeasuredParagraph;->mCopiedBuffer:[C

    invoke-direct {v0, v1}, Landroid/graphics/text/MeasuredText$Builder;-><init>([C)V

    move/from16 v11, p6

    invoke-virtual {v0, v11}, Landroid/graphics/text/MeasuredText$Builder;->setComputeHyphenation(I)Landroid/graphics/text/MeasuredText$Builder;

    move-result-object v0

    move/from16 v10, p7

    invoke-virtual {v0, v10}, Landroid/graphics/text/MeasuredText$Builder;->setComputeLayout(Z)Landroid/graphics/text/MeasuredText$Builder;

    move-result-object v0

    move-object/from16 v16, v0

    goto :goto_3c

    :cond_2f
    move/from16 v11, p6

    move/from16 v10, p7

    new-instance v0, Landroid/graphics/text/MeasuredText$Builder;

    iget-object v1, v8, Landroid/text/MeasuredParagraph;->mMeasuredText:Landroid/graphics/text/MeasuredText;

    invoke-direct {v0, v1}, Landroid/graphics/text/MeasuredText$Builder;-><init>(Landroid/graphics/text/MeasuredText;)V

    move-object/from16 v16, v0

    :goto_3c
    iget v0, v15, Landroid/text/MeasuredParagraph;->mTextLength:I

    if-nez v0, :cond_49

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/text/MeasuredText$Builder;->build()Landroid/graphics/text/MeasuredText;

    move-result-object v0

    iput-object v0, v15, Landroid/text/MeasuredParagraph;->mMeasuredText:Landroid/graphics/text/MeasuredText;

    move-object v3, v15

    goto/16 :goto_ab

    :cond_49
    iget-object v0, v15, Landroid/text/MeasuredParagraph;->mSpanned:Landroid/text/Spanned;

    if-nez v0, :cond_63

    const/4 v3, 0x0

    move-object v0, v15

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v6, v16

    invoke-direct/range {v0 .. v6}, Landroid/text/MeasuredParagraph;->applyMetricsAffectingSpan(Landroid/text/TextPaint;Landroid/graphics/text/LineBreakConfig;[Landroid/text/style/MetricAffectingSpan;IILandroid/graphics/text/MeasuredText$Builder;)V

    iget-object v0, v15, Landroid/text/MeasuredParagraph;->mSpanEndCache:Landroid/text/AutoGrowArray$IntArray;

    invoke-virtual {v0, v7}, Landroid/text/AutoGrowArray$IntArray;->append(I)V

    move-object v3, v15

    goto :goto_a5

    :cond_63
    move/from16 v0, p3

    :goto_65
    if-ge v0, v7, :cond_a4

    iget-object v1, v15, Landroid/text/MeasuredParagraph;->mSpanned:Landroid/text/Spanned;

    const-class v2, Landroid/text/style/MetricAffectingSpan;

    invoke-interface {v1, v0, v7, v2}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v1

    iget-object v2, v15, Landroid/text/MeasuredParagraph;->mSpanned:Landroid/text/Spanned;

    const-class v3, Landroid/text/style/MetricAffectingSpan;

    invoke-interface {v2, v0, v1, v3}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/text/style/MetricAffectingSpan;

    iget-object v3, v15, Landroid/text/MeasuredParagraph;->mSpanned:Landroid/text/Spanned;

    const-class v4, Landroid/text/style/MetricAffectingSpan;

    invoke-static {v2, v3, v4}, Landroid/text/TextUtils;->removeEmptySpans([Ljava/lang/Object;Landroid/text/Spanned;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v3

    move-object v2, v3

    check-cast v2, [Landroid/text/style/MetricAffectingSpan;

    move-object v9, v15

    move-object/from16 v10, p0

    move-object/from16 v11, p1

    move-object v12, v2

    move v13, v0

    move v14, v1

    move-object v3, v15

    move-object/from16 v15, v16

    invoke-direct/range {v9 .. v15}, Landroid/text/MeasuredParagraph;->applyMetricsAffectingSpan(Landroid/text/TextPaint;Landroid/graphics/text/LineBreakConfig;[Landroid/text/style/MetricAffectingSpan;IILandroid/graphics/text/MeasuredText$Builder;)V

    iget-object v4, v3, Landroid/text/MeasuredParagraph;->mSpanEndCache:Landroid/text/AutoGrowArray$IntArray;

    invoke-virtual {v4, v1}, Landroid/text/AutoGrowArray$IntArray;->append(I)V

    move v0, v1

    move-object/from16 v14, p2

    move/from16 v13, p3

    move-object/from16 v12, p5

    move/from16 v11, p6

    move/from16 v10, p7

    move-object v15, v3

    goto :goto_65

    :cond_a4
    move-object v3, v15

    :goto_a5
    invoke-virtual/range {v16 .. v16}, Landroid/graphics/text/MeasuredText$Builder;->build()Landroid/graphics/text/MeasuredText;

    move-result-object v0

    iput-object v0, v3, Landroid/text/MeasuredParagraph;->mMeasuredText:Landroid/graphics/text/MeasuredText;

    :goto_ab
    return-object v3
.end method

.method private static obtain()Landroid/text/MeasuredParagraph;
    .registers 2

    sget-object v0, Landroid/text/MeasuredParagraph;->sPool:Landroid/util/Pools$SynchronizedPool;

    invoke-virtual {v0}, Landroid/util/Pools$SynchronizedPool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/MeasuredParagraph;

    if-eqz v0, :cond_c

    move-object v1, v0

    goto :goto_11

    :cond_c
    new-instance v1, Landroid/text/MeasuredParagraph;

    invoke-direct {v1}, Landroid/text/MeasuredParagraph;-><init>()V

    :goto_11
    return-object v1
.end method

.method private reset()V
    .registers 3

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/text/MeasuredParagraph;->mSpanned:Landroid/text/Spanned;

    iput-object v0, p0, Landroid/text/MeasuredParagraph;->mCopiedBuffer:[C

    const/4 v1, 0x0

    iput v1, p0, Landroid/text/MeasuredParagraph;->mWholeWidth:F

    iget-object v1, p0, Landroid/text/MeasuredParagraph;->mLevels:Landroid/text/AutoGrowArray$ByteArray;

    invoke-virtual {v1}, Landroid/text/AutoGrowArray$ByteArray;->clear()V

    iget-object v1, p0, Landroid/text/MeasuredParagraph;->mWidths:Landroid/text/AutoGrowArray$FloatArray;

    invoke-virtual {v1}, Landroid/text/AutoGrowArray$FloatArray;->clear()V

    iget-object v1, p0, Landroid/text/MeasuredParagraph;->mFontMetrics:Landroid/text/AutoGrowArray$IntArray;

    invoke-virtual {v1}, Landroid/text/AutoGrowArray$IntArray;->clear()V

    iget-object v1, p0, Landroid/text/MeasuredParagraph;->mSpanEndCache:Landroid/text/AutoGrowArray$IntArray;

    invoke-virtual {v1}, Landroid/text/AutoGrowArray$IntArray;->clear()V

    iput-object v0, p0, Landroid/text/MeasuredParagraph;->mMeasuredText:Landroid/graphics/text/MeasuredText;

    return-void
.end method

.method private resetAndAnalyzeBidi(Ljava/lang/CharSequence;IILandroid/text/TextDirectionHeuristic;)V
    .registers 12

    invoke-direct {p0}, Landroid/text/MeasuredParagraph;->reset()V

    instance-of v0, p1, Landroid/text/Spanned;

    if-eqz v0, :cond_b

    move-object v0, p1

    check-cast v0, Landroid/text/Spanned;

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    iput-object v0, p0, Landroid/text/MeasuredParagraph;->mSpanned:Landroid/text/Spanned;

    iput p2, p0, Landroid/text/MeasuredParagraph;->mTextStart:I

    sub-int v0, p3, p2

    iput v0, p0, Landroid/text/MeasuredParagraph;->mTextLength:I

    iget-object v1, p0, Landroid/text/MeasuredParagraph;->mCopiedBuffer:[C

    if-eqz v1, :cond_1b

    array-length v1, v1

    if-eq v1, v0, :cond_1f

    :cond_1b
    new-array v0, v0, [C

    iput-object v0, p0, Landroid/text/MeasuredParagraph;->mCopiedBuffer:[C

    :cond_1f
    iget-object v0, p0, Landroid/text/MeasuredParagraph;->mCopiedBuffer:[C

    const/4 v1, 0x0

    invoke-static {p1, p2, p3, v0, v1}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    iget-object v0, p0, Landroid/text/MeasuredParagraph;->mSpanned:Landroid/text/Spanned;

    if-eqz v0, :cond_5b

    const-class v2, Landroid/text/style/ReplacementSpan;

    invoke-interface {v0, p2, p3, v2}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/style/ReplacementSpan;

    const/4 v2, 0x0

    :goto_32
    array-length v3, v0

    if-ge v2, v3, :cond_5b

    iget-object v3, p0, Landroid/text/MeasuredParagraph;->mSpanned:Landroid/text/Spanned;

    aget-object v4, v0, v2

    invoke-interface {v3, v4}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v3

    sub-int/2addr v3, p2

    iget-object v4, p0, Landroid/text/MeasuredParagraph;->mSpanned:Landroid/text/Spanned;

    aget-object v5, v0, v2

    invoke-interface {v4, v5}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v4

    sub-int/2addr v4, p2

    if-gez v3, :cond_4a

    const/4 v3, 0x0

    :cond_4a
    iget v5, p0, Landroid/text/MeasuredParagraph;->mTextLength:I

    if-le v4, v5, :cond_50

    iget v4, p0, Landroid/text/MeasuredParagraph;->mTextLength:I

    :cond_50
    iget-object v5, p0, Landroid/text/MeasuredParagraph;->mCopiedBuffer:[C

    const v6, 0xfffc

    invoke-static {v5, v3, v4, v6}, Ljava/util/Arrays;->fill([CIIC)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_32

    :cond_5b
    sget-object v0, Landroid/text/TextDirectionHeuristics;->LTR:Landroid/text/TextDirectionHeuristic;

    const/4 v2, 0x1

    if-eq p4, v0, :cond_68

    sget-object v0, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;

    if-eq p4, v0, :cond_68

    sget-object v0, Landroid/text/TextDirectionHeuristics;->ANYRTL_LTR:Landroid/text/TextDirectionHeuristic;

    if-ne p4, v0, :cond_7c

    :cond_68
    iget-object v0, p0, Landroid/text/MeasuredParagraph;->mCopiedBuffer:[C

    iget v3, p0, Landroid/text/MeasuredParagraph;->mTextLength:I

    invoke-static {v0, v1, v3}, Landroid/text/TextUtils;->doesNotNeedBidi([CII)Z

    move-result v0

    if-eqz v0, :cond_7c

    iget-object v0, p0, Landroid/text/MeasuredParagraph;->mLevels:Landroid/text/AutoGrowArray$ByteArray;

    invoke-virtual {v0}, Landroid/text/AutoGrowArray$ByteArray;->clear()V

    iput v2, p0, Landroid/text/MeasuredParagraph;->mParaDir:I

    iput-boolean v2, p0, Landroid/text/MeasuredParagraph;->mLtrWithoutBidi:Z

    goto :goto_b7

    :cond_7c
    sget-object v0, Landroid/text/TextDirectionHeuristics;->LTR:Landroid/text/TextDirectionHeuristic;

    if-ne p4, v0, :cond_82

    const/4 v0, 0x1

    goto :goto_a0

    :cond_82
    sget-object v0, Landroid/text/TextDirectionHeuristics;->RTL:Landroid/text/TextDirectionHeuristic;

    if-ne p4, v0, :cond_88

    const/4 v0, -0x1

    goto :goto_a0

    :cond_88
    sget-object v0, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;

    if-ne p4, v0, :cond_8e

    const/4 v0, 0x2

    goto :goto_a0

    :cond_8e
    sget-object v0, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_RTL:Landroid/text/TextDirectionHeuristic;

    if-ne p4, v0, :cond_94

    const/4 v0, -0x2

    goto :goto_a0

    :cond_94
    iget-object v0, p0, Landroid/text/MeasuredParagraph;->mCopiedBuffer:[C

    iget v3, p0, Landroid/text/MeasuredParagraph;->mTextLength:I

    invoke-interface {p4, v0, v1, v3}, Landroid/text/TextDirectionHeuristic;->isRtl([CII)Z

    move-result v0

    if-eqz v0, :cond_9f

    const/4 v2, -0x1

    :cond_9f
    move v0, v2

    :goto_a0
    iget-object v2, p0, Landroid/text/MeasuredParagraph;->mLevels:Landroid/text/AutoGrowArray$ByteArray;

    iget v3, p0, Landroid/text/MeasuredParagraph;->mTextLength:I

    invoke-virtual {v2, v3}, Landroid/text/AutoGrowArray$ByteArray;->resize(I)V

    iget-object v2, p0, Landroid/text/MeasuredParagraph;->mCopiedBuffer:[C

    iget-object v3, p0, Landroid/text/MeasuredParagraph;->mLevels:Landroid/text/AutoGrowArray$ByteArray;

    invoke-virtual {v3}, Landroid/text/AutoGrowArray$ByteArray;->getRawArray()[B

    move-result-object v3

    invoke-static {v0, v2, v3}, Landroid/text/AndroidBidi;->bidi(I[C[B)I

    move-result v2

    iput v2, p0, Landroid/text/MeasuredParagraph;->mParaDir:I

    iput-boolean v1, p0, Landroid/text/MeasuredParagraph;->mLtrWithoutBidi:Z

    :goto_b7
    return-void
.end method


# virtual methods
.method breakText(IZF)I
    .registers 10

    iget-object v0, p0, Landroid/text/MeasuredParagraph;->mWidths:Landroid/text/AutoGrowArray$FloatArray;

    invoke-virtual {v0}, Landroid/text/AutoGrowArray$FloatArray;->getRawArray()[F

    move-result-object v0

    const/16 v1, 0x20

    const/4 v2, 0x0

    if-eqz p2, :cond_27

    const/4 v3, 0x0

    :goto_c
    if-ge v3, p1, :cond_19

    aget v4, v0, v3

    sub-float/2addr p3, v4

    cmpg-float v4, p3, v2

    if-gez v4, :cond_16

    goto :goto_19

    :cond_16
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    :cond_19
    :goto_19
    if-lez v3, :cond_26

    iget-object v2, p0, Landroid/text/MeasuredParagraph;->mCopiedBuffer:[C

    add-int/lit8 v4, v3, -0x1

    aget-char v2, v2, v4

    if-ne v2, v1, :cond_26

    add-int/lit8 v3, v3, -0x1

    goto :goto_19

    :cond_26
    return v3

    :cond_27
    add-int/lit8 v3, p1, -0x1

    :goto_29
    if-ltz v3, :cond_36

    aget v4, v0, v3

    sub-float/2addr p3, v4

    cmpg-float v4, p3, v2

    if-gez v4, :cond_33

    goto :goto_36

    :cond_33
    add-int/lit8 v3, v3, -0x1

    goto :goto_29

    :cond_36
    :goto_36
    add-int/lit8 v4, p1, -0x1

    if-ge v3, v4, :cond_4d

    iget-object v4, p0, Landroid/text/MeasuredParagraph;->mCopiedBuffer:[C

    add-int/lit8 v5, v3, 0x1

    aget-char v4, v4, v5

    if-eq v4, v1, :cond_4a

    add-int/lit8 v4, v3, 0x1

    aget v4, v0, v4

    cmpl-float v4, v4, v2

    if-nez v4, :cond_4d

    :cond_4a
    add-int/lit8 v3, v3, 0x1

    goto :goto_36

    :cond_4d
    sub-int v1, p1, v3

    add-int/lit8 v1, v1, -0x1

    return v1
.end method

.method public getBounds(IILandroid/graphics/Rect;)V
    .registers 5

    iget-object v0, p0, Landroid/text/MeasuredParagraph;->mMeasuredText:Landroid/graphics/text/MeasuredText;

    invoke-virtual {v0, p1, p2, p3}, Landroid/graphics/text/MeasuredText;->getBounds(IILandroid/graphics/Rect;)V

    return-void
.end method

.method public getCharWidthAt(I)F
    .registers 3

    iget-object v0, p0, Landroid/text/MeasuredParagraph;->mMeasuredText:Landroid/graphics/text/MeasuredText;

    invoke-virtual {v0, p1}, Landroid/graphics/text/MeasuredText;->getCharWidthAt(I)F

    move-result v0

    return v0
.end method

.method public getChars()[C
    .registers 2

    iget-object v0, p0, Landroid/text/MeasuredParagraph;->mCopiedBuffer:[C

    return-object v0
.end method

.method public getDirections(II)Landroid/text/Layout$Directions;
    .registers 10

    iget-boolean v0, p0, Landroid/text/MeasuredParagraph;->mLtrWithoutBidi:Z

    if-eqz v0, :cond_7

    sget-object v0, Landroid/text/Layout;->DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;

    return-object v0

    :cond_7
    sub-int v0, p2, p1

    iget v1, p0, Landroid/text/MeasuredParagraph;->mParaDir:I

    iget-object v2, p0, Landroid/text/MeasuredParagraph;->mLevels:Landroid/text/AutoGrowArray$ByteArray;

    invoke-virtual {v2}, Landroid/text/AutoGrowArray$ByteArray;->getRawArray()[B

    move-result-object v2

    iget-object v4, p0, Landroid/text/MeasuredParagraph;->mCopiedBuffer:[C

    move v3, p1

    move v5, p1

    move v6, v0

    invoke-static/range {v1 .. v6}, Landroid/text/AndroidBidi;->directions(I[BI[CII)Landroid/text/Layout$Directions;

    move-result-object v1

    return-object v1
.end method

.method public getFontMetrics()Landroid/text/AutoGrowArray$IntArray;
    .registers 2

    iget-object v0, p0, Landroid/text/MeasuredParagraph;->mFontMetrics:Landroid/text/AutoGrowArray$IntArray;

    return-object v0
.end method

.method public getFontMetricsInt(IILandroid/graphics/Paint$FontMetricsInt;)V
    .registers 5

    iget-object v0, p0, Landroid/text/MeasuredParagraph;->mMeasuredText:Landroid/graphics/text/MeasuredText;

    invoke-virtual {v0, p1, p2, p3}, Landroid/graphics/text/MeasuredText;->getFontMetricsInt(IILandroid/graphics/Paint$FontMetricsInt;)V

    return-void
.end method

.method public getMeasuredText()Landroid/graphics/text/MeasuredText;
    .registers 2

    iget-object v0, p0, Landroid/text/MeasuredParagraph;->mMeasuredText:Landroid/graphics/text/MeasuredText;

    return-object v0
.end method

.method public getMemoryUsage()I
    .registers 2

    iget-object v0, p0, Landroid/text/MeasuredParagraph;->mMeasuredText:Landroid/graphics/text/MeasuredText;

    invoke-virtual {v0}, Landroid/graphics/text/MeasuredText;->getMemoryUsage()I

    move-result v0

    return v0
.end method

.method public getParagraphDir()I
    .registers 2

    iget v0, p0, Landroid/text/MeasuredParagraph;->mParaDir:I

    return v0
.end method

.method public getSpanEndCache()Landroid/text/AutoGrowArray$IntArray;
    .registers 2

    iget-object v0, p0, Landroid/text/MeasuredParagraph;->mSpanEndCache:Landroid/text/AutoGrowArray$IntArray;

    return-object v0
.end method

.method public getTextLength()I
    .registers 2

    iget v0, p0, Landroid/text/MeasuredParagraph;->mTextLength:I

    return v0
.end method

.method public getWholeWidth()F
    .registers 2

    iget v0, p0, Landroid/text/MeasuredParagraph;->mWholeWidth:F

    return v0
.end method

.method public getWidth(II)F
    .registers 7

    iget-object v0, p0, Landroid/text/MeasuredParagraph;->mMeasuredText:Landroid/graphics/text/MeasuredText;

    if-nez v0, :cond_15

    iget-object v0, p0, Landroid/text/MeasuredParagraph;->mWidths:Landroid/text/AutoGrowArray$FloatArray;

    invoke-virtual {v0}, Landroid/text/AutoGrowArray$FloatArray;->getRawArray()[F

    move-result-object v0

    const/4 v1, 0x0

    move v2, p1

    :goto_c
    if-ge v2, p2, :cond_14

    aget v3, v0, v2

    add-float/2addr v1, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    :cond_14
    return v1

    :cond_15
    invoke-virtual {v0, p1, p2}, Landroid/graphics/text/MeasuredText;->getWidth(II)F

    move-result v0

    return v0
.end method

.method public getWidths()Landroid/text/AutoGrowArray$FloatArray;
    .registers 2

    iget-object v0, p0, Landroid/text/MeasuredParagraph;->mWidths:Landroid/text/AutoGrowArray$FloatArray;

    return-object v0
.end method

.method measure(II)F
    .registers 7

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/text/MeasuredParagraph;->mWidths:Landroid/text/AutoGrowArray$FloatArray;

    invoke-virtual {v1}, Landroid/text/AutoGrowArray$FloatArray;->getRawArray()[F

    move-result-object v1

    move v2, p1

    :goto_8
    if-ge v2, p2, :cond_10

    aget v3, v1, v2

    add-float/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_10
    return v0
.end method

.method public recycle()V
    .registers 2

    invoke-virtual {p0}, Landroid/text/MeasuredParagraph;->release()V

    sget-object v0, Landroid/text/MeasuredParagraph;->sPool:Landroid/util/Pools$SynchronizedPool;

    invoke-virtual {v0, p0}, Landroid/util/Pools$SynchronizedPool;->release(Ljava/lang/Object;)Z

    return-void
.end method

.method public release()V
    .registers 2

    invoke-direct {p0}, Landroid/text/MeasuredParagraph;->reset()V

    iget-object v0, p0, Landroid/text/MeasuredParagraph;->mLevels:Landroid/text/AutoGrowArray$ByteArray;

    invoke-virtual {v0}, Landroid/text/AutoGrowArray$ByteArray;->clearWithReleasingLargeArray()V

    iget-object v0, p0, Landroid/text/MeasuredParagraph;->mWidths:Landroid/text/AutoGrowArray$FloatArray;

    invoke-virtual {v0}, Landroid/text/AutoGrowArray$FloatArray;->clearWithReleasingLargeArray()V

    iget-object v0, p0, Landroid/text/MeasuredParagraph;->mFontMetrics:Landroid/text/AutoGrowArray$IntArray;

    invoke-virtual {v0}, Landroid/text/AutoGrowArray$IntArray;->clearWithReleasingLargeArray()V

    iget-object v0, p0, Landroid/text/MeasuredParagraph;->mSpanEndCache:Landroid/text/AutoGrowArray$IntArray;

    invoke-virtual {v0}, Landroid/text/AutoGrowArray$IntArray;->clearWithReleasingLargeArray()V

    return-void
.end method
