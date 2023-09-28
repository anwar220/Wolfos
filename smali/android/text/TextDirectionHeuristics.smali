# classes3.dex

.class public Landroid/text/TextDirectionHeuristics;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/text/TextDirectionHeuristics$TextDirectionHeuristicLocale;,
        Landroid/text/TextDirectionHeuristics$AnyStrong;,
        Landroid/text/TextDirectionHeuristics$FirstStrong;,
        Landroid/text/TextDirectionHeuristics$TextDirectionAlgorithm;,
        Landroid/text/TextDirectionHeuristics$TextDirectionHeuristicInternal;,
        Landroid/text/TextDirectionHeuristics$TextDirectionHeuristicImpl;
    }
.end annotation


# static fields
.field public static final ANYRTL_LTR:Landroid/text/TextDirectionHeuristic;

.field public static final FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;

.field public static final FIRSTSTRONG_RTL:Landroid/text/TextDirectionHeuristic;

.field public static final LOCALE:Landroid/text/TextDirectionHeuristic;

.field public static final LTR:Landroid/text/TextDirectionHeuristic;

.field public static final RTL:Landroid/text/TextDirectionHeuristic;

.field private static final STATE_FALSE:I = 0x1

.field private static final STATE_TRUE:I = 0x0

.field private static final STATE_UNKNOWN:I = 0x2


