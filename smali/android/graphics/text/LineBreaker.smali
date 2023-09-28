# classes.dex

.class public Landroid/graphics/text/LineBreaker;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/text/LineBreaker$Result;,
        Landroid/graphics/text/LineBreaker$ParagraphConstraints;,
        Landroid/graphics/text/LineBreaker$Builder;,
        Landroid/graphics/text/LineBreaker$JustificationMode;,
        Landroid/graphics/text/LineBreaker$HyphenationFrequency;,
        Landroid/graphics/text/LineBreaker$BreakStrategy;
    }
.end annotation


# static fields
.field public static final BREAK_STRATEGY_BALANCED:I = 0x2

.field public static final BREAK_STRATEGY_HIGH_QUALITY:I = 0x1

.field public static final BREAK_STRATEGY_SIMPLE:I = 0x0

.field public static final HYPHENATION_FREQUENCY_FULL:I = 0x2

.field public static final HYPHENATION_FREQUENCY_NONE:I = 0x0

.field public static final HYPHENATION_FREQUENCY_NORMAL:I = 0x1

.field public static final JUSTIFICATION_MODE_INTER_WORD:I = 0x1

.field public static final JUSTIFICATION_MODE_NONE:I

.field private static final sRegistry:Llibcore/util/NativeAllocationRegistry;


# instance fields
.field private final mNativePtr:J


# direct methods
.method static bridge synthetic -$$Nest$smnGetLineAscent(JI)F
    .registers 3

    invoke-static {p0, p1, p2}, Landroid/graphics/text/LineBreaker;->nGetLineAscent(JI)F

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$smnGetLineBreakOffset(JI)I
    .registers 3

    invoke-static {p0, p1, p2}, Landroid/graphics/text/LineBreaker;->nGetLineBreakOffset(JI)I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$smnGetLineCount(J)I
    .registers 2

    invoke-static {p0, p1}, Landroid/graphics/text/LineBreaker;->nGetLineCount(J)I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$smnGetLineDescent(JI)F
    .registers 3

    invoke-static {p0, p1, p2}, Landroid/graphics/text/LineBreaker;->nGetLineDescent(JI)F

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$smnGetLineFlag(JI)I
    .registers 3

    invoke-static {p0, p1, p2}, Landroid/graphics/text/LineBreaker;->nGetLineFlag(JI)I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$smnGetLineWidth(JI)F
    .registers 3

    invoke-static {p0, p1, p2}, Landroid/graphics/text/LineBreaker;->nGetLineWidth(JI)F

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$smnGetReleaseResultFunc()J
    .registers 2

    invoke-static {}, Landroid/graphics/text/LineBreaker;->nGetReleaseResultFunc()J

    move-result-wide v0

    return-wide v0
.end method

.method static constructor <clinit>()V
    .registers 3

    const-class v0, Landroid/graphics/text/LineBreaker;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-static {}, Landroid/graphics/text/LineBreaker;->nGetReleaseFunc()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Llibcore/util/NativeAllocationRegistry;->createMalloced(Ljava/lang/ClassLoader;J)Llibcore/util/NativeAllocationRegistry;

    move-result-object v0

    sput-object v0, Landroid/graphics/text/LineBreaker;->sRegistry:Llibcore/util/NativeAllocationRegistry;

    return-void
.end method

.method private constructor <init>(III[I)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    if-ne p3, v0, :cond_7

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    invoke-static {p1, p2, v0, p4}, Landroid/graphics/text/LineBreaker;->nInit(IIZ[I)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/graphics/text/LineBreaker;->mNativePtr:J

    sget-object v2, Landroid/graphics/text/LineBreaker;->sRegistry:Llibcore/util/NativeAllocationRegistry;

    invoke-virtual {v2, p0, v0, v1}, Llibcore/util/NativeAllocationRegistry;->registerNativeAllocation(Ljava/lang/Object;J)Ljava/lang/Runnable;

    return-void
.end method

.method synthetic constructor <init>(III[ILandroid/graphics/text/LineBreaker-IA;)V
    .registers 6

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/graphics/text/LineBreaker;-><init>(III[I)V

    return-void
.end method

.method private static native nComputeLineBreaks(J[CJIFIF[FFI)J
.end method

.method private static native nGetLineAscent(JI)F
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nGetLineBreakOffset(JI)I
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nGetLineCount(J)I
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nGetLineDescent(JI)F
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nGetLineFlag(JI)I
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nGetLineWidth(JI)F
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nGetReleaseFunc()J
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nGetReleaseResultFunc()J
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nInit(IIZ[I)J
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method


# virtual methods
.method public computeLineBreaks(Landroid/graphics/text/MeasuredText;Landroid/graphics/text/LineBreaker$ParagraphConstraints;I)Landroid/graphics/text/LineBreaker$Result;
    .registers 18

    new-instance v0, Landroid/graphics/text/LineBreaker$Result;

    move-object v1, p0

    iget-wide v2, v1, Landroid/graphics/text/LineBreaker;->mNativePtr:J

    invoke-virtual {p1}, Landroid/graphics/text/MeasuredText;->getChars()[C

    move-result-object v4

    invoke-virtual {p1}, Landroid/graphics/text/MeasuredText;->getNativePtr()J

    move-result-wide v5

    invoke-virtual {p1}, Landroid/graphics/text/MeasuredText;->getChars()[C

    move-result-object v7

    array-length v7, v7

    invoke-static/range {p2 .. p2}, Landroid/graphics/text/LineBreaker$ParagraphConstraints;->-$$Nest$fgetmFirstWidth(Landroid/graphics/text/LineBreaker$ParagraphConstraints;)F

    move-result v8

    invoke-static/range {p2 .. p2}, Landroid/graphics/text/LineBreaker$ParagraphConstraints;->-$$Nest$fgetmFirstWidthLineCount(Landroid/graphics/text/LineBreaker$ParagraphConstraints;)I

    move-result v9

    invoke-static/range {p2 .. p2}, Landroid/graphics/text/LineBreaker$ParagraphConstraints;->-$$Nest$fgetmWidth(Landroid/graphics/text/LineBreaker$ParagraphConstraints;)F

    move-result v10

    invoke-static/range {p2 .. p2}, Landroid/graphics/text/LineBreaker$ParagraphConstraints;->-$$Nest$fgetmVariableTabStops(Landroid/graphics/text/LineBreaker$ParagraphConstraints;)[F

    move-result-object v11

    invoke-static/range {p2 .. p2}, Landroid/graphics/text/LineBreaker$ParagraphConstraints;->-$$Nest$fgetmDefaultTabStop(Landroid/graphics/text/LineBreaker$ParagraphConstraints;)F

    move-result v12

    move/from16 v13, p3

    invoke-static/range {v2 .. v13}, Landroid/graphics/text/LineBreaker;->nComputeLineBreaks(J[CJIFIF[FFI)J

    move-result-wide v2

    const/4 v4, 0x0

    invoke-direct {v0, v2, v3, v4}, Landroid/graphics/text/LineBreaker$Result;-><init>(JLandroid/graphics/text/LineBreaker$Result-IA;)V

    return-object v0
.end method
