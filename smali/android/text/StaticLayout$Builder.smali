# classes3.dex

.class public final Landroid/text/StaticLayout$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/text/StaticLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# static fields
.field private static final sPool:Landroid/util/Pools$SynchronizedPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pools$SynchronizedPool<",
            "Landroid/text/StaticLayout$Builder;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAddLastLineLineSpacing:Z

.field private mAlignment:Landroid/text/Layout$Alignment;

.field private mBreakStrategy:I

.field private mEllipsize:Landroid/text/TextUtils$TruncateAt;

.field private mEllipsizedWidth:I

.field private mEnd:I

.field private mFallbackLineSpacing:Z

.field private final mFontMetricsInt:Landroid/graphics/Paint$FontMetricsInt;

.field private mHyphenationFrequency:I

.field private mIncludePad:Z

.field private mJustificationMode:I

.field private mLeftIndents:[I

.field private mLineBreakConfig:Landroid/graphics/text/LineBreakConfig;

.field private mMaxLines:I

.field private mPaint:Landroid/text/TextPaint;

.field private mRightIndents:[I

.field private mSpacingAdd:F

.field private mSpacingMult:F

.field private mStart:I

.field private mText:Ljava/lang/CharSequence;

.field private mTextDir:Landroid/text/TextDirectionHeuristic;

.field private mWidth:I


# direct methods
.method static bridge synthetic -$$Nest$fgetmAddLastLineLineSpacing(Landroid/text/StaticLayout$Builder;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/text/StaticLayout$Builder;->mAddLastLineLineSpacing:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmAlignment(Landroid/text/StaticLayout$Builder;)Landroid/text/Layout$Alignment;
    .registers 1

    iget-object p0, p0, Landroid/text/StaticLayout$Builder;->mAlignment:Landroid/text/Layout$Alignment;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmBreakStrategy(Landroid/text/StaticLayout$Builder;)I
    .registers 1

    iget p0, p0, Landroid/text/StaticLayout$Builder;->mBreakStrategy:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmEllipsize(Landroid/text/StaticLayout$Builder;)Landroid/text/TextUtils$TruncateAt;
    .registers 1

    iget-object p0, p0, Landroid/text/StaticLayout$Builder;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmEllipsizedWidth(Landroid/text/StaticLayout$Builder;)I
    .registers 1

    iget p0, p0, Landroid/text/StaticLayout$Builder;->mEllipsizedWidth:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmEnd(Landroid/text/StaticLayout$Builder;)I
    .registers 1

    iget p0, p0, Landroid/text/StaticLayout$Builder;->mEnd:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmFallbackLineSpacing(Landroid/text/StaticLayout$Builder;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/text/StaticLayout$Builder;->mFallbackLineSpacing:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmFontMetricsInt(Landroid/text/StaticLayout$Builder;)Landroid/graphics/Paint$FontMetricsInt;
    .registers 1

    iget-object p0, p0, Landroid/text/StaticLayout$Builder;->mFontMetricsInt:Landroid/graphics/Paint$FontMetricsInt;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmHyphenationFrequency(Landroid/text/StaticLayout$Builder;)I
    .registers 1

    iget p0, p0, Landroid/text/StaticLayout$Builder;->mHyphenationFrequency:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIncludePad(Landroid/text/StaticLayout$Builder;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/text/StaticLayout$Builder;->mIncludePad:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmJustificationMode(Landroid/text/StaticLayout$Builder;)I
    .registers 1

    iget p0, p0, Landroid/text/StaticLayout$Builder;->mJustificationMode:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmLeftIndents(Landroid/text/StaticLayout$Builder;)[I
    .registers 1

    iget-object p0, p0, Landroid/text/StaticLayout$Builder;->mLeftIndents:[I

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmLineBreakConfig(Landroid/text/StaticLayout$Builder;)Landroid/graphics/text/LineBreakConfig;
    .registers 1

    iget-object p0, p0, Landroid/text/StaticLayout$Builder;->mLineBreakConfig:Landroid/graphics/text/LineBreakConfig;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmMaxLines(Landroid/text/StaticLayout$Builder;)I
    .registers 1

    iget p0, p0, Landroid/text/StaticLayout$Builder;->mMaxLines:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmPaint(Landroid/text/StaticLayout$Builder;)Landroid/text/TextPaint;
    .registers 1

    iget-object p0, p0, Landroid/text/StaticLayout$Builder;->mPaint:Landroid/text/TextPaint;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmRightIndents(Landroid/text/StaticLayout$Builder;)[I
    .registers 1

    iget-object p0, p0, Landroid/text/StaticLayout$Builder;->mRightIndents:[I

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSpacingAdd(Landroid/text/StaticLayout$Builder;)F
    .registers 1

    iget p0, p0, Landroid/text/StaticLayout$Builder;->mSpacingAdd:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmSpacingMult(Landroid/text/StaticLayout$Builder;)F
    .registers 1

    iget p0, p0, Landroid/text/StaticLayout$Builder;->mSpacingMult:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmStart(Landroid/text/StaticLayout$Builder;)I
    .registers 1

    iget p0, p0, Landroid/text/StaticLayout$Builder;->mStart:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmText(Landroid/text/StaticLayout$Builder;)Ljava/lang/CharSequence;
    .registers 1

    iget-object p0, p0, Landroid/text/StaticLayout$Builder;->mText:Ljava/lang/CharSequence;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmTextDir(Landroid/text/StaticLayout$Builder;)Landroid/text/TextDirectionHeuristic;
    .registers 1

    iget-object p0, p0, Landroid/text/StaticLayout$Builder;->mTextDir:Landroid/text/TextDirectionHeuristic;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmWidth(Landroid/text/StaticLayout$Builder;)I
    .registers 1

    iget p0, p0, Landroid/text/StaticLayout$Builder;->mWidth:I

    return p0
.end method

.method static bridge synthetic -$$Nest$smrecycle(Landroid/text/StaticLayout$Builder;)V
    .registers 1

    invoke-static {p0}, Landroid/text/StaticLayout$Builder;->recycle(Landroid/text/StaticLayout$Builder;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Landroid/util/Pools$SynchronizedPool;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/util/Pools$SynchronizedPool;-><init>(I)V

    sput-object v0, Landroid/text/StaticLayout$Builder;->sPool:Landroid/util/Pools$SynchronizedPool;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Landroid/graphics/text/LineBreakConfig;->NONE:Landroid/graphics/text/LineBreakConfig;

    iput-object v0, p0, Landroid/text/StaticLayout$Builder;->mLineBreakConfig:Landroid/graphics/text/LineBreakConfig;

    new-instance v0, Landroid/graphics/Paint$FontMetricsInt;

    invoke-direct {v0}, Landroid/graphics/Paint$FontMetricsInt;-><init>()V

    iput-object v0, p0, Landroid/text/StaticLayout$Builder;->mFontMetricsInt:Landroid/graphics/Paint$FontMetricsInt;

    return-void
.end method

.method public static obtain(Ljava/lang/CharSequence;IILandroid/text/TextPaint;I)Landroid/text/StaticLayout$Builder;
    .registers 8

    sget-object v0, Landroid/text/StaticLayout$Builder;->sPool:Landroid/util/Pools$SynchronizedPool;

    invoke-virtual {v0}, Landroid/util/Pools$SynchronizedPool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/StaticLayout$Builder;

    if-nez v0, :cond_10

    new-instance v1, Landroid/text/StaticLayout$Builder;

    invoke-direct {v1}, Landroid/text/StaticLayout$Builder;-><init>()V

    move-object v0, v1

    :cond_10
    iput-object p0, v0, Landroid/text/StaticLayout$Builder;->mText:Ljava/lang/CharSequence;

    iput p1, v0, Landroid/text/StaticLayout$Builder;->mStart:I

    iput p2, v0, Landroid/text/StaticLayout$Builder;->mEnd:I

    iput-object p3, v0, Landroid/text/StaticLayout$Builder;->mPaint:Landroid/text/TextPaint;

    iput p4, v0, Landroid/text/StaticLayout$Builder;->mWidth:I

    sget-object v1, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    iput-object v1, v0, Landroid/text/StaticLayout$Builder;->mAlignment:Landroid/text/Layout$Alignment;

    sget-object v1, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;

    iput-object v1, v0, Landroid/text/StaticLayout$Builder;->mTextDir:Landroid/text/TextDirectionHeuristic;

    const/high16 v1, 0x3f800000  # 1.0f

    iput v1, v0, Landroid/text/StaticLayout$Builder;->mSpacingMult:F

    const/4 v1, 0x0

    iput v1, v0, Landroid/text/StaticLayout$Builder;->mSpacingAdd:F

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/text/StaticLayout$Builder;->mIncludePad:Z

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/text/StaticLayout$Builder;->mFallbackLineSpacing:Z

    iput p4, v0, Landroid/text/StaticLayout$Builder;->mEllipsizedWidth:I

    const/4 v2, 0x0

    iput-object v2, v0, Landroid/text/StaticLayout$Builder;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    const v2, 0x7fffffff

    iput v2, v0, Landroid/text/StaticLayout$Builder;->mMaxLines:I

    iput v1, v0, Landroid/text/StaticLayout$Builder;->mBreakStrategy:I

    iput v1, v0, Landroid/text/StaticLayout$Builder;->mHyphenationFrequency:I

    iput v1, v0, Landroid/text/StaticLayout$Builder;->mJustificationMode:I

    sget-object v1, Landroid/graphics/text/LineBreakConfig;->NONE:Landroid/graphics/text/LineBreakConfig;

    iput-object v1, v0, Landroid/text/StaticLayout$Builder;->mLineBreakConfig:Landroid/graphics/text/LineBreakConfig;

    return-object v0
.end method

.method private static recycle(Landroid/text/StaticLayout$Builder;)V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/text/StaticLayout$Builder;->mPaint:Landroid/text/TextPaint;

    iput-object v0, p0, Landroid/text/StaticLayout$Builder;->mText:Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/text/StaticLayout$Builder;->mLeftIndents:[I

    iput-object v0, p0, Landroid/text/StaticLayout$Builder;->mRightIndents:[I

    sget-object v0, Landroid/text/StaticLayout$Builder;->sPool:Landroid/util/Pools$SynchronizedPool;

    invoke-virtual {v0, p0}, Landroid/util/Pools$SynchronizedPool;->release(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public build()Landroid/text/StaticLayout;
    .registers 3

    new-instance v0, Landroid/text/StaticLayout;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/text/StaticLayout;-><init>(Landroid/text/StaticLayout$Builder;Landroid/text/StaticLayout-IA;)V

    invoke-static {p0}, Landroid/text/StaticLayout$Builder;->recycle(Landroid/text/StaticLayout$Builder;)V

    return-object v0
.end method

.method finish()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/text/StaticLayout$Builder;->mText:Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/text/StaticLayout$Builder;->mPaint:Landroid/text/TextPaint;

    iput-object v0, p0, Landroid/text/StaticLayout$Builder;->mLeftIndents:[I

    iput-object v0, p0, Landroid/text/StaticLayout$Builder;->mRightIndents:[I

    return-void
.end method

.method setAddLastLineLineSpacing(Z)Landroid/text/StaticLayout$Builder;
    .registers 2

    iput-boolean p1, p0, Landroid/text/StaticLayout$Builder;->mAddLastLineLineSpacing:Z

    return-object p0
.end method

.method public setAlignment(Landroid/text/Layout$Alignment;)Landroid/text/StaticLayout$Builder;
    .registers 2

    iput-object p1, p0, Landroid/text/StaticLayout$Builder;->mAlignment:Landroid/text/Layout$Alignment;

    return-object p0
.end method

.method public setBreakStrategy(I)Landroid/text/StaticLayout$Builder;
    .registers 2

    iput p1, p0, Landroid/text/StaticLayout$Builder;->mBreakStrategy:I

    return-object p0
.end method

.method public setEllipsize(Landroid/text/TextUtils$TruncateAt;)Landroid/text/StaticLayout$Builder;
    .registers 2

    iput-object p1, p0, Landroid/text/StaticLayout$Builder;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    return-object p0
.end method

.method public setEllipsizedWidth(I)Landroid/text/StaticLayout$Builder;
    .registers 2

    iput p1, p0, Landroid/text/StaticLayout$Builder;->mEllipsizedWidth:I

    return-object p0
.end method

.method public setHyphenationFrequency(I)Landroid/text/StaticLayout$Builder;
    .registers 2

    iput p1, p0, Landroid/text/StaticLayout$Builder;->mHyphenationFrequency:I

    return-object p0
.end method

.method public setIncludePad(Z)Landroid/text/StaticLayout$Builder;
    .registers 2

    iput-boolean p1, p0, Landroid/text/StaticLayout$Builder;->mIncludePad:Z

    return-object p0
.end method

.method public setIndents([I[I)Landroid/text/StaticLayout$Builder;
    .registers 3

    iput-object p1, p0, Landroid/text/StaticLayout$Builder;->mLeftIndents:[I

    iput-object p2, p0, Landroid/text/StaticLayout$Builder;->mRightIndents:[I

    return-object p0
.end method

.method public setJustificationMode(I)Landroid/text/StaticLayout$Builder;
    .registers 2

    iput p1, p0, Landroid/text/StaticLayout$Builder;->mJustificationMode:I

    return-object p0
.end method

.method public setLineBreakConfig(Landroid/graphics/text/LineBreakConfig;)Landroid/text/StaticLayout$Builder;
    .registers 2

    iput-object p1, p0, Landroid/text/StaticLayout$Builder;->mLineBreakConfig:Landroid/graphics/text/LineBreakConfig;

    return-object p0
.end method

.method public setLineSpacing(FF)Landroid/text/StaticLayout$Builder;
    .registers 3

    iput p1, p0, Landroid/text/StaticLayout$Builder;->mSpacingAdd:F

    iput p2, p0, Landroid/text/StaticLayout$Builder;->mSpacingMult:F

    return-object p0
.end method

.method public setMaxLines(I)Landroid/text/StaticLayout$Builder;
    .registers 2

    iput p1, p0, Landroid/text/StaticLayout$Builder;->mMaxLines:I

    return-object p0
.end method

.method public setPaint(Landroid/text/TextPaint;)Landroid/text/StaticLayout$Builder;
    .registers 2

    iput-object p1, p0, Landroid/text/StaticLayout$Builder;->mPaint:Landroid/text/TextPaint;

    return-object p0
.end method

.method public setText(Ljava/lang/CharSequence;)Landroid/text/StaticLayout$Builder;
    .registers 4

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Landroid/text/StaticLayout$Builder;->setText(Ljava/lang/CharSequence;II)Landroid/text/StaticLayout$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setText(Ljava/lang/CharSequence;II)Landroid/text/StaticLayout$Builder;
    .registers 4

    iput-object p1, p0, Landroid/text/StaticLayout$Builder;->mText:Ljava/lang/CharSequence;

    iput p2, p0, Landroid/text/StaticLayout$Builder;->mStart:I

    iput p3, p0, Landroid/text/StaticLayout$Builder;->mEnd:I

    return-object p0
.end method

.method public setTextDirection(Landroid/text/TextDirectionHeuristic;)Landroid/text/StaticLayout$Builder;
    .registers 2

    iput-object p1, p0, Landroid/text/StaticLayout$Builder;->mTextDir:Landroid/text/TextDirectionHeuristic;

    return-object p0
.end method

.method public setUseLineSpacingFromFallbacks(Z)Landroid/text/StaticLayout$Builder;
    .registers 2

    iput-boolean p1, p0, Landroid/text/StaticLayout$Builder;->mFallbackLineSpacing:Z

    return-object p0
.end method

.method public setWidth(I)Landroid/text/StaticLayout$Builder;
    .registers 3

    iput p1, p0, Landroid/text/StaticLayout$Builder;->mWidth:I

    iget-object v0, p0, Landroid/text/StaticLayout$Builder;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    if-nez v0, :cond_8

    iput p1, p0, Landroid/text/StaticLayout$Builder;->mEllipsizedWidth:I

    :cond_8
    return-object p0
.end method