# direct methods
.method static bridge synthetic -$$Nest$smisRtlCodePoint(I)I
    .registers 1

    invoke-static {p0}, Landroid/text/TextDirectionHeuristics;->isRtlCodePoint(I)I

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .registers 5

    new-instance v0, Landroid/text/TextDirectionHeuristics$TextDirectionHeuristicInternal;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v1}, Landroid/text/TextDirectionHeuristics$TextDirectionHeuristicInternal;-><init>(Landroid/text/TextDirectionHeuristics$TextDirectionAlgorithm;ZLandroid/text/TextDirectionHeuristics$TextDirectionHeuristicInternal-IA;)V

    sput-object v0, Landroid/text/TextDirectionHeuristics;->LTR:Landroid/text/TextDirectionHeuristic;

    new-instance v0, Landroid/text/TextDirectionHeuristics$TextDirectionHeuristicInternal;

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v1}, Landroid/text/TextDirectionHeuristics$TextDirectionHeuristicInternal;-><init>(Landroid/text/TextDirectionHeuristics$TextDirectionAlgorithm;ZLandroid/text/TextDirectionHeuristics$TextDirectionHeuristicInternal-IA;)V

    sput-object v0, Landroid/text/TextDirectionHeuristics;->RTL:Landroid/text/TextDirectionHeuristic;

    new-instance v0, Landroid/text/TextDirectionHeuristics$TextDirectionHeuristicInternal;

    sget-object v4, Landroid/text/TextDirectionHeuristics$FirstStrong;->INSTANCE:Landroid/text/TextDirectionHeuristics$FirstStrong;

    invoke-direct {v0, v4, v2, v1}, Landroid/text/TextDirectionHeuristics$TextDirectionHeuristicInternal;-><init>(Landroid/text/TextDirectionHeuristics$TextDirectionAlgorithm;ZLandroid/text/TextDirectionHeuristics$TextDirectionHeuristicInternal-IA;)V

    sput-object v0, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;

    new-instance v0, Landroid/text/TextDirectionHeuristics$TextDirectionHeuristicInternal;

    sget-object v4, Landroid/text/TextDirectionHeuristics$FirstStrong;->INSTANCE:Landroid/text/TextDirectionHeuristics$FirstStrong;

    invoke-direct {v0, v4, v3, v1}, Landroid/text/TextDirectionHeuristics$TextDirectionHeuristicInternal;-><init>(Landroid/text/TextDirectionHeuristics$TextDirectionAlgorithm;ZLandroid/text/TextDirectionHeuristics$TextDirectionHeuristicInternal-IA;)V

    sput-object v0, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_RTL:Landroid/text/TextDirectionHeuristic;

    new-instance v0, Landroid/text/TextDirectionHeuristics$TextDirectionHeuristicInternal;

    sget-object v3, Landroid/text/TextDirectionHeuristics$AnyStrong;->INSTANCE_RTL:Landroid/text/TextDirectionHeuristics$AnyStrong;

    invoke-direct {v0, v3, v2, v1}, Landroid/text/TextDirectionHeuristics$TextDirectionHeuristicInternal;-><init>(Landroid/text/TextDirectionHeuristics$TextDirectionAlgorithm;ZLandroid/text/TextDirectionHeuristics$TextDirectionHeuristicInternal-IA;)V

    sput-object v0, Landroid/text/TextDirectionHeuristics;->ANYRTL_LTR:Landroid/text/TextDirectionHeuristic;

    sget-object v0, Landroid/text/TextDirectionHeuristics$TextDirectionHeuristicLocale;->INSTANCE:Landroid/text/TextDirectionHeuristics$TextDirectionHeuristicLocale;

    sput-object v0, Landroid/text/TextDirectionHeuristics;->LOCALE:Landroid/text/TextDirectionHeuristic;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static isRtlCodePoint(I)I
    .registers 5

    invoke-static {p0}, Ljava/lang/Character;->getDirectionality(I)B

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    packed-switch v0, :pswitch_data_8a

    return v1

    :pswitch_b  #0x1, 0x2
    return v2

    :pswitch_c  #0x0
    return v3

    :pswitch_d  #0xffffffff
    const/16 v0, 0x590

    if-gt v0, p0, :cond_15

    const/16 v0, 0x8ff

    if-le p0, v0, :cond_47

    :cond_15
    const v0, 0xfb1d

    if-gt v0, p0, :cond_1f

    const v0, 0xfdcf

    if-le p0, v0, :cond_47

    :cond_1f
    const v0, 0xfdf0

    if-gt v0, p0, :cond_29

    const v0, 0xfdff

    if-le p0, v0, :cond_47

    :cond_29
    const v0, 0xfe70

    if-gt v0, p0, :cond_33

    const v0, 0xfeff

    if-le p0, v0, :cond_47

    :cond_33
    const v0, 0x10800

    if-gt v0, p0, :cond_3d

    const v0, 0x10fff

    if-le p0, v0, :cond_47

    :cond_3d
    const v0, 0x1e800

    if-gt v0, p0, :cond_48

    const v0, 0x1efff

    if-gt p0, v0, :cond_48

    :cond_47
    return v2

    :cond_48
    const/16 v0, 0x2065

    if-gt v0, p0, :cond_50

    const/16 v0, 0x2069

    if-le p0, v0, :cond_88

    :cond_50
    const v0, 0xfff0

    if-gt v0, p0, :cond_5a

    const v0, 0xfff8

    if-le p0, v0, :cond_88

    :cond_5a
    const/high16 v0, 0xe0000

    if-gt v0, p0, :cond_63

    const v0, 0xe0fff

    if-le p0, v0, :cond_88

    :cond_63
    const v0, 0xfdd0

    if-gt v0, p0, :cond_6d

    const v0, 0xfdef

    if-le p0, v0, :cond_88

    :cond_6d
    const v0, 0xfffe

    and-int v2, p0, v0

    if-eq v2, v0, :cond_88

    const/16 v0, 0x20a0

    if-gt v0, p0, :cond_7c

    const/16 v0, 0x20cf

    if-le p0, v0, :cond_88

    :cond_7c
    const v0, 0xd800

    if-gt v0, p0, :cond_87

    const v0, 0xdfff

    if-gt p0, v0, :cond_87

    goto :goto_88

    :cond_87
    return v3

    :cond_88
    :goto_88
    return v1

    nop

    :pswitch_data_8a
    .packed-switch -0x1
        :pswitch_d  #ffffffff
        :pswitch_c  #00000000
        :pswitch_b  #00000001
        :pswitch_b  #00000002
    .end packed-switch
.end method
