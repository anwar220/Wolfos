# classes3.dex

.class Landroid/text/TextDirectionHeuristics$AnyStrong;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/text/TextDirectionHeuristics$TextDirectionAlgorithm;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/text/TextDirectionHeuristics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AnyStrong"
.end annotation


# static fields
.field public static final INSTANCE_LTR:Landroid/text/TextDirectionHeuristics$AnyStrong;

.field public static final INSTANCE_RTL:Landroid/text/TextDirectionHeuristics$AnyStrong;


# instance fields
.field private final mLookForRtl:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Landroid/text/TextDirectionHeuristics$AnyStrong;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/text/TextDirectionHeuristics$AnyStrong;-><init>(Z)V

    sput-object v0, Landroid/text/TextDirectionHeuristics$AnyStrong;->INSTANCE_RTL:Landroid/text/TextDirectionHeuristics$AnyStrong;

    new-instance v0, Landroid/text/TextDirectionHeuristics$AnyStrong;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/text/TextDirectionHeuristics$AnyStrong;-><init>(Z)V

    sput-object v0, Landroid/text/TextDirectionHeuristics$AnyStrong;->INSTANCE_LTR:Landroid/text/TextDirectionHeuristics$AnyStrong;

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Landroid/text/TextDirectionHeuristics$AnyStrong;->mLookForRtl:Z

    return-void
.end method


# virtual methods
.method public checkRtl(Ljava/lang/CharSequence;II)I
    .registers 10

    const/4 v0, 0x0

    const/4 v1, 0x0

    move v2, p2

    add-int v3, p2, p3

    :goto_5
    if-ge v2, v3, :cond_3e

    invoke-static {p1, v2}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v4

    const/16 v5, 0x2066

    if-gt v5, v4, :cond_16

    const/16 v5, 0x2068

    if-gt v4, v5, :cond_16

    add-int/lit8 v1, v1, 0x1

    goto :goto_38

    :cond_16
    const/16 v5, 0x2069

    if-ne v4, v5, :cond_1f

    if-lez v1, :cond_38

    add-int/lit8 v1, v1, -0x1

    goto :goto_38

    :cond_1f
    if-nez v1, :cond_38

    invoke-static {v4}, Landroid/text/TextDirectionHeuristics;->-$$Nest$smisRtlCodePoint(I)I

    move-result v5

    packed-switch v5, :pswitch_data_46

    goto :goto_38

    :pswitch_29  #0x1
    iget-boolean v5, p0, Landroid/text/TextDirectionHeuristics$AnyStrong;->mLookForRtl:Z

    if-nez v5, :cond_2f

    const/4 v5, 0x1

    return v5

    :cond_2f
    const/4 v0, 0x1

    goto :goto_38

    :pswitch_31  #0x0
    iget-boolean v5, p0, Landroid/text/TextDirectionHeuristics$AnyStrong;->mLookForRtl:Z

    if-eqz v5, :cond_37

    const/4 v5, 0x0

    return v5

    :cond_37
    const/4 v0, 0x1

    :cond_38
    :goto_38
    invoke-static {v4}, Ljava/lang/Character;->charCount(I)I

    move-result v5

    add-int/2addr v2, v5

    goto :goto_5

    :cond_3e
    if-eqz v0, :cond_43

    iget-boolean v2, p0, Landroid/text/TextDirectionHeuristics$AnyStrong;->mLookForRtl:Z

    return v2

    :cond_43
    const/4 v2, 0x2

    return v2

    nop

    :pswitch_data_46
    .packed-switch 0x0
        :pswitch_31  #00000000
        :pswitch_29  #00000001
    .end packed-switch
.end method
