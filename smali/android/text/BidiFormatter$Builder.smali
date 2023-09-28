# classes3.dex

.class public final Landroid/text/BidiFormatter$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/text/BidiFormatter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mFlags:I

.field private mIsRtlContext:Z

.field private mTextDirectionHeuristic:Landroid/text/TextDirectionHeuristic;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Landroid/text/BidiFormatter;->-$$Nest$smisRtlLocale(Ljava/util/Locale;)Z

    move-result v0

    invoke-direct {p0, v0}, Landroid/text/BidiFormatter$Builder;->initialize(Z)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Locale;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Landroid/text/BidiFormatter;->-$$Nest$smisRtlLocale(Ljava/util/Locale;)Z

    move-result v0

    invoke-direct {p0, v0}, Landroid/text/BidiFormatter$Builder;->initialize(Z)V

    return-void
.end method

.method public constructor <init>(Z)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0, p1}, Landroid/text/BidiFormatter$Builder;->initialize(Z)V

    return-void
.end method

.method private initialize(Z)V
    .registers 3

    iput-boolean p1, p0, Landroid/text/BidiFormatter$Builder;->mIsRtlContext:Z

    invoke-static {}, Landroid/text/BidiFormatter;->-$$Nest$sfgetDEFAULT_TEXT_DIRECTION_HEURISTIC()Landroid/text/TextDirectionHeuristic;

    move-result-object v0

    iput-object v0, p0, Landroid/text/BidiFormatter$Builder;->mTextDirectionHeuristic:Landroid/text/TextDirectionHeuristic;

    const/4 v0, 0x2

    iput v0, p0, Landroid/text/BidiFormatter$Builder;->mFlags:I

    return-void
.end method


# virtual methods
.method public build()Landroid/text/BidiFormatter;
    .registers 6

    iget v0, p0, Landroid/text/BidiFormatter$Builder;->mFlags:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_14

    iget-object v0, p0, Landroid/text/BidiFormatter$Builder;->mTextDirectionHeuristic:Landroid/text/TextDirectionHeuristic;

    invoke-static {}, Landroid/text/BidiFormatter;->-$$Nest$sfgetDEFAULT_TEXT_DIRECTION_HEURISTIC()Landroid/text/TextDirectionHeuristic;

    move-result-object v1

    if-ne v0, v1, :cond_14

    iget-boolean v0, p0, Landroid/text/BidiFormatter$Builder;->mIsRtlContext:Z

    invoke-static {v0}, Landroid/text/BidiFormatter;->-$$Nest$smgetDefaultInstanceFromContext(Z)Landroid/text/BidiFormatter;

    move-result-object v0

    return-object v0

    :cond_14
    new-instance v0, Landroid/text/BidiFormatter;

    iget-boolean v1, p0, Landroid/text/BidiFormatter$Builder;->mIsRtlContext:Z

    iget v2, p0, Landroid/text/BidiFormatter$Builder;->mFlags:I

    iget-object v3, p0, Landroid/text/BidiFormatter$Builder;->mTextDirectionHeuristic:Landroid/text/TextDirectionHeuristic;

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/text/BidiFormatter;-><init>(ZILandroid/text/TextDirectionHeuristic;Landroid/text/BidiFormatter-IA;)V

    return-object v0
.end method

.method public setTextDirectionHeuristic(Landroid/text/TextDirectionHeuristic;)Landroid/text/BidiFormatter$Builder;
    .registers 2

    iput-object p1, p0, Landroid/text/BidiFormatter$Builder;->mTextDirectionHeuristic:Landroid/text/TextDirectionHeuristic;

    return-object p0
.end method

.method public stereoReset(Z)Landroid/text/BidiFormatter$Builder;
    .registers 3

    if-eqz p1, :cond_9

    iget v0, p0, Landroid/text/BidiFormatter$Builder;->mFlags:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Landroid/text/BidiFormatter$Builder;->mFlags:I

    goto :goto_f

    :cond_9
    iget v0, p0, Landroid/text/BidiFormatter$Builder;->mFlags:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Landroid/text/BidiFormatter$Builder;->mFlags:I

    :goto_f
    return-object p0
.end method
