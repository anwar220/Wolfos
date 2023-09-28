# classes3.dex

.class public final Landroid/text/DynamicLayout$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/text/DynamicLayout;
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
            "Landroid/text/DynamicLayout$Builder;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAlignment:Landroid/text/Layout$Alignment;

.field private mBase:Ljava/lang/CharSequence;

.field private mBreakStrategy:I

.field private mDisplay:Ljava/lang/CharSequence;

.field private mEllipsize:Landroid/text/TextUtils$TruncateAt;

.field private mEllipsizedWidth:I

.field private mFallbackLineSpacing:Z

.field private final mFontMetricsInt:Landroid/graphics/Paint$FontMetricsInt;

.field private mHyphenationFrequency:I

.field private mIncludePad:Z

.field private mJustificationMode:I

.field private mPaint:Landroid/text/TextPaint;

.field private mSpacingAdd:F

.field private mSpacingMult:F

.field private mTextDir:Landroid/text/TextDirectionHeuristic;

.field private mWidth:I


# direct methods
.method static bridge synthetic -$$Nest$fgetmAlignment(Landroid/text/DynamicLayout$Builder;)Landroid/text/Layout$Alignment;
    .registers 1

    iget-object p0, p0, Landroid/text/DynamicLayout$Builder;->mAlignment:Landroid/text/Layout$Alignment;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmBase(Landroid/text/DynamicLayout$Builder;)Ljava/lang/CharSequence;
    .registers 1

    iget-object p0, p0, Landroid/text/DynamicLayout$Builder;->mBase:Ljava/lang/CharSequence;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmBreakStrategy(Landroid/text/DynamicLayout$Builder;)I
    .registers 1

    iget p0, p0, Landroid/text/DynamicLayout$Builder;->mBreakStrategy:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmDisplay(Landroid/text/DynamicLayout$Builder;)Ljava/lang/CharSequence;
    .registers 1

    iget-object p0, p0, Landroid/text/DynamicLayout$Builder;->mDisplay:Ljava/lang/CharSequence;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmEllipsize(Landroid/text/DynamicLayout$Builder;)Landroid/text/TextUtils$TruncateAt;
    .registers 1

    iget-object p0, p0, Landroid/text/DynamicLayout$Builder;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmEllipsizedWidth(Landroid/text/DynamicLayout$Builder;)I
    .registers 1

    iget p0, p0, Landroid/text/DynamicLayout$Builder;->mEllipsizedWidth:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmFallbackLineSpacing(Landroid/text/DynamicLayout$Builder;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/text/DynamicLayout$Builder;->mFallbackLineSpacing:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmFontMetricsInt(Landroid/text/DynamicLayout$Builder;)Landroid/graphics/Paint$FontMetricsInt;
    .registers 1

    iget-object p0, p0, Landroid/text/DynamicLayout$Builder;->mFontMetricsInt:Landroid/graphics/Paint$FontMetricsInt;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmHyphenationFrequency(Landroid/text/DynamicLayout$Builder;)I
    .registers 1

    iget p0, p0, Landroid/text/DynamicLayout$Builder;->mHyphenationFrequency:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIncludePad(Landroid/text/DynamicLayout$Builder;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/text/DynamicLayout$Builder;->mIncludePad:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmJustificationMode(Landroid/text/DynamicLayout$Builder;)I
    .registers 1

    iget p0, p0, Landroid/text/DynamicLayout$Builder;->mJustificationMode:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmPaint(Landroid/text/DynamicLayout$Builder;)Landroid/text/TextPaint;
    .registers 1

    iget-object p0, p0, Landroid/text/DynamicLayout$Builder;->mPaint:Landroid/text/TextPaint;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSpacingAdd(Landroid/text/DynamicLayout$Builder;)F
    .registers 1

    iget p0, p0, Landroid/text/DynamicLayout$Builder;->mSpacingAdd:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmSpacingMult(Landroid/text/DynamicLayout$Builder;)F
    .registers 1

    iget p0, p0, Landroid/text/DynamicLayout$Builder;->mSpacingMult:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmTextDir(Landroid/text/DynamicLayout$Builder;)Landroid/text/TextDirectionHeuristic;
    .registers 1

    iget-object p0, p0, Landroid/text/DynamicLayout$Builder;->mTextDir:Landroid/text/TextDirectionHeuristic;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmWidth(Landroid/text/DynamicLayout$Builder;)I
    .registers 1

    iget p0, p0, Landroid/text/DynamicLayout$Builder;->mWidth:I

    return p0
.end method

.method static bridge synthetic -$$Nest$smrecycle(Landroid/text/DynamicLayout$Builder;)V
    .registers 1

    invoke-static {p0}, Landroid/text/DynamicLayout$Builder;->recycle(Landroid/text/DynamicLayout$Builder;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Landroid/util/Pools$SynchronizedPool;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/util/Pools$SynchronizedPool;-><init>(I)V

    sput-object v0, Landroid/text/DynamicLayout$Builder;->sPool:Landroid/util/Pools$SynchronizedPool;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Paint$FontMetricsInt;

    invoke-direct {v0}, Landroid/graphics/Paint$FontMetricsInt;-><init>()V

    iput-object v0, p0, Landroid/text/DynamicLayout$Builder;->mFontMetricsInt:Landroid/graphics/Paint$FontMetricsInt;

    return-void
.end method

.method public static obtain(Ljava/lang/CharSequence;Landroid/text/TextPaint;I)Landroid/text/DynamicLayout$Builder;
    .registers 6

    sget-object v0, Landroid/text/DynamicLayout$Builder;->sPool:Landroid/util/Pools$SynchronizedPool;

    invoke-virtual {v0}, Landroid/util/Pools$SynchronizedPool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/DynamicLayout$Builder;

    if-nez v0, :cond_10

    new-instance v1, Landroid/text/DynamicLayout$Builder;

    invoke-direct {v1}, Landroid/text/DynamicLayout$Builder;-><init>()V

    move-object v0, v1

    :cond_10
    iput-object p0, v0, Landroid/text/DynamicLayout$Builder;->mBase:Ljava/lang/CharSequence;

    iput-object p0, v0, Landroid/text/DynamicLayout$Builder;->mDisplay:Ljava/lang/CharSequence;

    iput-object p1, v0, Landroid/text/DynamicLayout$Builder;->mPaint:Landroid/text/TextPaint;

    iput p2, v0, Landroid/text/DynamicLayout$Builder;->mWidth:I

    sget-object v1, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    iput-object v1, v0, Landroid/text/DynamicLayout$Builder;->mAlignment:Landroid/text/Layout$Alignment;

    sget-object v1, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;

    iput-object v1, v0, Landroid/text/DynamicLayout$Builder;->mTextDir:Landroid/text/TextDirectionHeuristic;

    const/high16 v1, 0x3f800000  # 1.0f

    iput v1, v0, Landroid/text/DynamicLayout$Builder;->mSpacingMult:F

    const/4 v1, 0x0

    iput v1, v0, Landroid/text/DynamicLayout$Builder;->mSpacingAdd:F

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/text/DynamicLayout$Builder;->mIncludePad:Z

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/text/DynamicLayout$Builder;->mFallbackLineSpacing:Z

    iput p2, v0, Landroid/text/DynamicLayout$Builder;->mEllipsizedWidth:I

    const/4 v2, 0x0

    iput-object v2, v0, Landroid/text/DynamicLayout$Builder;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    iput v1, v0, Landroid/text/DynamicLayout$Builder;->mBreakStrategy:I

    iput v1, v0, Landroid/text/DynamicLayout$Builder;->mHyphenationFrequency:I

    iput v1, v0, Landroid/text/DynamicLayout$Builder;->mJustificationMode:I

    return-object v0
.end method

.method private static recycle(Landroid/text/DynamicLayout$Builder;)V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/text/DynamicLayout$Builder;->mBase:Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/text/DynamicLayout$Builder;->mDisplay:Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/text/DynamicLayout$Builder;->mPaint:Landroid/text/TextPaint;

    sget-object v0, Landroid/text/DynamicLayout$Builder;->sPool:Landroid/util/Pools$SynchronizedPool;

    invoke-virtual {v0, p0}, Landroid/util/Pools$SynchronizedPool;->release(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public build()Landroid/text/DynamicLayout;
    .registers 3

    new-instance v0, Landroid/text/DynamicLayout;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/text/DynamicLayout;-><init>(Landroid/text/DynamicLayout$Builder;Landroid/text/DynamicLayout-IA;)V

    invoke-static {p0}, Landroid/text/DynamicLayout$Builder;->recycle(Landroid/text/DynamicLayout$Builder;)V

    return-object v0
.end method

.method public setAlignment(Landroid/text/Layout$Alignment;)Landroid/text/DynamicLayout$Builder;
    .registers 2

    iput-object p1, p0, Landroid/text/DynamicLayout$Builder;->mAlignment:Landroid/text/Layout$Alignment;

    return-object p0
.end method

.method public setBreakStrategy(I)Landroid/text/DynamicLayout$Builder;
    .registers 2

    iput p1, p0, Landroid/text/DynamicLayout$Builder;->mBreakStrategy:I

    return-object p0
.end method

.method public setDisplayText(Ljava/lang/CharSequence;)Landroid/text/DynamicLayout$Builder;
    .registers 2

    iput-object p1, p0, Landroid/text/DynamicLayout$Builder;->mDisplay:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setEllipsize(Landroid/text/TextUtils$TruncateAt;)Landroid/text/DynamicLayout$Builder;
    .registers 2

    iput-object p1, p0, Landroid/text/DynamicLayout$Builder;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    return-object p0
.end method

.method public setEllipsizedWidth(I)Landroid/text/DynamicLayout$Builder;
    .registers 2

    iput p1, p0, Landroid/text/DynamicLayout$Builder;->mEllipsizedWidth:I

    return-object p0
.end method

.method public setHyphenationFrequency(I)Landroid/text/DynamicLayout$Builder;
    .registers 2

    iput p1, p0, Landroid/text/DynamicLayout$Builder;->mHyphenationFrequency:I

    return-object p0
.end method

.method public setIncludePad(Z)Landroid/text/DynamicLayout$Builder;
    .registers 2

    iput-boolean p1, p0, Landroid/text/DynamicLayout$Builder;->mIncludePad:Z

    return-object p0
.end method

.method public setJustificationMode(I)Landroid/text/DynamicLayout$Builder;
    .registers 2

    iput p1, p0, Landroid/text/DynamicLayout$Builder;->mJustificationMode:I

    return-object p0
.end method

.method public setLineSpacing(FF)Landroid/text/DynamicLayout$Builder;
    .registers 3

    iput p1, p0, Landroid/text/DynamicLayout$Builder;->mSpacingAdd:F

    iput p2, p0, Landroid/text/DynamicLayout$Builder;->mSpacingMult:F

    return-object p0
.end method

.method public setTextDirection(Landroid/text/TextDirectionHeuristic;)Landroid/text/DynamicLayout$Builder;
    .registers 2

    iput-object p1, p0, Landroid/text/DynamicLayout$Builder;->mTextDir:Landroid/text/TextDirectionHeuristic;

    return-object p0
.end method

.method public setUseLineSpacingFromFallbacks(Z)Landroid/text/DynamicLayout$Builder;
    .registers 2

    iput-boolean p1, p0, Landroid/text/DynamicLayout$Builder;->mFallbackLineSpacing:Z

    return-object p0
.end method
