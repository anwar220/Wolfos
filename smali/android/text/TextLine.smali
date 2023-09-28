# classes3.dex

.class public Landroid/text/TextLine;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/text/TextLine$DecorationInfo;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAB_CHAR:C = '\t'

.field private static final TAB_INCREMENT:I = 0x14

.field private static final sCached:[Landroid/text/TextLine;


# instance fields
.field private final mActivePaint:Landroid/text/TextPaint;

.field private mAddedWidthForJustify:F

.field private final mCharacterStyleSpanSet:Landroid/text/SpanSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/text/SpanSet<",
            "Landroid/text/style/CharacterStyle;",
            ">;"
        }
    .end annotation
.end field

.field private mChars:[C

.field private mCharsValid:Z

.field private mComputed:Landroid/text/PrecomputedText;

.field private final mDecorationInfo:Landroid/text/TextLine$DecorationInfo;

.field private final mDecorations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/text/TextLine$DecorationInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mDir:I

.field private mDirections:Landroid/text/Layout$Directions;

.field private mEllipsisEnd:I

.field private mEllipsisStart:I

.field private mHasTabs:Z

.field private mIsJustifying:Z

.field private mLen:I

.field private final mMetricAffectingSpanSpanSet:Landroid/text/SpanSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/text/SpanSet<",
            "Landroid/text/style/MetricAffectingSpan;",
            ">;"
        }
    .end annotation
.end field

.field private mPaint:Landroid/text/TextPaint;

.field private final mReplacementSpanSpanSet:Landroid/text/SpanSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/text/SpanSet<",
            "Landroid/text/style/ReplacementSpan;",
            ">;"
        }
    .end annotation
.end field

.field private mSpanned:Landroid/text/Spanned;

.field private mStart:I

.field private mTabs:Landroid/text/Layout$TabStops;

.field private mText:Ljava/lang/CharSequence;

.field private mUseFallbackExtent:Z

.field private final mWorkPaint:Landroid/text/TextPaint;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x3

    new-array v0, v0, [Landroid/text/TextLine;

    sput-object v0, Landroid/text/TextLine;->sCached:[Landroid/text/TextLine;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/text/TextLine;->mUseFallbackExtent:Z

    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    iput-object v0, p0, Landroid/text/TextLine;->mWorkPaint:Landroid/text/TextPaint;

    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    iput-object v0, p0, Landroid/text/TextLine;->mActivePaint:Landroid/text/TextPaint;

    new-instance v0, Landroid/text/SpanSet;

    const-class v1, Landroid/text/style/MetricAffectingSpan;

    invoke-direct {v0, v1}, Landroid/text/SpanSet;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Landroid/text/TextLine;->mMetricAffectingSpanSpanSet:Landroid/text/SpanSet;

    new-instance v0, Landroid/text/SpanSet;

    const-class v1, Landroid/text/style/CharacterStyle;

    invoke-direct {v0, v1}, Landroid/text/SpanSet;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Landroid/text/TextLine;->mCharacterStyleSpanSet:Landroid/text/SpanSet;

    new-instance v0, Landroid/text/SpanSet;

    const-class v1, Landroid/text/style/ReplacementSpan;

    invoke-direct {v0, v1}, Landroid/text/SpanSet;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Landroid/text/TextLine;->mReplacementSpanSpanSet:Landroid/text/SpanSet;

    new-instance v0, Landroid/text/TextLine$DecorationInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/text/TextLine$DecorationInfo;-><init>(Landroid/text/TextLine$DecorationInfo-IA;)V

    iput-object v0, p0, Landroid/text/TextLine;->mDecorationInfo:Landroid/text/TextLine$DecorationInfo;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/text/TextLine;->mDecorations:Ljava/util/ArrayList;

    return-void
.end method

.method private adjustEndHyphenEdit(II)I
    .registers 4

    iget v0, p0, Landroid/text/TextLine;->mLen:I

    if-ge p1, v0, :cond_6

    const/4 v0, 0x0

    goto :goto_7

    :cond_6
    move v0, p2

    :goto_7
    return v0
.end method

.method private adjustStartHyphenEdit(II)I
    .registers 4

    if-lez p1, :cond_4

    const/4 v0, 0x0

    goto :goto_5

    :cond_4
    move v0, p2

    :goto_5
    return v0
.end method

.method private charAt(I)C
    .registers 4

    iget-boolean v0, p0, Landroid/text/TextLine;->mCharsValid:Z

    if-eqz v0, :cond_9

    iget-object v0, p0, Landroid/text/TextLine;->mChars:[C

    aget-char v0, v0, p1

    goto :goto_12

    :cond_9
    iget-object v0, p0, Landroid/text/TextLine;->mText:Ljava/lang/CharSequence;

    iget v1, p0, Landroid/text/TextLine;->mStart:I

    add-int/2addr v1, p1

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    :goto_12
    return v0
.end method

.method private countStretchableSpaces(II)I
    .registers 7

    const/4 v0, 0x0

    move v1, p1

    :goto_2
    if-ge v1, p2, :cond_21

    iget-boolean v2, p0, Landroid/text/TextLine;->mCharsValid:Z

    if-eqz v2, :cond_d

    iget-object v2, p0, Landroid/text/TextLine;->mChars:[C

    aget-char v2, v2, v1

    goto :goto_16

    :cond_d
    iget-object v2, p0, Landroid/text/TextLine;->mText:Ljava/lang/CharSequence;

    iget v3, p0, Landroid/text/TextLine;->mStart:I

    add-int/2addr v3, v1

    invoke-interface {v2, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    :goto_16
    invoke-direct {p0, v2}, Landroid/text/TextLine;->isStretchableWhitespace(I)Z

    move-result v3

    if-eqz v3, :cond_1e

    add-int/lit8 v0, v0, 0x1

    :cond_1e
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_21
    return v0
.end method

.method private drawRun(Landroid/graphics/Canvas;IIZFIIIZ)F
    .registers 26

    move-object/from16 v13, p0

    iget v0, v13, Landroid/text/TextLine;->mDir:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_8

    goto :goto_9

    :cond_8
    const/4 v1, 0x0

    :goto_9
    move/from16 v14, p4

    if-ne v1, v14, :cond_30

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p3

    move/from16 v4, p4

    invoke-direct/range {v0 .. v5}, Landroid/text/TextLine;->measureRun(IIIZLandroid/graphics/Paint$FontMetricsInt;)F

    move-result v0

    neg-float v15, v0

    const/4 v6, 0x0

    add-float v7, p5, v15

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v0, p0

    move-object/from16 v5, p1

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    invoke-direct/range {v0 .. v12}, Landroid/text/TextLine;->handleRun(IIIZLandroid/graphics/Canvas;Landroid/text/TextShaper$GlyphsConsumer;FIIILandroid/graphics/Paint$FontMetricsInt;Z)F

    return v15

    :cond_30
    const/4 v6, 0x0

    const/4 v11, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p1

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    move/from16 v12, p9

    invoke-direct/range {v0 .. v12}, Landroid/text/TextLine;->handleRun(IIIZLandroid/graphics/Canvas;Landroid/text/TextShaper$GlyphsConsumer;FIIILandroid/graphics/Paint$FontMetricsInt;Z)F

    move-result v0

    return v0
.end method

.method private static drawStroke(Landroid/text/TextPaint;Landroid/graphics/Canvas;IFFFFF)V
    .registers 20

    move-object v6, p0

    iget v0, v6, Landroid/text/TextPaint;->baselineShift:I

    int-to-float v0, v0

    add-float v0, p7, v0

    add-float v7, v0, p3

    invoke-virtual {p0}, Landroid/text/TextPaint;->getColor()I

    move-result v8

    invoke-virtual {p0}, Landroid/text/TextPaint;->getStyle()Landroid/graphics/Paint$Style;

    move-result-object v9

    invoke-virtual {p0}, Landroid/text/TextPaint;->isAntiAlias()Z

    move-result v10

    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p0, v0}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    move v11, p2

    invoke-virtual {p0, p2}, Landroid/text/TextPaint;->setColor(I)V

    add-float v4, v7, p4

    move-object v0, p1

    move/from16 v1, p5

    move v2, v7

    move/from16 v3, p6

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    invoke-virtual {p0, v9}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-virtual {p0, v8}, Landroid/text/TextPaint;->setColor(I)V

    invoke-virtual {p0, v10}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    return-void
.end method

.method private drawTextRun(Landroid/graphics/Canvas;Landroid/text/TextPaint;IIIIZFI)V
    .registers 32

    move-object/from16 v0, p0

    move/from16 v11, p9

    iget-boolean v1, v0, Landroid/text/TextLine;->mCharsValid:Z

    if-eqz v1, :cond_21

    sub-int v12, p4, p3

    sub-int v13, p6, p5

    iget-object v2, v0, Landroid/text/TextLine;->mChars:[C

    int-to-float v8, v11

    move-object/from16 v1, p1

    move/from16 v3, p3

    move v4, v12

    move/from16 v5, p5

    move v6, v13

    move/from16 v7, p8

    move/from16 v9, p7

    move-object/from16 v10, p2

    invoke-virtual/range {v1 .. v10}, Landroid/graphics/Canvas;->drawTextRun([CIIIIFFZLandroid/graphics/Paint;)V

    goto :goto_3b

    :cond_21
    iget v1, v0, Landroid/text/TextLine;->mStart:I

    iget-object v13, v0, Landroid/text/TextLine;->mText:Ljava/lang/CharSequence;

    add-int v14, v1, p3

    add-int v15, v1, p4

    add-int v16, v1, p5

    add-int v17, v1, p6

    int-to-float v2, v11

    move-object/from16 v12, p1

    move/from16 v18, p8

    move/from16 v19, v2

    move/from16 v20, p7

    move-object/from16 v21, p2

    invoke-virtual/range {v12 .. v21}, Landroid/graphics/Canvas;->drawTextRun(Ljava/lang/CharSequence;IIIIFFZLandroid/graphics/Paint;)V

    :goto_3b
    return-void
.end method

.method private static equalAttributes(Landroid/text/TextPaint;Landroid/text/TextPaint;)Z
    .registers 4

    invoke-virtual {p0}, Landroid/text/TextPaint;->getColorFilter()Landroid/graphics/ColorFilter;

    move-result-object v0

    invoke-virtual {p1}, Landroid/text/TextPaint;->getColorFilter()Landroid/graphics/ColorFilter;

    move-result-object v1

    if-ne v0, v1, :cond_172

    invoke-virtual {p0}, Landroid/text/TextPaint;->getMaskFilter()Landroid/graphics/MaskFilter;

    move-result-object v0

    invoke-virtual {p1}, Landroid/text/TextPaint;->getMaskFilter()Landroid/graphics/MaskFilter;

    move-result-object v1

    if-ne v0, v1, :cond_172

    invoke-virtual {p0}, Landroid/text/TextPaint;->getShader()Landroid/graphics/Shader;

    move-result-object v0

    invoke-virtual {p1}, Landroid/text/TextPaint;->getShader()Landroid/graphics/Shader;

    move-result-object v1

    if-ne v0, v1, :cond_172

    invoke-virtual {p0}, Landroid/text/TextPaint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p1}, Landroid/text/TextPaint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    if-ne v0, v1, :cond_172

    invoke-virtual {p0}, Landroid/text/TextPaint;->getXfermode()Landroid/graphics/Xfermode;

    move-result-object v0

    invoke-virtual {p1}, Landroid/text/TextPaint;->getXfermode()Landroid/graphics/Xfermode;

    move-result-object v1

    if-ne v0, v1, :cond_172

    invoke-virtual {p0}, Landroid/text/TextPaint;->getTextLocales()Landroid/os/LocaleList;

    move-result-object v0

    invoke-virtual {p1}, Landroid/text/TextPaint;->getTextLocales()Landroid/os/LocaleList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/LocaleList;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_172

    invoke-virtual {p0}, Landroid/text/TextPaint;->getFontFeatureSettings()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/text/TextPaint;->getFontFeatureSettings()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_172

    invoke-virtual {p0}, Landroid/text/TextPaint;->getFontVariationSettings()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/text/TextPaint;->getFontVariationSettings()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_172

    invoke-virtual {p0}, Landroid/text/TextPaint;->getShadowLayerRadius()F

    move-result v0

    invoke-virtual {p1}, Landroid/text/TextPaint;->getShadowLayerRadius()F

    move-result v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_172

    invoke-virtual {p0}, Landroid/text/TextPaint;->getShadowLayerDx()F

    move-result v0

    invoke-virtual {p1}, Landroid/text/TextPaint;->getShadowLayerDx()F

    move-result v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_172

    invoke-virtual {p0}, Landroid/text/TextPaint;->getShadowLayerDy()F

    move-result v0

    invoke-virtual {p1}, Landroid/text/TextPaint;->getShadowLayerDy()F

    move-result v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_172

    invoke-virtual {p0}, Landroid/text/TextPaint;->getShadowLayerColor()I

    move-result v0

    invoke-virtual {p1}, Landroid/text/TextPaint;->getShadowLayerColor()I

    move-result v1

    if-ne v0, v1, :cond_172

    invoke-virtual {p0}, Landroid/text/TextPaint;->getFlags()I

    move-result v0

    invoke-virtual {p1}, Landroid/text/TextPaint;->getFlags()I

    move-result v1

    if-ne v0, v1, :cond_172

    invoke-virtual {p0}, Landroid/text/TextPaint;->getHinting()I

    move-result v0

    invoke-virtual {p1}, Landroid/text/TextPaint;->getHinting()I

    move-result v1

    if-ne v0, v1, :cond_172

    invoke-virtual {p0}, Landroid/text/TextPaint;->getStyle()Landroid/graphics/Paint$Style;

    move-result-object v0

    invoke-virtual {p1}, Landroid/text/TextPaint;->getStyle()Landroid/graphics/Paint$Style;

    move-result-object v1

    if-ne v0, v1, :cond_172

    invoke-virtual {p0}, Landroid/text/TextPaint;->getColor()I

    move-result v0

    invoke-virtual {p1}, Landroid/text/TextPaint;->getColor()I

    move-result v1

    if-ne v0, v1, :cond_172

    invoke-virtual {p0}, Landroid/text/TextPaint;->getStrokeWidth()F

    move-result v0

    invoke-virtual {p1}, Landroid/text/TextPaint;->getStrokeWidth()F

    move-result v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_172

    invoke-virtual {p0}, Landroid/text/TextPaint;->getStrokeMiter()F

    move-result v0

    invoke-virtual {p1}, Landroid/text/TextPaint;->getStrokeMiter()F

    move-result v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_172

    invoke-virtual {p0}, Landroid/text/TextPaint;->getStrokeCap()Landroid/graphics/Paint$Cap;

    move-result-object v0

    invoke-virtual {p1}, Landroid/text/TextPaint;->getStrokeCap()Landroid/graphics/Paint$Cap;

    move-result-object v1

    if-ne v0, v1, :cond_172

    invoke-virtual {p0}, Landroid/text/TextPaint;->getStrokeJoin()Landroid/graphics/Paint$Join;

    move-result-object v0

    invoke-virtual {p1}, Landroid/text/TextPaint;->getStrokeJoin()Landroid/graphics/Paint$Join;

    move-result-object v1

    if-ne v0, v1, :cond_172

    invoke-virtual {p0}, Landroid/text/TextPaint;->getTextAlign()Landroid/graphics/Paint$Align;

    move-result-object v0

    invoke-virtual {p1}, Landroid/text/TextPaint;->getTextAlign()Landroid/graphics/Paint$Align;

    move-result-object v1

    if-ne v0, v1, :cond_172

    invoke-virtual {p0}, Landroid/text/TextPaint;->isElegantTextHeight()Z

    move-result v0

    invoke-virtual {p1}, Landroid/text/TextPaint;->isElegantTextHeight()Z

    move-result v1

    if-ne v0, v1, :cond_172

    invoke-virtual {p0}, Landroid/text/TextPaint;->getTextSize()F

    move-result v0

    invoke-virtual {p1}, Landroid/text/TextPaint;->getTextSize()F

    move-result v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_172

    invoke-virtual {p0}, Landroid/text/TextPaint;->getTextScaleX()F

    move-result v0

    invoke-virtual {p1}, Landroid/text/TextPaint;->getTextScaleX()F

    move-result v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_172

    invoke-virtual {p0}, Landroid/text/TextPaint;->getTextSkewX()F

    move-result v0

    invoke-virtual {p1}, Landroid/text/TextPaint;->getTextSkewX()F

    move-result v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_172

    invoke-virtual {p0}, Landroid/text/TextPaint;->getLetterSpacing()F

    move-result v0

    invoke-virtual {p1}, Landroid/text/TextPaint;->getLetterSpacing()F

    move-result v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_172

    invoke-virtual {p0}, Landroid/text/TextPaint;->getWordSpacing()F

    move-result v0

    invoke-virtual {p1}, Landroid/text/TextPaint;->getWordSpacing()F

    move-result v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_172

    invoke-virtual {p0}, Landroid/text/TextPaint;->getStartHyphenEdit()I

    move-result v0

    invoke-virtual {p1}, Landroid/text/TextPaint;->getStartHyphenEdit()I

    move-result v1

    if-ne v0, v1, :cond_172

    invoke-virtual {p0}, Landroid/text/TextPaint;->getEndHyphenEdit()I

    move-result v0

    invoke-virtual {p1}, Landroid/text/TextPaint;->getEndHyphenEdit()I

    move-result v1

    if-ne v0, v1, :cond_172

    iget v0, p0, Landroid/text/TextPaint;->bgColor:I

    iget v1, p1, Landroid/text/TextPaint;->bgColor:I

    if-ne v0, v1, :cond_172

    iget v0, p0, Landroid/text/TextPaint;->baselineShift:I

    iget v1, p1, Landroid/text/TextPaint;->baselineShift:I

    if-ne v0, v1, :cond_172

    iget v0, p0, Landroid/text/TextPaint;->linkColor:I

    iget v1, p1, Landroid/text/TextPaint;->linkColor:I

    if-ne v0, v1, :cond_172

    iget-object v0, p0, Landroid/text/TextPaint;->drawableState:[I

    iget-object v1, p1, Landroid/text/TextPaint;->drawableState:[I

    if-ne v0, v1, :cond_172

    iget v0, p0, Landroid/text/TextPaint;->density:F

    iget v1, p1, Landroid/text/TextPaint;->density:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_172

    iget v0, p0, Landroid/text/TextPaint;->underlineColor:I

    iget v1, p1, Landroid/text/TextPaint;->underlineColor:I

    if-ne v0, v1, :cond_172

    iget v0, p0, Landroid/text/TextPaint;->underlineThickness:F

    iget v1, p1, Landroid/text/TextPaint;->underlineThickness:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_172

    const/4 v0, 0x1

    goto :goto_173

    :cond_172
    const/4 v0, 0x0

    :goto_173
    return v0
.end method

.method private static expandMetricsFromPaint(Landroid/graphics/Paint$FontMetricsInt;Landroid/text/TextPaint;)V
    .registers 13

    iget v6, p0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    iget v7, p0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    iget v8, p0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    iget v9, p0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    iget v10, p0, Landroid/graphics/Paint$FontMetricsInt;->leading:I

    invoke-virtual {p1, p0}, Landroid/text/TextPaint;->getFontMetricsInt(Landroid/graphics/Paint$FontMetricsInt;)I

    move-object v0, p0

    move v1, v6

    move v2, v7

    move v3, v8

    move v4, v9

    move v5, v10

    invoke-static/range {v0 .. v5}, Landroid/text/TextLine;->updateMetrics(Landroid/graphics/Paint$FontMetricsInt;IIIII)V

    return-void
.end method

.method private expandMetricsFromPaint(Landroid/text/TextPaint;IIIIZLandroid/graphics/Paint$FontMetricsInt;)V
    .registers 25

    move-object/from16 v0, p0

    move-object/from16 v9, p7

    iget v10, v9, Landroid/graphics/Paint$FontMetricsInt;->top:I

    iget v11, v9, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    iget v12, v9, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    iget v13, v9, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    iget v14, v9, Landroid/graphics/Paint$FontMetricsInt;->leading:I

    sub-int v15, p3, p2

    sub-int v16, p5, p4

    iget-boolean v1, v0, Landroid/text/TextLine;->mCharsValid:Z

    if-eqz v1, :cond_29

    iget-object v2, v0, Landroid/text/TextLine;->mChars:[C

    move-object/from16 v1, p1

    move/from16 v3, p2

    move v4, v15

    move/from16 v5, p4

    move/from16 v6, v16

    move/from16 v7, p6

    move-object/from16 v8, p7

    invoke-virtual/range {v1 .. v8}, Landroid/text/TextPaint;->getFontMetricsInt([CIIIIZLandroid/graphics/Paint$FontMetricsInt;)V

    goto :goto_4b

    :cond_29
    iget-object v1, v0, Landroid/text/TextLine;->mComputed:Landroid/text/PrecomputedText;

    if-nez v1, :cond_42

    iget-object v2, v0, Landroid/text/TextLine;->mText:Ljava/lang/CharSequence;

    iget v1, v0, Landroid/text/TextLine;->mStart:I

    add-int v3, v1, p2

    add-int v5, v1, p4

    move-object/from16 v1, p1

    move v4, v15

    move/from16 v6, v16

    move/from16 v7, p6

    move-object/from16 v8, p7

    invoke-virtual/range {v1 .. v8}, Landroid/text/TextPaint;->getFontMetricsInt(Ljava/lang/CharSequence;IIIIZLandroid/graphics/Paint$FontMetricsInt;)V

    goto :goto_4b

    :cond_42
    iget v2, v0, Landroid/text/TextLine;->mStart:I

    add-int v3, v2, p2

    add-int v2, v2, p3

    invoke-virtual {v1, v3, v2, v9}, Landroid/text/PrecomputedText;->getFontMetricsInt(IILandroid/graphics/Paint$FontMetricsInt;)V

    :goto_4b
    move-object/from16 v1, p7

    move v2, v10

    move v3, v11

    move v4, v12

    move v5, v13

    move v6, v14

    invoke-static/range {v1 .. v6}, Landroid/text/TextLine;->updateMetrics(Landroid/graphics/Paint$FontMetricsInt;IIIII)V

    return-void
.end method

.method private extractDecorationInfo(Landroid/text/TextPaint;Landroid/text/TextLine$DecorationInfo;)V
    .registers 5

    invoke-virtual {p1}, Landroid/text/TextPaint;->isStrikeThruText()Z

    move-result v0

    iput-boolean v0, p2, Landroid/text/TextLine$DecorationInfo;->isStrikeThruText:Z

    iget-boolean v0, p2, Landroid/text/TextLine$DecorationInfo;->isStrikeThruText:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_e

    invoke-virtual {p1, v1}, Landroid/text/TextPaint;->setStrikeThruText(Z)V

    :cond_e
    invoke-virtual {p1}, Landroid/text/TextPaint;->isUnderlineText()Z

    move-result v0

    iput-boolean v0, p2, Landroid/text/TextLine$DecorationInfo;->isUnderlineText:Z

    iget-boolean v0, p2, Landroid/text/TextLine$DecorationInfo;->isUnderlineText:Z

    if-eqz v0, :cond_1b

    invoke-virtual {p1, v1}, Landroid/text/TextPaint;->setUnderlineText(Z)V

    :cond_1b
    iget v0, p1, Landroid/text/TextPaint;->underlineColor:I

    iput v0, p2, Landroid/text/TextLine$DecorationInfo;->underlineColor:I

    iget v0, p1, Landroid/text/TextPaint;->underlineThickness:F

    iput v0, p2, Landroid/text/TextLine$DecorationInfo;->underlineThickness:F

    const/4 v0, 0x0

    invoke-virtual {p1, v1, v0}, Landroid/text/TextPaint;->setUnderlineText(IF)V

    return-void
.end method

.method private getOffsetBeforeAfter(IIIZIZ)I
    .registers 26

    move-object/from16 v0, p0

    move/from16 v1, p3

    move/from16 v9, p5

    if-ltz p1, :cond_c0

    const/4 v2, 0x0

    if-eqz p6, :cond_e

    iget v3, v0, Landroid/text/TextLine;->mLen:I

    goto :goto_f

    :cond_e
    move v3, v2

    :goto_f
    if-ne v9, v3, :cond_13

    goto/16 :goto_c0

    :cond_13
    iget-object v15, v0, Landroid/text/TextLine;->mWorkPaint:Landroid/text/TextPaint;

    iget-object v3, v0, Landroid/text/TextLine;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v15, v3}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V

    iget-boolean v3, v0, Landroid/text/TextLine;->mIsJustifying:Z

    if-eqz v3, :cond_23

    iget v3, v0, Landroid/text/TextLine;->mAddedWidthForJustify:F

    invoke-virtual {v15, v3}, Landroid/text/TextPaint;->setWordSpacing(F)V

    :cond_23
    move/from16 v3, p2

    iget-object v4, v0, Landroid/text/TextLine;->mSpanned:Landroid/text/Spanned;

    if-eqz v4, :cond_87

    move/from16 v14, p2

    if-ne v14, v1, :cond_2e

    goto :goto_89

    :cond_2e
    if-eqz p6, :cond_33

    add-int/lit8 v4, v9, 0x1

    goto :goto_34

    :cond_33
    move v4, v9

    :goto_34
    iget v5, v0, Landroid/text/TextLine;->mStart:I

    add-int/2addr v5, v1

    :goto_37
    iget-object v6, v0, Landroid/text/TextLine;->mSpanned:Landroid/text/Spanned;

    iget v7, v0, Landroid/text/TextLine;->mStart:I

    add-int/2addr v7, v3

    const-class v8, Landroid/text/style/MetricAffectingSpan;

    invoke-interface {v6, v7, v5, v8}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v6

    iget v7, v0, Landroid/text/TextLine;->mStart:I

    sub-int/2addr v6, v7

    if-lt v6, v4, :cond_85

    nop

    iget-object v8, v0, Landroid/text/TextLine;->mSpanned:Landroid/text/Spanned;

    add-int v10, v7, v3

    add-int/2addr v7, v6

    const-class v11, Landroid/text/style/MetricAffectingSpan;

    invoke-interface {v8, v10, v7, v11}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Landroid/text/style/MetricAffectingSpan;

    iget-object v8, v0, Landroid/text/TextLine;->mSpanned:Landroid/text/Spanned;

    const-class v10, Landroid/text/style/MetricAffectingSpan;

    invoke-static {v7, v8, v10}, Landroid/text/TextUtils;->removeEmptySpans([Ljava/lang/Object;Landroid/text/Spanned;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v8

    move-object v7, v8

    check-cast v7, [Landroid/text/style/MetricAffectingSpan;

    array-length v8, v7

    if-lez v8, :cond_80

    const/4 v8, 0x0

    const/4 v10, 0x0

    :goto_65
    array-length v11, v7

    if-ge v10, v11, :cond_78

    aget-object v11, v7, v10

    instance-of v12, v11, Landroid/text/style/ReplacementSpan;

    if-eqz v12, :cond_72

    move-object v8, v11

    check-cast v8, Landroid/text/style/ReplacementSpan;

    goto :goto_75

    :cond_72
    invoke-virtual {v11, v15}, Landroid/text/style/MetricAffectingSpan;->updateMeasureState(Landroid/text/TextPaint;)V

    :goto_75
    add-int/lit8 v10, v10, 0x1

    goto :goto_65

    :cond_78
    if-eqz v8, :cond_80

    if-eqz p6, :cond_7e

    move v2, v6

    goto :goto_7f

    :cond_7e
    move v2, v3

    :goto_7f
    return v2

    :cond_80
    move/from16 v17, v3

    move/from16 v18, v6

    goto :goto_8f

    :cond_85
    move v3, v6

    goto :goto_37

    :cond_87
    move/from16 v14, p2

    :goto_89
    move/from16 v6, p3

    move/from16 v17, v3

    move/from16 v18, v6

    :goto_8f
    if-eqz p6, :cond_92

    goto :goto_93

    :cond_92
    const/4 v2, 0x2

    :goto_93
    move v8, v2

    iget-boolean v2, v0, Landroid/text/TextLine;->mCharsValid:Z

    if-eqz v2, :cond_a8

    iget-object v3, v0, Landroid/text/TextLine;->mChars:[C

    sub-int v5, v18, v17

    move-object v2, v15

    move/from16 v4, v17

    move/from16 v6, p4

    move/from16 v7, p5

    invoke-virtual/range {v2 .. v8}, Landroid/text/TextPaint;->getTextRunCursor([CIIZII)I

    move-result v2

    return v2

    :cond_a8
    iget-object v11, v0, Landroid/text/TextLine;->mText:Ljava/lang/CharSequence;

    iget v2, v0, Landroid/text/TextLine;->mStart:I

    add-int v12, v2, v17

    add-int v13, v2, v18

    add-int/2addr v2, v9

    move-object v10, v15

    move/from16 v14, p4

    move-object v3, v15

    move v15, v2

    move/from16 v16, v8

    invoke-virtual/range {v10 .. v16}, Landroid/text/TextPaint;->getTextRunCursor(Ljava/lang/CharSequence;IIZII)I

    move-result v2

    iget v4, v0, Landroid/text/TextLine;->mStart:I

    sub-int/2addr v2, v4

    return v2

    :cond_c0
    :goto_c0
    if-eqz p6, :cond_cf

    iget-object v2, v0, Landroid/text/TextLine;->mText:Ljava/lang/CharSequence;

    iget v3, v0, Landroid/text/TextLine;->mStart:I

    add-int/2addr v3, v9

    invoke-static {v2, v3}, Landroid/text/TextUtils;->getOffsetAfter(Ljava/lang/CharSequence;I)I

    move-result v2

    iget v3, v0, Landroid/text/TextLine;->mStart:I

    sub-int/2addr v2, v3

    return v2

    :cond_cf
    iget-object v2, v0, Landroid/text/TextLine;->mText:Ljava/lang/CharSequence;

    iget v3, v0, Landroid/text/TextLine;->mStart:I

    add-int/2addr v3, v9

    invoke-static {v2, v3}, Landroid/text/TextUtils;->getOffsetBefore(Ljava/lang/CharSequence;I)I

    move-result v2

    iget v3, v0, Landroid/text/TextLine;->mStart:I

    sub-int/2addr v2, v3

    return v2
.end method

.method private getRunAdvance(Landroid/text/TextPaint;IIIIZI)F
    .registers 19

    move-object v0, p0

    iget-boolean v1, v0, Landroid/text/TextLine;->mCharsValid:Z

    if-eqz v1, :cond_16

    iget-object v2, v0, Landroid/text/TextLine;->mChars:[C

    move-object v1, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    invoke-virtual/range {v1 .. v8}, Landroid/text/TextPaint;->getRunAdvance([CIIIIZI)F

    move-result v1

    return v1

    :cond_16
    iget v1, v0, Landroid/text/TextLine;->mStart:I

    iget-object v2, v0, Landroid/text/TextLine;->mComputed:Landroid/text/PrecomputedText;

    if-nez v2, :cond_30

    iget-object v4, v0, Landroid/text/TextLine;->mText:Ljava/lang/CharSequence;

    add-int v5, v1, p2

    add-int v6, v1, p3

    add-int v7, v1, p4

    add-int v8, v1, p5

    add-int v10, v1, p7

    move-object v3, p1

    move/from16 v9, p6

    invoke-virtual/range {v3 .. v10}, Landroid/text/TextPaint;->getRunAdvance(Ljava/lang/CharSequence;IIIIZI)F

    move-result v2

    return v2

    :cond_30
    add-int v3, p2, v1

    add-int v4, p3, v1

    invoke-virtual {v2, v3, v4}, Landroid/text/PrecomputedText;->getWidth(II)F

    move-result v2

    return v2
.end method

.method private handleReplacement(Landroid/text/style/ReplacementSpan;Landroid/text/TextPaint;IIZLandroid/graphics/Canvas;FIIILandroid/graphics/Paint$FontMetricsInt;Z)F
    .registers 30

    move-object/from16 v0, p0

    move-object/from16 v11, p11

    const/4 v7, 0x0

    iget v1, v0, Landroid/text/TextLine;->mStart:I

    add-int v12, v1, p3

    add-int v13, v1, p4

    if-nez p12, :cond_14

    if-eqz p6, :cond_12

    if-eqz p5, :cond_12

    goto :goto_14

    :cond_12
    :goto_12
    move v14, v7

    goto :goto_55

    :cond_14
    :goto_14
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-eqz v11, :cond_1d

    const/4 v6, 0x1

    goto :goto_1e

    :cond_1d
    const/4 v6, 0x0

    :goto_1e
    move v8, v6

    if-eqz v8, :cond_32

    iget v1, v11, Landroid/graphics/Paint$FontMetricsInt;->top:I

    iget v2, v11, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    iget v3, v11, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    iget v4, v11, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    iget v5, v11, Landroid/graphics/Paint$FontMetricsInt;->leading:I

    move v9, v1

    move v10, v2

    move v14, v3

    move v15, v4

    move/from16 v16, v5

    goto :goto_38

    :cond_32
    move v9, v1

    move v10, v2

    move v14, v3

    move v15, v4

    move/from16 v16, v5

    :goto_38
    iget-object v3, v0, Landroid/text/TextLine;->mText:Ljava/lang/CharSequence;

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move v4, v12

    move v5, v13

    move-object/from16 v6, p11

    invoke-virtual/range {v1 .. v6}, Landroid/text/style/ReplacementSpan;->getSize(Landroid/graphics/Paint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;)I

    move-result v1

    int-to-float v7, v1

    if-eqz v8, :cond_12

    move-object/from16 v1, p11

    move v2, v9

    move v3, v10

    move v4, v14

    move v5, v15

    move/from16 v6, v16

    invoke-static/range {v1 .. v6}, Landroid/text/TextLine;->updateMetrics(Landroid/graphics/Paint$FontMetricsInt;IIIII)V

    goto :goto_12

    :goto_55
    if-eqz p6, :cond_74

    if-eqz p5, :cond_5d

    sub-float v1, p7, v14

    move v15, v1

    goto :goto_5f

    :cond_5d
    move/from16 v15, p7

    :goto_5f
    iget-object v3, v0, Landroid/text/TextLine;->mText:Ljava/lang/CharSequence;

    move-object/from16 v1, p1

    move-object/from16 v2, p6

    move v4, v12

    move v5, v13

    move v6, v15

    move/from16 v7, p8

    move/from16 v8, p9

    move/from16 v9, p10

    move-object/from16 v10, p2

    invoke-virtual/range {v1 .. v10}, Landroid/text/style/ReplacementSpan;->draw(Landroid/graphics/Canvas;Ljava/lang/CharSequence;IIFIIILandroid/graphics/Paint;)V

    goto :goto_76

    :cond_74
    move/from16 v15, p7

    :goto_76
    if-eqz p5, :cond_7a

    neg-float v1, v14

    goto :goto_7b

    :cond_7a
    move v1, v14

    :goto_7b
    return v1
.end method

.method private handleRun(IIIZLandroid/graphics/Canvas;Landroid/text/TextShaper$GlyphsConsumer;FIIILandroid/graphics/Paint$FontMetricsInt;Z)F
    .registers 47

    move-object/from16 v15, p0

    move/from16 v14, p1

    move/from16 v13, p2

    move/from16 v12, p3

    move-object/from16 v11, p11

    if-lt v13, v14, :cond_30c

    if-gt v13, v12, :cond_30c

    if-ne v14, v13, :cond_1e

    iget-object v0, v15, Landroid/text/TextLine;->mWorkPaint:Landroid/text/TextPaint;

    iget-object v1, v15, Landroid/text/TextLine;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V

    if-eqz v11, :cond_1c

    invoke-static {v11, v0}, Landroid/text/TextLine;->expandMetricsFromPaint(Landroid/graphics/Paint$FontMetricsInt;Landroid/text/TextPaint;)V

    :cond_1c
    const/4 v1, 0x0

    return v1

    :cond_1e
    iget-object v0, v15, Landroid/text/TextLine;->mSpanned:Landroid/text/Spanned;

    const/16 v17, 0x0

    const/16 v18, 0x1

    if-nez v0, :cond_2a

    const/4 v0, 0x0

    move/from16 v19, v0

    goto :goto_54

    :cond_2a
    iget-object v1, v15, Landroid/text/TextLine;->mMetricAffectingSpanSpanSet:Landroid/text/SpanSet;

    iget v2, v15, Landroid/text/TextLine;->mStart:I

    add-int v3, v2, v14

    add-int/2addr v2, v12

    invoke-virtual {v1, v0, v3, v2}, Landroid/text/SpanSet;->init(Landroid/text/Spanned;II)V

    iget-object v0, v15, Landroid/text/TextLine;->mCharacterStyleSpanSet:Landroid/text/SpanSet;

    iget-object v1, v15, Landroid/text/TextLine;->mSpanned:Landroid/text/Spanned;

    iget v2, v15, Landroid/text/TextLine;->mStart:I

    add-int v3, v2, v14

    add-int/2addr v2, v12

    invoke-virtual {v0, v1, v3, v2}, Landroid/text/SpanSet;->init(Landroid/text/Spanned;II)V

    iget-object v0, v15, Landroid/text/TextLine;->mMetricAffectingSpanSpanSet:Landroid/text/SpanSet;

    iget v0, v0, Landroid/text/SpanSet;->numberOfSpans:I

    if-nez v0, :cond_50

    iget-object v0, v15, Landroid/text/TextLine;->mCharacterStyleSpanSet:Landroid/text/SpanSet;

    iget v0, v0, Landroid/text/SpanSet;->numberOfSpans:I

    if-eqz v0, :cond_4d

    goto :goto_50

    :cond_4d
    move/from16 v0, v17

    goto :goto_52

    :cond_50
    :goto_50
    move/from16 v0, v18

    :goto_52
    move/from16 v19, v0

    :goto_54
    if-nez v19, :cond_9b

    iget-object v10, v15, Landroid/text/TextLine;->mWorkPaint:Landroid/text/TextPaint;

    move-object v1, v10

    iget-object v0, v15, Landroid/text/TextLine;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v10, v0}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V

    invoke-virtual {v10}, Landroid/text/TextPaint;->getStartHyphenEdit()I

    move-result v0

    invoke-direct {v15, v14, v0}, Landroid/text/TextLine;->adjustStartHyphenEdit(II)I

    move-result v0

    invoke-virtual {v10, v0}, Landroid/text/TextPaint;->setStartHyphenEdit(I)V

    invoke-virtual {v10}, Landroid/text/TextPaint;->getEndHyphenEdit()I

    move-result v0

    invoke-direct {v15, v12, v0}, Landroid/text/TextLine;->adjustEndHyphenEdit(II)I

    move-result v0

    invoke-virtual {v10, v0}, Landroid/text/TextPaint;->setEndHyphenEdit(I)V

    const/16 v16, 0x0

    move-object/from16 v0, p0

    move/from16 v2, p1

    move/from16 v3, p3

    move/from16 v4, p1

    move/from16 v5, p3

    move/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move/from16 v9, p7

    move-object/from16 v17, v10

    move/from16 v10, p8

    move/from16 v11, p9

    move/from16 v12, p10

    move-object/from16 v13, p11

    move/from16 v14, p12

    move/from16 v15, p2

    invoke-direct/range {v0 .. v16}, Landroid/text/TextLine;->handleText(Landroid/text/TextPaint;IIIIZLandroid/graphics/Canvas;Landroid/text/TextShaper$GlyphsConsumer;FIIILandroid/graphics/Paint$FontMetricsInt;ZILjava/util/ArrayList;)F

    move-result v0

    return v0

    :cond_9b
    move/from16 v20, p7

    move/from16 v0, p1

    move/from16 v13, p7

    move v14, v0

    :goto_a2
    move/from16 v15, p2

    if-ge v14, v15, :cond_309

    move-object/from16 v12, p0

    iget-object v11, v12, Landroid/text/TextLine;->mWorkPaint:Landroid/text/TextPaint;

    iget-object v0, v12, Landroid/text/TextLine;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v11, v0}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V

    iget-object v0, v12, Landroid/text/TextLine;->mMetricAffectingSpanSpanSet:Landroid/text/SpanSet;

    iget v1, v12, Landroid/text/TextLine;->mStart:I

    add-int v2, v1, v14

    move/from16 v10, p3

    add-int/2addr v1, v10

    invoke-virtual {v0, v2, v1}, Landroid/text/SpanSet;->getNextTransition(II)I

    move-result v0

    iget v1, v12, Landroid/text/TextLine;->mStart:I

    sub-int v9, v0, v1

    invoke-static {v9, v15}, Ljava/lang/Math;->min(II)I

    move-result v8

    const/4 v0, 0x0

    const/4 v1, 0x0

    move-object/from16 v21, v0

    :goto_c8
    iget-object v0, v12, Landroid/text/TextLine;->mMetricAffectingSpanSpanSet:Landroid/text/SpanSet;

    iget v0, v0, Landroid/text/SpanSet;->numberOfSpans:I

    if-ge v1, v0, :cond_11f

    iget-object v0, v12, Landroid/text/TextLine;->mMetricAffectingSpanSpanSet:Landroid/text/SpanSet;

    iget-object v0, v0, Landroid/text/SpanSet;->spanStarts:[I

    aget v0, v0, v1

    iget v2, v12, Landroid/text/TextLine;->mStart:I

    add-int/2addr v2, v8

    if-ge v0, v2, :cond_11c

    iget-object v0, v12, Landroid/text/TextLine;->mMetricAffectingSpanSpanSet:Landroid/text/SpanSet;

    iget-object v0, v0, Landroid/text/SpanSet;->spanEnds:[I

    aget v0, v0, v1

    iget v2, v12, Landroid/text/TextLine;->mStart:I

    add-int v3, v2, v14

    if-gt v0, v3, :cond_e6

    goto :goto_11c

    :cond_e6
    iget v0, v12, Landroid/text/TextLine;->mEllipsisStart:I

    add-int/2addr v2, v0

    iget-object v0, v12, Landroid/text/TextLine;->mMetricAffectingSpanSpanSet:Landroid/text/SpanSet;

    iget-object v0, v0, Landroid/text/SpanSet;->spanStarts:[I

    aget v0, v0, v1

    if-gt v2, v0, :cond_101

    iget-object v0, v12, Landroid/text/TextLine;->mMetricAffectingSpanSpanSet:Landroid/text/SpanSet;

    iget-object v0, v0, Landroid/text/SpanSet;->spanEnds:[I

    aget v0, v0, v1

    iget v2, v12, Landroid/text/TextLine;->mStart:I

    iget v3, v12, Landroid/text/TextLine;->mEllipsisEnd:I

    add-int/2addr v2, v3

    if-gt v0, v2, :cond_101

    move/from16 v0, v18

    goto :goto_103

    :cond_101
    move/from16 v0, v17

    :goto_103
    iget-object v2, v12, Landroid/text/TextLine;->mMetricAffectingSpanSpanSet:Landroid/text/SpanSet;

    iget-object v2, v2, Landroid/text/SpanSet;->spans:[Ljava/lang/Object;

    check-cast v2, [Landroid/text/style/MetricAffectingSpan;

    aget-object v2, v2, v1

    instance-of v3, v2, Landroid/text/style/ReplacementSpan;

    if-eqz v3, :cond_119

    if-nez v0, :cond_115

    move-object v3, v2

    check-cast v3, Landroid/text/style/ReplacementSpan;

    goto :goto_116

    :cond_115
    const/4 v3, 0x0

    :goto_116
    move-object/from16 v21, v3

    goto :goto_11c

    :cond_119
    invoke-virtual {v2, v11}, Landroid/text/style/MetricAffectingSpan;->updateDrawState(Landroid/text/TextPaint;)V

    :cond_11c
    :goto_11c
    add-int/lit8 v1, v1, 0x1

    goto :goto_c8

    :cond_11f
    if-eqz v21, :cond_152

    if-nez p12, :cond_129

    if-ge v8, v15, :cond_126

    goto :goto_129

    :cond_126
    move/from16 v16, v17

    goto :goto_12b

    :cond_129
    :goto_129
    move/from16 v16, v18

    :goto_12b
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object v2, v11

    move v3, v14

    move v4, v8

    move/from16 v5, p4

    move-object/from16 v6, p5

    move v7, v13

    move/from16 p7, v8

    move/from16 v8, p8

    move/from16 v22, v9

    move/from16 v9, p9

    move/from16 v10, p10

    move-object v15, v11

    move-object/from16 v11, p11

    move-object/from16 v23, v15

    move-object v15, v12

    move/from16 v12, v16

    invoke-direct/range {v0 .. v12}, Landroid/text/TextLine;->handleReplacement(Landroid/text/style/ReplacementSpan;Landroid/text/TextPaint;IIZLandroid/graphics/Canvas;FIIILandroid/graphics/Paint$FontMetricsInt;Z)F

    move-result v0

    add-float/2addr v13, v0

    move/from16 v33, v14

    goto/16 :goto_305

    :cond_152
    move/from16 p7, v8

    move/from16 v22, v9

    move-object/from16 v23, v11

    move-object v15, v12

    iget-object v12, v15, Landroid/text/TextLine;->mActivePaint:Landroid/text/TextPaint;

    iget-object v0, v15, Landroid/text/TextLine;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v12, v0}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V

    move v0, v14

    move/from16 v1, p7

    iget-object v11, v15, Landroid/text/TextLine;->mDecorationInfo:Landroid/text/TextLine$DecorationInfo;

    iget-object v2, v15, Landroid/text/TextLine;->mDecorations:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    move v2, v14

    move v10, v1

    move v9, v2

    move/from16 v24, v13

    move v13, v0

    :goto_170
    move/from16 v8, p7

    if-ge v9, v8, :cond_295

    iget-object v0, v15, Landroid/text/TextLine;->mCharacterStyleSpanSet:Landroid/text/SpanSet;

    iget v1, v15, Landroid/text/TextLine;->mStart:I

    add-int v2, v1, v9

    add-int v1, v1, v22

    invoke-virtual {v0, v2, v1}, Landroid/text/SpanSet;->getNextTransition(II)I

    move-result v0

    iget v1, v15, Landroid/text/TextLine;->mStart:I

    sub-int v7, v0, v1

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v25

    iget-object v0, v15, Landroid/text/TextLine;->mPaint:Landroid/text/TextPaint;

    move-object/from16 v1, v23

    invoke-virtual {v1, v0}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V

    const/4 v0, 0x0

    :goto_190
    iget-object v2, v15, Landroid/text/TextLine;->mCharacterStyleSpanSet:Landroid/text/SpanSet;

    iget v2, v2, Landroid/text/SpanSet;->numberOfSpans:I

    if-ge v0, v2, :cond_1bc

    iget-object v2, v15, Landroid/text/TextLine;->mCharacterStyleSpanSet:Landroid/text/SpanSet;

    iget-object v2, v2, Landroid/text/SpanSet;->spanStarts:[I

    aget v2, v2, v0

    iget v3, v15, Landroid/text/TextLine;->mStart:I

    add-int v3, v3, v25

    if-ge v2, v3, :cond_1b9

    iget-object v2, v15, Landroid/text/TextLine;->mCharacterStyleSpanSet:Landroid/text/SpanSet;

    iget-object v2, v2, Landroid/text/SpanSet;->spanEnds:[I

    aget v2, v2, v0

    iget v3, v15, Landroid/text/TextLine;->mStart:I

    add-int/2addr v3, v9

    if-gt v2, v3, :cond_1ae

    goto :goto_1b9

    :cond_1ae
    iget-object v2, v15, Landroid/text/TextLine;->mCharacterStyleSpanSet:Landroid/text/SpanSet;

    iget-object v2, v2, Landroid/text/SpanSet;->spans:[Ljava/lang/Object;

    check-cast v2, [Landroid/text/style/CharacterStyle;

    aget-object v2, v2, v0

    invoke-virtual {v2, v1}, Landroid/text/style/CharacterStyle;->updateDrawState(Landroid/text/TextPaint;)V

    :cond_1b9
    :goto_1b9
    add-int/lit8 v0, v0, 0x1

    goto :goto_190

    :cond_1bc
    invoke-direct {v15, v1, v11}, Landroid/text/TextLine;->extractDecorationInfo(Landroid/text/TextPaint;Landroid/text/TextLine$DecorationInfo;)V

    if-ne v9, v14, :cond_1d7

    invoke-virtual {v12, v1}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V

    move/from16 p7, v7

    move/from16 v27, v8

    move/from16 v28, v9

    move/from16 v29, v10

    move-object/from16 v30, v11

    move/from16 v32, v13

    move/from16 v33, v14

    move-object v14, v1

    move-object v13, v12

    move-object v12, v15

    goto/16 :goto_268

    :cond_1d7
    invoke-static {v1, v12}, Landroid/text/TextLine;->equalAttributes(Landroid/text/TextPaint;Landroid/text/TextPaint;)Z

    move-result v0

    if-nez v0, :cond_257

    iget-object v0, v15, Landroid/text/TextLine;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getStartHyphenEdit()I

    move-result v0

    invoke-direct {v15, v13, v0}, Landroid/text/TextLine;->adjustStartHyphenEdit(II)I

    move-result v0

    invoke-virtual {v12, v0}, Landroid/text/TextPaint;->setStartHyphenEdit(I)V

    iget-object v0, v15, Landroid/text/TextLine;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getEndHyphenEdit()I

    move-result v0

    invoke-direct {v15, v10, v0}, Landroid/text/TextLine;->adjustEndHyphenEdit(II)I

    move-result v0

    invoke-virtual {v12, v0}, Landroid/text/TextPaint;->setEndHyphenEdit(I)V

    if-nez p12, :cond_202

    move/from16 v0, p2

    move-object v6, v1

    if-ge v10, v0, :cond_1ff

    goto :goto_205

    :cond_1ff
    move/from16 v23, v17

    goto :goto_207

    :cond_202
    move/from16 v0, p2

    move-object v6, v1

    :goto_205
    move/from16 v23, v18

    :goto_207
    invoke-static {v10, v8}, Ljava/lang/Math;->min(II)I

    move-result v1

    move v4, v0

    move-object v5, v15

    move v15, v1

    iget-object v0, v5, Landroid/text/TextLine;->mDecorations:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    move-object v1, v12

    move v2, v13

    move v3, v10

    move v4, v14

    move/from16 v5, v22

    move-object/from16 v26, v6

    move/from16 v6, p4

    move/from16 p7, v7

    move-object/from16 v7, p5

    move/from16 v27, v8

    move-object/from16 v8, p6

    move/from16 v28, v9

    move/from16 v9, v24

    move/from16 v29, v10

    move/from16 v10, p8

    move-object/from16 v30, v11

    move/from16 v11, p9

    move-object/from16 v31, v12

    move/from16 v12, p10

    move/from16 v32, v13

    move-object/from16 v13, p11

    move/from16 v33, v14

    move/from16 v14, v23

    invoke-direct/range {v0 .. v16}, Landroid/text/TextLine;->handleText(Landroid/text/TextPaint;IIIIZLandroid/graphics/Canvas;Landroid/text/TextShaper$GlyphsConsumer;FIIILandroid/graphics/Paint$FontMetricsInt;ZILjava/util/ArrayList;)F

    move-result v0

    add-float v24, v24, v0

    move/from16 v0, v28

    move-object/from16 v14, v26

    move-object/from16 v13, v31

    invoke-virtual {v13, v14}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V

    move-object/from16 v12, p0

    iget-object v1, v12, Landroid/text/TextLine;->mDecorations:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    move/from16 v32, v0

    goto :goto_268

    :cond_257
    move/from16 p7, v7

    move/from16 v27, v8

    move/from16 v28, v9

    move/from16 v29, v10

    move-object/from16 v30, v11

    move/from16 v32, v13

    move/from16 v33, v14

    move-object v14, v1

    move-object v13, v12

    move-object v12, v15

    :goto_268
    move/from16 v10, p7

    invoke-virtual/range {v30 .. v30}, Landroid/text/TextLine$DecorationInfo;->hasDecoration()Z

    move-result v0

    if-eqz v0, :cond_282

    invoke-virtual/range {v30 .. v30}, Landroid/text/TextLine$DecorationInfo;->copyInfo()Landroid/text/TextLine$DecorationInfo;

    move-result-object v0

    move/from16 v2, v28

    iput v2, v0, Landroid/text/TextLine$DecorationInfo;->start:I

    move/from16 v1, p7

    iput v1, v0, Landroid/text/TextLine$DecorationInfo;->end:I

    iget-object v3, v12, Landroid/text/TextLine;->mDecorations:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_286

    :cond_282
    move/from16 v1, p7

    move/from16 v2, v28

    :goto_286
    move v9, v1

    move-object v15, v12

    move-object v12, v13

    move-object/from16 v23, v14

    move/from16 p7, v27

    move-object/from16 v11, v30

    move/from16 v13, v32

    move/from16 v14, v33

    goto/16 :goto_170

    :cond_295
    move/from16 v27, v8

    move v2, v9

    move/from16 v29, v10

    move-object/from16 v30, v11

    move/from16 v32, v13

    move/from16 v33, v14

    move-object/from16 v14, v23

    move-object v13, v12

    move-object v12, v15

    iget-object v0, v12, Landroid/text/TextLine;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getStartHyphenEdit()I

    move-result v0

    move/from16 v11, v32

    invoke-direct {v12, v11, v0}, Landroid/text/TextLine;->adjustStartHyphenEdit(II)I

    move-result v0

    invoke-virtual {v13, v0}, Landroid/text/TextPaint;->setStartHyphenEdit(I)V

    iget-object v0, v12, Landroid/text/TextLine;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getEndHyphenEdit()I

    move-result v0

    invoke-direct {v12, v10, v0}, Landroid/text/TextLine;->adjustEndHyphenEdit(II)I

    move-result v0

    invoke-virtual {v13, v0}, Landroid/text/TextPaint;->setEndHyphenEdit(I)V

    if-nez p12, :cond_2ca

    move/from16 v9, p2

    if-ge v10, v9, :cond_2c7

    goto :goto_2cc

    :cond_2c7
    move/from16 v23, v17

    goto :goto_2ce

    :cond_2ca
    move/from16 v9, p2

    :goto_2cc
    move/from16 v23, v18

    :goto_2ce
    move/from16 v8, v27

    invoke-static {v10, v8}, Ljava/lang/Math;->min(II)I

    move-result v15

    iget-object v0, v12, Landroid/text/TextLine;->mDecorations:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    move-object v1, v13

    move v2, v11

    move v3, v10

    move/from16 v4, v33

    move/from16 v5, v22

    move/from16 v6, p4

    move-object/from16 v7, p5

    move/from16 v25, v8

    move-object/from16 v8, p6

    move/from16 v9, v24

    move/from16 v26, v10

    move/from16 v10, p8

    move/from16 v32, v11

    move/from16 v11, p9

    move/from16 v12, p10

    move-object/from16 v27, v13

    move-object/from16 v13, p11

    move-object/from16 v28, v14

    move/from16 v14, v23

    invoke-direct/range {v0 .. v16}, Landroid/text/TextLine;->handleText(Landroid/text/TextPaint;IIIIZLandroid/graphics/Canvas;Landroid/text/TextShaper$GlyphsConsumer;FIIILandroid/graphics/Paint$FontMetricsInt;ZILjava/util/ArrayList;)F

    move-result v0

    add-float v24, v24, v0

    move/from16 v13, v24

    :goto_305
    move/from16 v14, v22

    goto/16 :goto_a2

    :cond_309
    sub-float v0, v13, v20

    return v0

    :cond_30c
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "measureLimit ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move/from16 v2, p2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ") is out of start ("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move/from16 v3, p1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ") and limit ("

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move/from16 v4, p3

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, ") bounds"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private handleText(Landroid/text/TextPaint;IIIIZLandroid/graphics/Canvas;Landroid/text/TextShaper$GlyphsConsumer;FIIILandroid/graphics/Paint$FontMetricsInt;ZILjava/util/ArrayList;)F
    .registers 45
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/text/TextPaint;",
            "IIIIZ",
            "Landroid/graphics/Canvas;",
            "Landroid/text/TextShaper$GlyphsConsumer;",
            "FIII",
            "Landroid/graphics/Paint$FontMetricsInt;",
            "ZI",
            "Ljava/util/ArrayList<",
            "Landroid/text/TextLine$DecorationInfo;",
            ">;)F"
        }
    .end annotation

    move-object/from16 v10, p0

    move-object/from16 v11, p1

    move/from16 v12, p2

    move/from16 v13, p11

    move-object/from16 v14, p13

    move-object/from16 v15, p16

    iget-boolean v0, v10, Landroid/text/TextLine;->mIsJustifying:Z

    if-eqz v0, :cond_15

    iget v0, v10, Landroid/text/TextLine;->mAddedWidthForJustify:F

    invoke-virtual {v11, v0}, Landroid/text/TextPaint;->setWordSpacing(F)V

    :cond_15
    if-eqz v14, :cond_1a

    invoke-static {v14, v11}, Landroid/text/TextLine;->expandMetricsFromPaint(Landroid/graphics/Paint$FontMetricsInt;Landroid/text/TextPaint;)V

    :cond_1a
    move/from16 v9, p3

    if-ne v9, v12, :cond_20

    const/4 v0, 0x0

    return v0

    :cond_20
    const/4 v8, 0x0

    if-nez v15, :cond_25

    const/4 v0, 0x0

    goto :goto_29

    :cond_25
    invoke-virtual/range {p16 .. p16}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_29
    move v7, v0

    if-nez p14, :cond_3b

    if-nez p7, :cond_30

    if-eqz p8, :cond_39

    :cond_30
    iget v0, v11, Landroid/text/TextPaint;->bgColor:I

    if-nez v0, :cond_3b

    if-nez v7, :cond_3b

    if-eqz p6, :cond_39

    goto :goto_3b

    :cond_39
    move v12, v7

    goto :goto_50

    :cond_3b
    :goto_3b
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move v12, v7

    move/from16 v7, p15

    invoke-direct/range {v0 .. v7}, Landroid/text/TextLine;->getRunAdvance(Landroid/text/TextPaint;IIIIZI)F

    move-result v8

    :goto_50
    if-eqz p6, :cond_5b

    sub-float v0, p9, v8

    move/from16 v1, p9

    move/from16 v16, v0

    move/from16 v17, v1

    goto :goto_63

    :cond_5b
    move/from16 v0, p9

    add-float v1, p9, v8

    move/from16 v16, v0

    move/from16 v17, v1

    :goto_63
    if-eqz p8, :cond_7d

    move-object/from16 v0, p0

    move-object/from16 v1, p8

    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v18, v8

    move/from16 v8, v16

    invoke-direct/range {v0 .. v8}, Landroid/text/TextLine;->shapeTextRun(Landroid/text/TextShaper$GlyphsConsumer;Landroid/text/TextPaint;IIIIZF)V

    goto :goto_7f

    :cond_7d
    move/from16 v18, v8

    :goto_7f
    iget-boolean v0, v10, Landroid/text/TextLine;->mUseFallbackExtent:Z

    if-eqz v0, :cond_98

    if-eqz v14, :cond_98

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p13

    invoke-direct/range {v0 .. v7}, Landroid/text/TextLine;->expandMetricsFromPaint(Landroid/text/TextPaint;IIIIZLandroid/graphics/Paint$FontMetricsInt;)V

    :cond_98
    if-eqz p7, :cond_1a9

    iget v0, v11, Landroid/text/TextPaint;->bgColor:I

    if-eqz v0, :cond_c8

    invoke-virtual/range {p1 .. p1}, Landroid/text/TextPaint;->getColor()I

    move-result v6

    invoke-virtual/range {p1 .. p1}, Landroid/text/TextPaint;->getStyle()Landroid/graphics/Paint$Style;

    move-result-object v7

    iget v0, v11, Landroid/text/TextPaint;->bgColor:I

    invoke-virtual {v11, v0}, Landroid/text/TextPaint;->setColor(I)V

    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v11, v0}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    move/from16 v8, p10

    int-to-float v2, v8

    move/from16 v5, p12

    int-to-float v4, v5

    move-object/from16 v0, p7

    move/from16 v1, v16

    move/from16 v3, v17

    move-object/from16 v5, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    invoke-virtual {v11, v7}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-virtual {v11, v6}, Landroid/text/TextPaint;->setColor(I)V

    goto :goto_ca

    :cond_c8
    move/from16 v8, p10

    :goto_ca
    iget v0, v11, Landroid/text/TextPaint;->baselineShift:I

    add-int v19, v13, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p7

    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, v16

    move/from16 v9, v19

    invoke-direct/range {v0 .. v9}, Landroid/text/TextLine;->drawTextRun(Landroid/graphics/Canvas;Landroid/text/TextPaint;IIIIZFI)V

    if-eqz v12, :cond_1a4

    const/4 v0, 0x0

    move v8, v0

    :goto_e9
    if-ge v8, v12, :cond_19f

    invoke-virtual {v15, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Landroid/text/TextLine$DecorationInfo;

    iget v0, v9, Landroid/text/TextLine$DecorationInfo;->start:I

    move/from16 v19, v12

    move/from16 v12, p2

    invoke-static {v0, v12}, Ljava/lang/Math;->max(II)I

    move-result v20

    iget v0, v9, Landroid/text/TextLine$DecorationInfo;->end:I

    move/from16 v7, p15

    invoke-static {v0, v7}, Ljava/lang/Math;->min(II)I

    move-result v21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, v20

    invoke-direct/range {v0 .. v7}, Landroid/text/TextLine;->getRunAdvance(Landroid/text/TextPaint;IIIIZI)F

    move-result v22

    move/from16 v7, v21

    invoke-direct/range {v0 .. v7}, Landroid/text/TextLine;->getRunAdvance(Landroid/text/TextPaint;IIIIZI)F

    move-result v23

    if-eqz p6, :cond_129

    sub-float v0, v17, v23

    sub-float v1, v17, v22

    move/from16 v24, v0

    move/from16 v25, v1

    goto :goto_131

    :cond_129
    add-float v0, v16, v22

    add-float v1, v16, v23

    move/from16 v24, v0

    move/from16 v25, v1

    :goto_131
    iget v0, v9, Landroid/text/TextLine$DecorationInfo;->underlineColor:I

    if-eqz v0, :cond_149

    iget v2, v9, Landroid/text/TextLine$DecorationInfo;->underlineColor:I

    invoke-virtual/range {p1 .. p1}, Landroid/text/TextPaint;->getUnderlinePosition()F

    move-result v3

    iget v4, v9, Landroid/text/TextLine$DecorationInfo;->underlineThickness:F

    int-to-float v7, v13

    move-object/from16 v0, p1

    move-object/from16 v1, p7

    move/from16 v5, v24

    move/from16 v6, v25

    invoke-static/range {v0 .. v7}, Landroid/text/TextLine;->drawStroke(Landroid/text/TextPaint;Landroid/graphics/Canvas;IFFFFF)V

    :cond_149
    iget-boolean v0, v9, Landroid/text/TextLine$DecorationInfo;->isUnderlineText:Z

    const/high16 v7, 0x3f800000  # 1.0f

    if-eqz v0, :cond_174

    nop

    invoke-virtual/range {p1 .. p1}, Landroid/text/TextPaint;->getUnderlineThickness()F

    move-result v0

    invoke-static {v0, v7}, Ljava/lang/Math;->max(FF)F

    move-result v26

    invoke-virtual/range {p1 .. p1}, Landroid/text/TextPaint;->getColor()I

    move-result v2

    invoke-virtual/range {p1 .. p1}, Landroid/text/TextPaint;->getUnderlinePosition()F

    move-result v3

    int-to-float v6, v13

    move-object/from16 v0, p1

    move-object/from16 v1, p7

    move/from16 v4, v26

    move/from16 v5, v24

    move/from16 v27, v6

    move/from16 v6, v25

    move v10, v7

    move/from16 v7, v27

    invoke-static/range {v0 .. v7}, Landroid/text/TextLine;->drawStroke(Landroid/text/TextPaint;Landroid/graphics/Canvas;IFFFFF)V

    goto :goto_175

    :cond_174
    move v10, v7

    :goto_175
    iget-boolean v0, v9, Landroid/text/TextLine$DecorationInfo;->isStrikeThruText:Z

    if-eqz v0, :cond_197

    nop

    invoke-virtual/range {p1 .. p1}, Landroid/text/TextPaint;->getStrikeThruThickness()F

    move-result v0

    invoke-static {v0, v10}, Ljava/lang/Math;->max(FF)F

    move-result v10

    invoke-virtual/range {p1 .. p1}, Landroid/text/TextPaint;->getColor()I

    move-result v2

    invoke-virtual/range {p1 .. p1}, Landroid/text/TextPaint;->getStrikeThruPosition()F

    move-result v3

    int-to-float v7, v13

    move-object/from16 v0, p1

    move-object/from16 v1, p7

    move v4, v10

    move/from16 v5, v24

    move/from16 v6, v25

    invoke-static/range {v0 .. v7}, Landroid/text/TextLine;->drawStroke(Landroid/text/TextPaint;Landroid/graphics/Canvas;IFFFFF)V

    :cond_197
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v10, p0

    move/from16 v12, v19

    goto/16 :goto_e9

    :cond_19f
    move/from16 v19, v12

    move/from16 v12, p2

    goto :goto_1ad

    :cond_1a4
    move/from16 v19, v12

    move/from16 v12, p2

    goto :goto_1ad

    :cond_1a9
    move/from16 v19, v12

    move/from16 v12, p2

    :goto_1ad
    if-eqz p6, :cond_1b3

    move/from16 v8, v18

    neg-float v0, v8

    goto :goto_1b6

    :cond_1b3
    move/from16 v8, v18

    move v0, v8

    :goto_1b6
    return v0
.end method

.method public static isLineEndSpace(C)Z
    .registers 2

    const/16 v0, 0x20

    if-eq p0, v0, :cond_23

    const/16 v0, 0x9

    if-eq p0, v0, :cond_23

    const/16 v0, 0x1680

    if-eq p0, v0, :cond_23

    const/16 v0, 0x2000

    if-gt v0, p0, :cond_18

    const/16 v0, 0x200a

    if-gt p0, v0, :cond_18

    const/16 v0, 0x2007

    if-ne p0, v0, :cond_23

    :cond_18
    const/16 v0, 0x205f

    if-eq p0, v0, :cond_23

    const/16 v0, 0x3000

    if-ne p0, v0, :cond_21

    goto :goto_23

    :cond_21
    const/4 v0, 0x0

    goto :goto_24

    :cond_23
    :goto_23
    const/4 v0, 0x1

    :goto_24
    return v0
.end method

.method private isStretchableWhitespace(I)Z
    .registers 3

    const/16 v0, 0x20

    if-ne p1, v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method private measureRun(IIIZLandroid/graphics/Paint$FontMetricsInt;)F
    .registers 19

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v11, p5

    invoke-direct/range {v0 .. v12}, Landroid/text/TextLine;->handleRun(IIIZLandroid/graphics/Canvas;Landroid/text/TextShaper$GlyphsConsumer;FIIILandroid/graphics/Paint$FontMetricsInt;Z)F

    move-result v0

    return v0
.end method

.method public static obtain()Landroid/text/TextLine;
    .registers 5

    sget-object v0, Landroid/text/TextLine;->sCached:[Landroid/text/TextLine;

    monitor-enter v0

    :try_start_3
    array-length v1, v0

    :cond_4
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_14

    sget-object v2, Landroid/text/TextLine;->sCached:[Landroid/text/TextLine;

    aget-object v3, v2, v1

    if-eqz v3, :cond_4

    nop

    const/4 v4, 0x0

    aput-object v4, v2, v1

    monitor-exit v0

    return-object v3

    :cond_14
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_1b

    new-instance v0, Landroid/text/TextLine;

    invoke-direct {v0}, Landroid/text/TextLine;-><init>()V

    return-object v0

    :catchall_1b
    move-exception v1

    :try_start_1c
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_1b

    throw v1
.end method

.method public static recycle(Landroid/text/TextLine;)Landroid/text/TextLine;
    .registers 6

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/text/TextLine;->mText:Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/text/TextLine;->mPaint:Landroid/text/TextPaint;

    iput-object v0, p0, Landroid/text/TextLine;->mDirections:Landroid/text/Layout$Directions;

    iput-object v0, p0, Landroid/text/TextLine;->mSpanned:Landroid/text/Spanned;

    iput-object v0, p0, Landroid/text/TextLine;->mTabs:Landroid/text/Layout$TabStops;

    iput-object v0, p0, Landroid/text/TextLine;->mChars:[C

    iput-object v0, p0, Landroid/text/TextLine;->mComputed:Landroid/text/PrecomputedText;

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/text/TextLine;->mUseFallbackExtent:Z

    iget-object v1, p0, Landroid/text/TextLine;->mMetricAffectingSpanSpanSet:Landroid/text/SpanSet;

    invoke-virtual {v1}, Landroid/text/SpanSet;->recycle()V

    iget-object v1, p0, Landroid/text/TextLine;->mCharacterStyleSpanSet:Landroid/text/SpanSet;

    invoke-virtual {v1}, Landroid/text/SpanSet;->recycle()V

    iget-object v1, p0, Landroid/text/TextLine;->mReplacementSpanSpanSet:Landroid/text/SpanSet;

    invoke-virtual {v1}, Landroid/text/SpanSet;->recycle()V

    sget-object v1, Landroid/text/TextLine;->sCached:[Landroid/text/TextLine;

    monitor-enter v1

    const/4 v2, 0x0

    :goto_25
    :try_start_25
    sget-object v3, Landroid/text/TextLine;->sCached:[Landroid/text/TextLine;

    array-length v4, v3

    if-ge v2, v4, :cond_34

    aget-object v4, v3, v2

    if-nez v4, :cond_31

    aput-object p0, v3, v2

    goto :goto_34

    :cond_31
    add-int/lit8 v2, v2, 0x1

    goto :goto_25

    :cond_34
    :goto_34
    monitor-exit v1

    return-object v0

    :catchall_36
    move-exception v0

    monitor-exit v1
    :try_end_38
    .catchall {:try_start_25 .. :try_end_38} :catchall_36

    throw v0
.end method

.method private shapeRun(Landroid/text/TextShaper$GlyphsConsumer;IIZFZ)F
    .registers 23

    move-object/from16 v13, p0

    iget v0, v13, Landroid/text/TextLine;->mDir:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_8

    goto :goto_9

    :cond_8
    const/4 v1, 0x0

    :goto_9
    move/from16 v14, p4

    if-ne v1, v14, :cond_2c

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p3

    move/from16 v4, p4

    invoke-direct/range {v0 .. v5}, Landroid/text/TextLine;->measureRun(IIIZLandroid/graphics/Paint$FontMetricsInt;)F

    move-result v0

    neg-float v15, v0

    add-float v7, p5, v15

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v0, p0

    move-object/from16 v6, p1

    invoke-direct/range {v0 .. v12}, Landroid/text/TextLine;->handleRun(IIIZLandroid/graphics/Canvas;Landroid/text/TextShaper$GlyphsConsumer;FIIILandroid/graphics/Paint$FontMetricsInt;Z)F

    return v15

    :cond_2c
    const/4 v5, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v6, p1

    move/from16 v7, p5

    move/from16 v12, p6

    invoke-direct/range {v0 .. v12}, Landroid/text/TextLine;->handleRun(IIIZLandroid/graphics/Canvas;Landroid/text/TextShaper$GlyphsConsumer;FIIILandroid/graphics/Paint$FontMetricsInt;Z)F

    move-result v0

    return v0
.end method

.method private shapeTextRun(Landroid/text/TextShaper$GlyphsConsumer;Landroid/text/TextPaint;IIIIZF)V
    .registers 22

    move-object v0, p0

    move/from16 v10, p3

    sub-int v11, p4, v10

    sub-int v12, p6, p5

    iget-boolean v1, v0, Landroid/text/TextLine;->mCharsValid:Z

    if-eqz v1, :cond_1e

    iget-object v1, v0, Landroid/text/TextLine;->mChars:[C

    const/4 v7, 0x0

    move/from16 v2, p3

    move v3, v11

    move/from16 v4, p5

    move v5, v12

    move/from16 v6, p8

    move/from16 v8, p7

    move-object v9, p2

    invoke-static/range {v1 .. v9}, Landroid/graphics/text/TextRunShaper;->shapeTextRun([CIIIIFFZLandroid/graphics/Paint;)Landroid/graphics/text/PositionedGlyphs;

    move-result-object v1

    goto :goto_33

    :cond_1e
    iget-object v1, v0, Landroid/text/TextLine;->mText:Ljava/lang/CharSequence;

    iget v2, v0, Landroid/text/TextLine;->mStart:I

    add-int v3, v2, v10

    add-int v4, v2, p5

    const/4 v7, 0x0

    move v2, v3

    move v3, v11

    move v5, v12

    move/from16 v6, p8

    move/from16 v8, p7

    move-object v9, p2

    invoke-static/range {v1 .. v9}, Landroid/graphics/text/TextRunShaper;->shapeTextRun(Ljava/lang/CharSequence;IIIIFFZLandroid/graphics/Paint;)Landroid/graphics/text/PositionedGlyphs;

    move-result-object v1

    :goto_33
    move-object v2, p1

    move-object v3, p2

    invoke-interface {p1, v10, v11, v1, p2}, Landroid/text/TextShaper$GlyphsConsumer;->accept(IILandroid/graphics/text/PositionedGlyphs;Landroid/text/TextPaint;)V

    return-void
.end method

.method static updateMetrics(Landroid/graphics/Paint$FontMetricsInt;IIIII)V
    .registers 7

    iget v0, p0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    iget v0, p0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    iget v0, p0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    invoke-static {v0, p3}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    iget v0, p0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    invoke-static {v0, p4}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    iget v0, p0, Landroid/graphics/Paint$FontMetricsInt;->leading:I

    invoke-static {v0, p5}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Landroid/graphics/Paint$FontMetricsInt;->leading:I

    return-void
.end method


# virtual methods
.method draw(Landroid/graphics/Canvas;FIII)V
    .registers 26

    move-object/from16 v10, p0

    const/4 v0, 0x0

    iget-object v1, v10, Landroid/text/TextLine;->mDirections:Landroid/text/Layout$Directions;

    invoke-virtual {v1}, Landroid/text/Layout$Directions;->getRunCount()I

    move-result v11

    const/4 v1, 0x0

    move v12, v1

    :goto_b
    if-ge v12, v11, :cond_98

    iget-object v1, v10, Landroid/text/TextLine;->mDirections:Landroid/text/Layout$Directions;

    invoke-virtual {v1, v12}, Landroid/text/Layout$Directions;->getRunStart(I)I

    move-result v13

    iget v1, v10, Landroid/text/TextLine;->mLen:I

    if-le v13, v1, :cond_1b

    move/from16 v19, v11

    goto/16 :goto_9a

    :cond_1b
    iget-object v1, v10, Landroid/text/TextLine;->mDirections:Landroid/text/Layout$Directions;

    invoke-virtual {v1, v12}, Landroid/text/Layout$Directions;->getRunLength(I)I

    move-result v1

    add-int/2addr v1, v13

    iget v2, v10, Landroid/text/TextLine;->mLen:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v14

    iget-object v1, v10, Landroid/text/TextLine;->mDirections:Landroid/text/Layout$Directions;

    invoke-virtual {v1, v12}, Landroid/text/Layout$Directions;->isRunRtl(I)Z

    move-result v15

    move v1, v13

    iget-boolean v2, v10, Landroid/text/TextLine;->mHasTabs:Z

    if-eqz v2, :cond_35

    move v2, v13

    goto :goto_36

    :cond_35
    move v2, v14

    :goto_36
    move/from16 v16, v0

    move/from16 v17, v1

    move v9, v2

    :goto_3b
    if-gt v9, v14, :cond_8d

    if-eq v9, v14, :cond_4c

    invoke-direct {v10, v9}, Landroid/text/TextLine;->charAt(I)C

    move-result v0

    const/16 v1, 0x9

    if-ne v0, v1, :cond_48

    goto :goto_4c

    :cond_48
    move/from16 v19, v11

    move v11, v9

    goto :goto_88

    :cond_4c
    :goto_4c
    add-float v5, p2, v16

    add-int/lit8 v0, v11, -0x1

    if-ne v12, v0, :cond_59

    iget v0, v10, Landroid/text/TextLine;->mLen:I

    if-eq v9, v0, :cond_57

    goto :goto_59

    :cond_57
    const/4 v0, 0x0

    goto :goto_5a

    :cond_59
    :goto_59
    const/4 v0, 0x1

    :goto_5a
    move/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v17

    move v3, v9

    move v4, v15

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v19, v11

    move v11, v9

    move/from16 v9, v18

    invoke-direct/range {v0 .. v9}, Landroid/text/TextLine;->drawRun(Landroid/graphics/Canvas;IIZFIIIZ)F

    move-result v0

    add-float v16, v16, v0

    if-eq v11, v14, :cond_84

    iget v0, v10, Landroid/text/TextLine;->mDir:I

    int-to-float v1, v0

    int-to-float v0, v0

    mul-float v0, v0, v16

    invoke-virtual {v10, v0}, Landroid/text/TextLine;->nextTab(F)F

    move-result v0

    mul-float/2addr v1, v0

    move/from16 v16, v1

    :cond_84
    add-int/lit8 v9, v11, 0x1

    move/from16 v17, v9

    :goto_88
    add-int/lit8 v9, v11, 0x1

    move/from16 v11, v19

    goto :goto_3b

    :cond_8d
    move/from16 v19, v11

    move v11, v9

    add-int/lit8 v12, v12, 0x1

    move/from16 v0, v16

    move/from16 v11, v19

    goto/16 :goto_b

    :cond_98
    move/from16 v19, v11

    :goto_9a
    return-void
.end method

.method getOffsetToLeftRightOf(IZ)I
    .registers 30

    move-object/from16 v7, p0

    move/from16 v8, p1

    move/from16 v9, p2

    const/4 v10, 0x0

    iget v11, v7, Landroid/text/TextLine;->mLen:I

    iget v0, v7, Landroid/text/TextLine;->mDir:I

    const/4 v12, -0x1

    if-ne v0, v12, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    move v15, v0

    iget-object v0, v7, Landroid/text/TextLine;->mDirections:Landroid/text/Layout$Directions;

    iget-object v6, v0, Landroid/text/Layout$Directions;->mDirections:[I

    const/4 v0, 0x0

    move v1, v10

    move v2, v11

    const/16 v16, -0x1

    const/4 v3, 0x0

    const v17, 0x3ffffff

    if-ne v8, v10, :cond_2e

    const/4 v4, -0x2

    move v12, v0

    move/from16 v20, v1

    move v13, v2

    move v14, v3

    move/from16 v22, v4

    move-object v8, v6

    move/from16 v6, v16

    goto/16 :goto_ff

    :cond_2e
    if-ne v8, v11, :cond_3d

    array-length v4, v6

    move v12, v0

    move/from16 v20, v1

    move v13, v2

    move v14, v3

    move/from16 v22, v4

    move-object v8, v6

    move/from16 v6, v16

    goto/16 :goto_ff

    :cond_3d
    const/4 v4, 0x0

    :goto_3e
    array-length v5, v6

    if-ge v4, v5, :cond_b4

    aget v5, v6, v4

    add-int v1, v10, v5

    if-lt v8, v1, :cond_ac

    add-int/lit8 v5, v4, 0x1

    aget v5, v6, v5

    and-int v5, v5, v17

    add-int/2addr v5, v1

    if-le v5, v11, :cond_51

    move v5, v11

    :cond_51
    if-ge v8, v5, :cond_a8

    add-int/lit8 v2, v4, 0x1

    aget v2, v6, v2

    ushr-int/lit8 v2, v2, 0x1a

    and-int/lit8 v0, v2, 0x3f

    if-ne v8, v1, :cond_a1

    add-int/lit8 v2, v8, -0x1

    const/16 v18, 0x0

    move/from16 v13, v18

    :goto_63
    array-length v14, v6

    if-ge v13, v14, :cond_98

    aget v14, v6, v13

    add-int/2addr v14, v10

    if-lt v2, v14, :cond_90

    add-int/lit8 v19, v13, 0x1

    aget v19, v6, v19

    and-int v19, v19, v17

    add-int v12, v14, v19

    if-le v12, v11, :cond_76

    move v12, v11

    :cond_76
    if-ge v2, v12, :cond_8d

    add-int/lit8 v19, v13, 0x1

    aget v19, v6, v19

    ushr-int/lit8 v19, v19, 0x1a

    move/from16 v20, v1

    and-int/lit8 v1, v19, 0x3f

    if-ge v1, v0, :cond_92

    move v4, v13

    move v0, v1

    move/from16 v19, v14

    move v5, v12

    const/4 v3, 0x1

    move/from16 v1, v19

    goto :goto_9a

    :cond_8d
    move/from16 v20, v1

    goto :goto_92

    :cond_90
    move/from16 v20, v1

    :cond_92
    :goto_92
    add-int/lit8 v13, v13, 0x2

    move/from16 v1, v20

    const/4 v12, -0x1

    goto :goto_63

    :cond_98
    move/from16 v20, v1

    :goto_9a
    move v12, v0

    move/from16 v20, v1

    move v14, v3

    move v13, v5

    move v5, v4

    goto :goto_ba

    :cond_a1
    move/from16 v20, v1

    move v12, v0

    move v14, v3

    move v13, v5

    move v5, v4

    goto :goto_ba

    :cond_a8
    move/from16 v20, v1

    move v2, v5

    goto :goto_ae

    :cond_ac
    move/from16 v20, v1

    :goto_ae
    add-int/lit8 v4, v4, 0x2

    move/from16 v1, v20

    const/4 v12, -0x1

    goto :goto_3e

    :cond_b4
    move v12, v0

    move/from16 v20, v1

    move v13, v2

    move v14, v3

    move v5, v4

    :goto_ba
    array-length v0, v6

    if-eq v5, v0, :cond_fa

    and-int/lit8 v0, v12, 0x1

    if-eqz v0, :cond_c3

    const/4 v0, 0x1

    goto :goto_c4

    :cond_c3
    const/4 v0, 0x0

    :goto_c4
    move v4, v0

    if-ne v9, v4, :cond_c9

    const/4 v0, 0x1

    goto :goto_ca

    :cond_c9
    const/4 v0, 0x0

    :goto_ca
    move v3, v0

    if-eqz v3, :cond_cf

    move v0, v13

    goto :goto_d1

    :cond_cf
    move/from16 v0, v20

    :goto_d1
    if-ne v8, v0, :cond_da

    if-eq v3, v14, :cond_d6

    goto :goto_da

    :cond_d6
    move/from16 v22, v5

    move-object v8, v6

    goto :goto_fd

    :cond_da
    :goto_da
    move-object/from16 v0, p0

    move v1, v5

    move/from16 v2, v20

    move/from16 v19, v3

    move v3, v13

    move/from16 v21, v4

    move/from16 v22, v5

    move/from16 v5, p1

    move-object v8, v6

    move/from16 v6, v19

    invoke-direct/range {v0 .. v6}, Landroid/text/TextLine;->getOffsetBeforeAfter(IIIZIZ)I

    move-result v0

    if-eqz v19, :cond_f3

    move v1, v13

    goto :goto_f5

    :cond_f3
    move/from16 v1, v20

    :goto_f5
    if-eq v0, v1, :cond_f8

    return v0

    :cond_f8
    move v6, v0

    goto :goto_ff

    :cond_fa
    move/from16 v22, v5

    move-object v8, v6

    :goto_fd
    move/from16 v6, v16

    :goto_ff
    if-ne v9, v15, :cond_103

    const/4 v0, 0x1

    goto :goto_104

    :cond_103
    const/4 v0, 0x0

    :goto_104
    if-eqz v0, :cond_108

    const/4 v1, 0x2

    goto :goto_109

    :cond_108
    const/4 v1, -0x2

    :goto_109
    add-int v5, v22, v1

    if-ltz v5, :cond_186

    array-length v1, v8

    if-ge v5, v1, :cond_186

    aget v1, v8, v5

    add-int v16, v10, v1

    add-int/lit8 v1, v5, 0x1

    aget v1, v8, v1

    and-int v1, v1, v17

    add-int v1, v16, v1

    if-le v1, v11, :cond_122

    move v1, v11

    move/from16 v19, v1

    goto :goto_124

    :cond_122
    move/from16 v19, v1

    :goto_124
    add-int/lit8 v1, v5, 0x1

    aget v1, v8, v1

    ushr-int/lit8 v1, v1, 0x1a

    and-int/lit8 v4, v1, 0x3f

    and-int/lit8 v1, v4, 0x1

    if-eqz v1, :cond_132

    const/4 v1, 0x1

    goto :goto_133

    :cond_132
    const/4 v1, 0x0

    :goto_133
    move v3, v1

    if-ne v9, v3, :cond_138

    const/4 v1, 0x1

    goto :goto_139

    :cond_138
    const/4 v1, 0x0

    :goto_139
    move/from16 v21, v1

    const/4 v0, -0x1

    if-ne v6, v0, :cond_170

    nop

    if-eqz v21, :cond_144

    move/from16 v23, v16

    goto :goto_146

    :cond_144
    move/from16 v23, v19

    :goto_146
    move-object/from16 v0, p0

    move v1, v5

    move/from16 v2, v16

    move/from16 v24, v3

    move/from16 v3, v19

    move/from16 v25, v4

    move/from16 v4, v24

    move/from16 v26, v5

    move/from16 v5, v23

    move-object/from16 v23, v8

    move v8, v6

    move/from16 v6, v21

    invoke-direct/range {v0 .. v6}, Landroid/text/TextLine;->getOffsetBeforeAfter(IIIZIZ)I

    move-result v6

    if-eqz v21, :cond_165

    move/from16 v0, v19

    goto :goto_167

    :cond_165
    move/from16 v0, v16

    :goto_167
    if-ne v6, v0, :cond_1a0

    move/from16 v22, v26

    move/from16 v12, v25

    move-object/from16 v8, v23

    goto :goto_ff

    :cond_170
    move/from16 v24, v3

    move/from16 v25, v4

    move/from16 v26, v5

    move-object/from16 v23, v8

    move v8, v6

    move/from16 v0, v25

    if-ge v0, v12, :cond_19f

    if-eqz v21, :cond_182

    move/from16 v1, v16

    goto :goto_184

    :cond_182
    move/from16 v1, v19

    :goto_184
    move v6, v1

    goto :goto_1a0

    :cond_186
    move/from16 v26, v5

    move-object/from16 v23, v8

    move v8, v6

    const/4 v1, -0x1

    if-ne v8, v1, :cond_196

    if-eqz v0, :cond_194

    iget v1, v7, Landroid/text/TextLine;->mLen:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    :cond_194
    move v6, v1

    goto :goto_1a0

    :cond_196
    if-gt v8, v11, :cond_19f

    if-eqz v0, :cond_19c

    move v1, v11

    goto :goto_19d

    :cond_19c
    move v1, v10

    :goto_19d
    move v6, v1

    goto :goto_1a0

    :cond_19f
    move v6, v8

    :cond_1a0
    :goto_1a0
    return v6
.end method

.method public justify(F)V
    .registers 8

    iget v0, p0, Landroid/text/TextLine;->mLen:I

    :goto_2
    const/4 v1, 0x1

    if-lez v0, :cond_18

    iget-object v2, p0, Landroid/text/TextLine;->mText:Ljava/lang/CharSequence;

    iget v3, p0, Landroid/text/TextLine;->mStart:I

    add-int/2addr v3, v0

    sub-int/2addr v3, v1

    invoke-interface {v2, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-static {v2}, Landroid/text/TextLine;->isLineEndSpace(C)Z

    move-result v2

    if-eqz v2, :cond_18

    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    :cond_18
    const/4 v2, 0x0

    invoke-direct {p0, v2, v0}, Landroid/text/TextLine;->countStretchableSpaces(II)I

    move-result v3

    if-nez v3, :cond_20

    return-void

    :cond_20
    const/4 v4, 0x0

    invoke-virtual {p0, v0, v2, v4}, Landroid/text/TextLine;->measure(IZLandroid/graphics/Paint$FontMetricsInt;)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    sub-float v4, p1, v2

    int-to-float v5, v3

    div-float/2addr v4, v5

    iput v4, p0, Landroid/text/TextLine;->mAddedWidthForJustify:F

    iput-boolean v1, p0, Landroid/text/TextLine;->mIsJustifying:Z

    return-void
.end method

.method public measure(IZLandroid/graphics/Paint$FontMetricsInt;)F
    .registers 24

    move-object/from16 v6, p0

    move/from16 v7, p1

    iget v0, v6, Landroid/text/TextLine;->mLen:I

    if-gt v7, v0, :cond_c7

    if-eqz p2, :cond_d

    add-int/lit8 v0, v7, -0x1

    goto :goto_e

    :cond_d
    move v0, v7

    :goto_e
    move v8, v0

    if-gez v8, :cond_13

    const/4 v0, 0x0

    return v0

    :cond_13
    const/4 v0, 0x0

    const/4 v1, 0x0

    move v9, v1

    :goto_16
    iget-object v1, v6, Landroid/text/TextLine;->mDirections:Landroid/text/Layout$Directions;

    invoke-virtual {v1}, Landroid/text/Layout$Directions;->getRunCount()I

    move-result v1

    if-ge v9, v1, :cond_c6

    iget-object v1, v6, Landroid/text/TextLine;->mDirections:Landroid/text/Layout$Directions;

    invoke-virtual {v1, v9}, Landroid/text/Layout$Directions;->getRunStart(I)I

    move-result v10

    iget v1, v6, Landroid/text/TextLine;->mLen:I

    if-le v10, v1, :cond_2a

    goto/16 :goto_c6

    :cond_2a
    iget-object v1, v6, Landroid/text/TextLine;->mDirections:Landroid/text/Layout$Directions;

    invoke-virtual {v1, v9}, Landroid/text/Layout$Directions;->getRunLength(I)I

    move-result v1

    add-int/2addr v1, v10

    iget v2, v6, Landroid/text/TextLine;->mLen:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v11

    iget-object v1, v6, Landroid/text/TextLine;->mDirections:Landroid/text/Layout$Directions;

    invoke-virtual {v1, v9}, Landroid/text/Layout$Directions;->isRunRtl(I)Z

    move-result v12

    move v1, v10

    iget-boolean v2, v6, Landroid/text/TextLine;->mHasTabs:Z

    if-eqz v2, :cond_44

    move v2, v10

    goto :goto_45

    :cond_44
    move v2, v11

    :goto_45
    move v13, v0

    move v14, v1

    move v15, v2

    :goto_48
    if-gt v15, v11, :cond_c1

    if-eq v15, v11, :cond_54

    invoke-direct {v6, v15}, Landroid/text/TextLine;->charAt(I)C

    move-result v0

    const/16 v1, 0x9

    if-ne v0, v1, :cond_be

    :cond_54
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-lt v8, v14, :cond_5c

    if-ge v8, v15, :cond_5c

    move v2, v1

    goto :goto_5d

    :cond_5c
    move v2, v0

    :goto_5d
    move/from16 v16, v2

    iget v2, v6, Landroid/text/TextLine;->mDir:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_66

    move v2, v1

    goto :goto_67

    :cond_66
    move v2, v0

    :goto_67
    if-ne v2, v12, :cond_6a

    move v0, v1

    :cond_6a
    move/from16 v17, v0

    if-eqz v16, :cond_7f

    if-eqz v17, :cond_7f

    move-object/from16 v0, p0

    move v1, v14

    move/from16 v2, p1

    move v3, v15

    move v4, v12

    move-object/from16 v5, p3

    invoke-direct/range {v0 .. v5}, Landroid/text/TextLine;->measureRun(IIIZLandroid/graphics/Paint$FontMetricsInt;)F

    move-result v0

    add-float/2addr v0, v13

    return v0

    :cond_7f
    move-object/from16 v0, p0

    move v1, v14

    move v2, v15

    move v3, v15

    move v4, v12

    move-object/from16 v5, p3

    invoke-direct/range {v0 .. v5}, Landroid/text/TextLine;->measureRun(IIIZLandroid/graphics/Paint$FontMetricsInt;)F

    move-result v5

    if-eqz v17, :cond_8f

    move v0, v5

    goto :goto_90

    :cond_8f
    neg-float v0, v5

    :goto_90
    add-float/2addr v13, v0

    if-eqz v16, :cond_a6

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move v1, v14

    move/from16 v2, p1

    move v3, v15

    move v4, v12

    move/from16 v19, v5

    move-object/from16 v5, v18

    invoke-direct/range {v0 .. v5}, Landroid/text/TextLine;->measureRun(IIIZLandroid/graphics/Paint$FontMetricsInt;)F

    move-result v0

    add-float/2addr v0, v13

    return v0

    :cond_a6
    move/from16 v19, v5

    if-eq v15, v11, :cond_bb

    if-ne v7, v15, :cond_ad

    return v13

    :cond_ad
    iget v0, v6, Landroid/text/TextLine;->mDir:I

    int-to-float v1, v0

    int-to-float v0, v0

    mul-float/2addr v0, v13

    invoke-virtual {v6, v0}, Landroid/text/TextLine;->nextTab(F)F

    move-result v0

    mul-float/2addr v1, v0

    if-ne v8, v15, :cond_ba

    return v1

    :cond_ba
    move v13, v1

    :cond_bb
    add-int/lit8 v0, v15, 0x1

    move v14, v0

    :cond_be
    add-int/lit8 v15, v15, 0x1

    goto :goto_48

    :cond_c1
    add-int/lit8 v9, v9, 0x1

    move v0, v13

    goto/16 :goto_16

    :cond_c6
    :goto_c6
    return v0

    :cond_c7
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "offset("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") should be less than line limit("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v6, Landroid/text/TextLine;->mLen:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public measureAllOffsets([ZLandroid/graphics/Paint$FontMetricsInt;)[F
    .registers 25

    move-object/from16 v6, p0

    iget v0, v6, Landroid/text/TextLine;->mLen:I

    add-int/lit8 v1, v0, 0x1

    new-array v7, v1, [F

    const/4 v8, 0x1

    add-int/2addr v0, v8

    new-array v9, v0, [I

    const/4 v0, 0x0

    :goto_d
    array-length v1, v9

    if-ge v0, v1, :cond_1d

    aget-boolean v1, p1, v0

    if-eqz v1, :cond_17

    add-int/lit8 v1, v0, -0x1

    goto :goto_18

    :cond_17
    move v1, v0

    :goto_18
    aput v1, v9, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    :cond_1d
    const/4 v10, 0x0

    aget v0, v9, v10

    if-gez v0, :cond_25

    const/4 v0, 0x0

    aput v0, v7, v10

    :cond_25
    const/4 v0, 0x0

    const/4 v1, 0x0

    move v11, v1

    :goto_28
    iget-object v1, v6, Landroid/text/TextLine;->mDirections:Landroid/text/Layout$Directions;

    invoke-virtual {v1}, Landroid/text/Layout$Directions;->getRunCount()I

    move-result v1

    if-ge v11, v1, :cond_105

    iget-object v1, v6, Landroid/text/TextLine;->mDirections:Landroid/text/Layout$Directions;

    invoke-virtual {v1, v11}, Landroid/text/Layout$Directions;->getRunStart(I)I

    move-result v12

    iget v1, v6, Landroid/text/TextLine;->mLen:I

    if-le v12, v1, :cond_3c

    goto/16 :goto_105

    :cond_3c
    iget-object v1, v6, Landroid/text/TextLine;->mDirections:Landroid/text/Layout$Directions;

    invoke-virtual {v1, v11}, Landroid/text/Layout$Directions;->getRunLength(I)I

    move-result v1

    add-int/2addr v1, v12

    iget v2, v6, Landroid/text/TextLine;->mLen:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v13

    iget-object v1, v6, Landroid/text/TextLine;->mDirections:Landroid/text/Layout$Directions;

    invoke-virtual {v1, v11}, Landroid/text/Layout$Directions;->isRunRtl(I)Z

    move-result v14

    move v1, v12

    iget-boolean v2, v6, Landroid/text/TextLine;->mHasTabs:Z

    if-eqz v2, :cond_56

    move v2, v12

    goto :goto_57

    :cond_56
    move v2, v13

    :goto_57
    move v15, v0

    move v5, v1

    move v4, v2

    :goto_5a
    if-gt v4, v13, :cond_fc

    if-eq v4, v13, :cond_6a

    invoke-direct {v6, v4}, Landroid/text/TextLine;->charAt(I)C

    move-result v0

    const/16 v1, 0x9

    if-ne v0, v1, :cond_67

    goto :goto_6a

    :cond_67
    move v8, v4

    goto/16 :goto_f7

    :cond_6a
    :goto_6a
    move/from16 v16, v15

    iget v0, v6, Landroid/text/TextLine;->mDir:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_73

    move v0, v8

    goto :goto_74

    :cond_73
    move v0, v10

    :goto_74
    if-ne v0, v14, :cond_78

    move v0, v8

    goto :goto_79

    :cond_78
    move v0, v10

    :goto_79
    move/from16 v17, v0

    move-object/from16 v0, p0

    move v1, v5

    move v2, v4

    move v3, v4

    move v8, v4

    move v4, v14

    move/from16 v18, v5

    move-object/from16 v5, p2

    invoke-direct/range {v0 .. v5}, Landroid/text/TextLine;->measureRun(IIIZLandroid/graphics/Paint$FontMetricsInt;)F

    move-result v4

    if-eqz v17, :cond_8e

    move v0, v4

    goto :goto_8f

    :cond_8e
    neg-float v0, v4

    :goto_8f
    add-float/2addr v15, v0

    if-eqz v17, :cond_95

    move/from16 v0, v16

    goto :goto_96

    :cond_95
    move v0, v15

    :goto_96
    move/from16 v19, v0

    if-eqz v17, :cond_9d

    move-object/from16 v5, p2

    goto :goto_9f

    :cond_9d
    const/4 v0, 0x0

    move-object v5, v0

    :goto_9f
    move/from16 v0, v18

    move v3, v0

    :goto_a2
    if-gt v3, v8, :cond_d3

    iget v0, v6, Landroid/text/TextLine;->mLen:I

    if-gt v3, v0, :cond_d3

    aget v0, v9, v3

    move/from16 v2, v18

    if-lt v0, v2, :cond_c8

    aget v0, v9, v3

    if-ge v0, v8, :cond_c8

    nop

    move-object/from16 v0, p0

    move v1, v2

    move/from16 v18, v2

    move v2, v3

    move/from16 v20, v3

    move v3, v8

    move/from16 v21, v4

    move v4, v14

    invoke-direct/range {v0 .. v5}, Landroid/text/TextLine;->measureRun(IIIZLandroid/graphics/Paint$FontMetricsInt;)F

    move-result v0

    add-float v0, v19, v0

    aput v0, v7, v20

    goto :goto_ce

    :cond_c8
    move/from16 v18, v2

    move/from16 v20, v3

    move/from16 v21, v4

    :goto_ce
    add-int/lit8 v3, v20, 0x1

    move/from16 v4, v21

    goto :goto_a2

    :cond_d3
    move/from16 v20, v3

    move/from16 v21, v4

    if-eq v8, v13, :cond_f4

    aget v0, v9, v8

    if-ne v0, v8, :cond_df

    aput v15, v7, v8

    :cond_df
    iget v0, v6, Landroid/text/TextLine;->mDir:I

    int-to-float v1, v0

    int-to-float v0, v0

    mul-float/2addr v0, v15

    invoke-virtual {v6, v0}, Landroid/text/TextLine;->nextTab(F)F

    move-result v0

    mul-float/2addr v1, v0

    add-int/lit8 v4, v8, 0x1

    aget v0, v9, v4

    if-ne v0, v8, :cond_f3

    add-int/lit8 v4, v8, 0x1

    aput v1, v7, v4

    :cond_f3
    move v15, v1

    :cond_f4
    add-int/lit8 v4, v8, 0x1

    move v5, v4

    :goto_f7
    add-int/lit8 v4, v8, 0x1

    const/4 v8, 0x1

    goto/16 :goto_5a

    :cond_fc
    move v8, v4

    move/from16 v18, v5

    add-int/lit8 v11, v11, 0x1

    move v0, v15

    const/4 v8, 0x1

    goto/16 :goto_28

    :cond_105
    :goto_105
    iget v1, v6, Landroid/text/TextLine;->mLen:I

    aget v2, v9, v1

    if-ne v2, v1, :cond_10d

    aput v0, v7, v1

    :cond_10d
    return-object v7
.end method

.method public metrics(Landroid/graphics/Paint$FontMetricsInt;)F
    .registers 4

    iget v0, p0, Landroid/text/TextLine;->mLen:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1}, Landroid/text/TextLine;->measure(IZLandroid/graphics/Paint$FontMetricsInt;)F

    move-result v0

    return v0
.end method

.method nextTab(F)F
    .registers 3

    iget-object v0, p0, Landroid/text/TextLine;->mTabs:Landroid/text/Layout$TabStops;

    if-eqz v0, :cond_9

    invoke-virtual {v0, p1}, Landroid/text/Layout$TabStops;->nextTab(F)F

    move-result v0

    return v0

    :cond_9
    const/high16 v0, 0x41a00000  # 20.0f

    invoke-static {p1, v0}, Landroid/text/Layout$TabStops;->nextDefaultStop(FF)F

    move-result v0

    return v0
.end method

.method public set(Landroid/text/TextPaint;Ljava/lang/CharSequence;IIILandroid/text/Layout$Directions;ZLandroid/text/Layout$TabStops;IIZ)V
    .registers 30

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p6

    move/from16 v6, p9

    move/from16 v7, p10

    iput-object v1, v0, Landroid/text/TextLine;->mPaint:Landroid/text/TextPaint;

    iput-object v2, v0, Landroid/text/TextLine;->mText:Ljava/lang/CharSequence;

    iput v3, v0, Landroid/text/TextLine;->mStart:I

    sub-int v8, v4, v3

    iput v8, v0, Landroid/text/TextLine;->mLen:I

    move/from16 v8, p5

    iput v8, v0, Landroid/text/TextLine;->mDir:I

    iput-object v5, v0, Landroid/text/TextLine;->mDirections:Landroid/text/Layout$Directions;

    move/from16 v9, p11

    iput-boolean v9, v0, Landroid/text/TextLine;->mUseFallbackExtent:Z

    if-eqz v5, :cond_d7

    move/from16 v10, p7

    iput-boolean v10, v0, Landroid/text/TextLine;->mHasTabs:Z

    const/4 v11, 0x0

    iput-object v11, v0, Landroid/text/TextLine;->mSpanned:Landroid/text/Spanned;

    const/4 v12, 0x0

    instance-of v13, v2, Landroid/text/Spanned;

    const/4 v15, 0x0

    if-eqz v13, :cond_47

    move-object v13, v2

    check-cast v13, Landroid/text/Spanned;

    iput-object v13, v0, Landroid/text/TextLine;->mSpanned:Landroid/text/Spanned;

    iget-object v14, v0, Landroid/text/TextLine;->mReplacementSpanSpanSet:Landroid/text/SpanSet;

    invoke-virtual {v14, v13, v3, v4}, Landroid/text/SpanSet;->init(Landroid/text/Spanned;II)V

    iget-object v13, v0, Landroid/text/TextLine;->mReplacementSpanSpanSet:Landroid/text/SpanSet;

    iget v13, v13, Landroid/text/SpanSet;->numberOfSpans:I

    if-lez v13, :cond_45

    const/4 v13, 0x1

    goto :goto_46

    :cond_45
    move v13, v15

    :goto_46
    move v12, v13

    :cond_47
    iput-object v11, v0, Landroid/text/TextLine;->mComputed:Landroid/text/PrecomputedText;

    instance-of v13, v2, Landroid/text/PrecomputedText;

    if-eqz v13, :cond_62

    move-object v13, v2

    check-cast v13, Landroid/text/PrecomputedText;

    iput-object v13, v0, Landroid/text/TextLine;->mComputed:Landroid/text/PrecomputedText;

    invoke-virtual {v13}, Landroid/text/PrecomputedText;->getParams()Landroid/text/PrecomputedText$Params;

    move-result-object v13

    invoke-virtual {v13}, Landroid/text/PrecomputedText$Params;->getTextPaint()Landroid/text/TextPaint;

    move-result-object v13

    invoke-virtual {v13, v1}, Landroid/text/TextPaint;->equalsForTextMeasurement(Landroid/graphics/Paint;)Z

    move-result v13

    if-nez v13, :cond_62

    iput-object v11, v0, Landroid/text/TextLine;->mComputed:Landroid/text/PrecomputedText;

    :cond_62
    iput-boolean v12, v0, Landroid/text/TextLine;->mCharsValid:Z

    if-eqz v12, :cond_be

    iget-object v11, v0, Landroid/text/TextLine;->mChars:[C

    if-eqz v11, :cond_6f

    array-length v11, v11

    iget v13, v0, Landroid/text/TextLine;->mLen:I

    if-ge v11, v13, :cond_77

    :cond_6f
    iget v11, v0, Landroid/text/TextLine;->mLen:I

    invoke-static {v11}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedCharArray(I)[C

    move-result-object v11

    iput-object v11, v0, Landroid/text/TextLine;->mChars:[C

    :cond_77
    iget-object v11, v0, Landroid/text/TextLine;->mChars:[C

    invoke-static {v2, v3, v4, v11, v15}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    if-eqz v12, :cond_be

    iget-object v11, v0, Landroid/text/TextLine;->mChars:[C

    move/from16 v13, p3

    :goto_82
    if-ge v13, v4, :cond_be

    iget-object v14, v0, Landroid/text/TextLine;->mReplacementSpanSpanSet:Landroid/text/SpanSet;

    invoke-virtual {v14, v13, v4}, Landroid/text/SpanSet;->getNextTransition(II)I

    move-result v14

    iget-object v15, v0, Landroid/text/TextLine;->mReplacementSpanSpanSet:Landroid/text/SpanSet;

    invoke-virtual {v15, v13, v14}, Landroid/text/SpanSet;->hasSpansIntersecting(II)Z

    move-result v15

    if-eqz v15, :cond_b7

    sub-int v15, v13, v3

    if-ge v15, v7, :cond_9e

    sub-int v15, v14, v3

    if-gt v15, v6, :cond_9b

    goto :goto_9e

    :cond_9b
    const/16 v16, 0x1

    goto :goto_b9

    :cond_9e
    :goto_9e
    sub-int v15, v13, v3

    const v17, 0xfffc

    aput-char v17, v11, v15

    sub-int v15, v13, v3

    const/16 v16, 0x1

    add-int/lit8 v15, v15, 0x1

    sub-int v1, v14, v3

    :goto_ad
    if-ge v15, v1, :cond_b9

    const v17, 0xfeff

    aput-char v17, v11, v15

    add-int/lit8 v15, v15, 0x1

    goto :goto_ad

    :cond_b7
    const/16 v16, 0x1

    :cond_b9
    :goto_b9
    move v13, v14

    move-object/from16 v1, p1

    const/4 v15, 0x0

    goto :goto_82

    :cond_be
    move-object/from16 v1, p8

    iput-object v1, v0, Landroid/text/TextLine;->mTabs:Landroid/text/Layout$TabStops;

    const/4 v11, 0x0

    iput v11, v0, Landroid/text/TextLine;->mAddedWidthForJustify:F

    const/4 v11, 0x0

    iput-boolean v11, v0, Landroid/text/TextLine;->mIsJustifying:Z

    if-eq v6, v7, :cond_cc

    move v13, v6

    goto :goto_cd

    :cond_cc
    move v13, v11

    :goto_cd
    iput v13, v0, Landroid/text/TextLine;->mEllipsisStart:I

    if-eq v6, v7, :cond_d3

    move v15, v7

    goto :goto_d4

    :cond_d3
    move v15, v11

    :goto_d4
    iput v15, v0, Landroid/text/TextLine;->mEllipsisEnd:I

    return-void

    :cond_d7
    move/from16 v10, p7

    move-object/from16 v1, p8

    new-instance v11, Ljava/lang/IllegalArgumentException;

    const-string v12, "Directions cannot be null"

    invoke-direct {v11, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v11
.end method

.method shape(Landroid/text/TextShaper$GlyphsConsumer;)V
    .registers 20

    move-object/from16 v7, p0

    const/4 v0, 0x0

    const/4 v8, 0x0

    iget-object v1, v7, Landroid/text/TextLine;->mDirections:Landroid/text/Layout$Directions;

    invoke-virtual {v1}, Landroid/text/Layout$Directions;->getRunCount()I

    move-result v9

    const/4 v1, 0x0

    move v10, v1

    :goto_c
    if-ge v10, v9, :cond_8a

    iget-object v1, v7, Landroid/text/TextLine;->mDirections:Landroid/text/Layout$Directions;

    invoke-virtual {v1, v10}, Landroid/text/Layout$Directions;->getRunStart(I)I

    move-result v11

    iget v1, v7, Landroid/text/TextLine;->mLen:I

    if-le v11, v1, :cond_1c

    move/from16 v17, v8

    goto/16 :goto_8c

    :cond_1c
    iget-object v1, v7, Landroid/text/TextLine;->mDirections:Landroid/text/Layout$Directions;

    invoke-virtual {v1, v10}, Landroid/text/Layout$Directions;->getRunLength(I)I

    move-result v1

    add-int/2addr v1, v11

    iget v2, v7, Landroid/text/TextLine;->mLen:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v12

    iget-object v1, v7, Landroid/text/TextLine;->mDirections:Landroid/text/Layout$Directions;

    invoke-virtual {v1, v10}, Landroid/text/Layout$Directions;->isRunRtl(I)Z

    move-result v13

    move v1, v11

    iget-boolean v2, v7, Landroid/text/TextLine;->mHasTabs:Z

    if-eqz v2, :cond_36

    move v2, v11

    goto :goto_37

    :cond_36
    move v2, v12

    :goto_37
    move v14, v0

    move v15, v1

    move v6, v2

    :goto_3a
    if-gt v6, v12, :cond_81

    if-eq v6, v12, :cond_4b

    invoke-direct {v7, v6}, Landroid/text/TextLine;->charAt(I)C

    move-result v0

    const/16 v1, 0x9

    if-ne v0, v1, :cond_47

    goto :goto_4b

    :cond_47
    move/from16 v17, v8

    move v8, v6

    goto :goto_7c

    :cond_4b
    :goto_4b
    add-float v5, v8, v14

    add-int/lit8 v0, v9, -0x1

    if-ne v10, v0, :cond_58

    iget v0, v7, Landroid/text/TextLine;->mLen:I

    if-eq v6, v0, :cond_56

    goto :goto_58

    :cond_56
    const/4 v0, 0x0

    goto :goto_59

    :cond_58
    :goto_58
    const/4 v0, 0x1

    :goto_59
    move/from16 v16, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v15

    move v3, v6

    move v4, v13

    move/from16 v17, v8

    move v8, v6

    move/from16 v6, v16

    invoke-direct/range {v0 .. v6}, Landroid/text/TextLine;->shapeRun(Landroid/text/TextShaper$GlyphsConsumer;IIZFZ)F

    move-result v0

    add-float/2addr v14, v0

    if-eq v8, v12, :cond_79

    iget v0, v7, Landroid/text/TextLine;->mDir:I

    int-to-float v1, v0

    int-to-float v0, v0

    mul-float/2addr v0, v14

    invoke-virtual {v7, v0}, Landroid/text/TextLine;->nextTab(F)F

    move-result v0

    mul-float/2addr v1, v0

    move v14, v1

    :cond_79
    add-int/lit8 v6, v8, 0x1

    move v15, v6

    :goto_7c
    add-int/lit8 v6, v8, 0x1

    move/from16 v8, v17

    goto :goto_3a

    :cond_81
    move/from16 v17, v8

    move v8, v6

    add-int/lit8 v10, v10, 0x1

    move v0, v14

    move/from16 v8, v17

    goto :goto_c

    :cond_8a
    move/from16 v17, v8

    :goto_8c
    return-void
.end method
