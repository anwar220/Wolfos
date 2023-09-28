# classes2.dex

.class public final Landroid/view/inputmethod/InlineSuggestion;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/inputmethod/InlineSuggestion$InlineTooltipUiParceling;,
        Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImplParceling;,
        Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl;,
        Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackWrapper;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/view/inputmethod/InlineSuggestion;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "InlineSuggestion"

.field static sParcellingForInlineContentCallback:Lcom/android/internal/util/Parcelling;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/util/Parcelling<",
            "Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl;",
            ">;"
        }
    .end annotation
.end field

.field static sParcellingForInlineTooltipUi:Lcom/android/internal/util/Parcelling;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/util/Parcelling<",
            "Lcom/android/internal/view/inline/InlineTooltipUi;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mContentProvider:Lcom/android/internal/view/inline/IInlineContentProvider;

.field private final mInfo:Landroid/view/inputmethod/InlineSuggestionInfo;

.field private mInlineContentCallback:Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl;

.field private mInlineTooltipUi:Lcom/android/internal/view/inline/InlineTooltipUi;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImplParceling;

    invoke-static {v0}, Lcom/android/internal/util/Parcelling$Cache;->get(Ljava/lang/Class;)Lcom/android/internal/util/Parcelling;

    move-result-object v0

    sput-object v0, Landroid/view/inputmethod/InlineSuggestion;->sParcellingForInlineContentCallback:Lcom/android/internal/util/Parcelling;

    const/4 v1, 0x0

    if-nez v0, :cond_16

    new-instance v0, Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImplParceling;

    invoke-direct {v0, v1}, Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImplParceling;-><init>(Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImplParceling-IA;)V

    invoke-static {v0}, Lcom/android/internal/util/Parcelling$Cache;->put(Lcom/android/internal/util/Parcelling;)Lcom/android/internal/util/Parcelling;

    move-result-object v0

    sput-object v0, Landroid/view/inputmethod/InlineSuggestion;->sParcellingForInlineContentCallback:Lcom/android/internal/util/Parcelling;

    :cond_16
    const-class v0, Landroid/view/inputmethod/InlineSuggestion$InlineTooltipUiParceling;

    invoke-static {v0}, Lcom/android/internal/util/Parcelling$Cache;->get(Ljava/lang/Class;)Lcom/android/internal/util/Parcelling;

    move-result-object v0

    sput-object v0, Landroid/view/inputmethod/InlineSuggestion;->sParcellingForInlineTooltipUi:Lcom/android/internal/util/Parcelling;

    if-nez v0, :cond_2b

    new-instance v0, Landroid/view/inputmethod/InlineSuggestion$InlineTooltipUiParceling;

    invoke-direct {v0, v1}, Landroid/view/inputmethod/InlineSuggestion$InlineTooltipUiParceling;-><init>(Landroid/view/inputmethod/InlineSuggestion$InlineTooltipUiParceling-IA;)V

    invoke-static {v0}, Lcom/android/internal/util/Parcelling$Cache;->put(Lcom/android/internal/util/Parcelling;)Lcom/android/internal/util/Parcelling;

    move-result-object v0

    sput-object v0, Landroid/view/inputmethod/InlineSuggestion;->sParcellingForInlineTooltipUi:Lcom/android/internal/util/Parcelling;

    :cond_2b
    new-instance v0, Landroid/view/inputmethod/InlineSuggestion$1;

    invoke-direct {v0}, Landroid/view/inputmethod/InlineSuggestion$1;-><init>()V

    sput-object v0, Landroid/view/inputmethod/InlineSuggestion;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .registers 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    sget-object v1, Landroid/view/inputmethod/InlineSuggestionInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InlineSuggestionInfo;

    and-int/lit8 v2, v0, 0x2

    const/4 v3, 0x0

    if-nez v2, :cond_16

    move-object v2, v3

    goto :goto_1e

    :cond_16
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/view/inline/IInlineContentProvider$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/view/inline/IInlineContentProvider;

    move-result-object v2

    :goto_1e
    sget-object v4, Landroid/view/inputmethod/InlineSuggestion;->sParcellingForInlineContentCallback:Lcom/android/internal/util/Parcelling;

    invoke-interface {v4, p1}, Lcom/android/internal/util/Parcelling;->unparcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl;

    sget-object v5, Landroid/view/inputmethod/InlineSuggestion;->sParcellingForInlineTooltipUi:Lcom/android/internal/util/Parcelling;

    invoke-interface {v5, p1}, Lcom/android/internal/util/Parcelling;->unparcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/view/inline/InlineTooltipUi;

    iput-object v1, p0, Landroid/view/inputmethod/InlineSuggestion;->mInfo:Landroid/view/inputmethod/InlineSuggestionInfo;

    const-class v6, Landroid/annotation/NonNull;

    invoke-static {v6, v3, v1}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    iput-object v2, p0, Landroid/view/inputmethod/InlineSuggestion;->mContentProvider:Lcom/android/internal/view/inline/IInlineContentProvider;

    iput-object v4, p0, Landroid/view/inputmethod/InlineSuggestion;->mInlineContentCallback:Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl;

    iput-object v5, p0, Landroid/view/inputmethod/InlineSuggestion;->mInlineTooltipUi:Lcom/android/internal/view/inline/InlineTooltipUi;

    return-void
.end method

.method public constructor <init>(Landroid/view/inputmethod/InlineSuggestionInfo;Lcom/android/internal/view/inline/IInlineContentProvider;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, v0}, Landroid/view/inputmethod/InlineSuggestion;-><init>(Landroid/view/inputmethod/InlineSuggestionInfo;Lcom/android/internal/view/inline/IInlineContentProvider;Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl;Lcom/android/internal/view/inline/InlineTooltipUi;)V

    return-void
.end method

.method public constructor <init>(Landroid/view/inputmethod/InlineSuggestionInfo;Lcom/android/internal/view/inline/IInlineContentProvider;Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl;Lcom/android/internal/view/inline/InlineTooltipUi;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/view/inputmethod/InlineSuggestion;->mInfo:Landroid/view/inputmethod/InlineSuggestionInfo;

    const-class v0, Landroid/annotation/NonNull;

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    iput-object p2, p0, Landroid/view/inputmethod/InlineSuggestion;->mContentProvider:Lcom/android/internal/view/inline/IInlineContentProvider;

    iput-object p3, p0, Landroid/view/inputmethod/InlineSuggestion;->mInlineContentCallback:Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl;

    iput-object p4, p0, Landroid/view/inputmethod/InlineSuggestion;->mInlineTooltipUi:Lcom/android/internal/view/inline/InlineTooltipUi;

    return-void
.end method

.method private __metadata()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method private declared-synchronized getInlineContentCallback(Landroid/content/Context;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;Lcom/android/internal/view/inline/InlineTooltipUi;)Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Landroid/widget/inline/InlineContentView;",
            ">;",
            "Lcom/android/internal/view/inline/InlineTooltipUi;",
            ")",
            "Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl;"
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/view/inputmethod/InlineSuggestion;->mInlineContentCallback:Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl;

    if-nez v0, :cond_13

    new-instance v0, Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl;

    iget-object v3, p0, Landroid/view/inputmethod/InlineSuggestion;->mContentProvider:Lcom/android/internal/view/inline/IInlineContentProvider;

    move-object v1, v0

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl;-><init>(Landroid/content/Context;Lcom/android/internal/view/inline/IInlineContentProvider;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;Lcom/android/internal/view/inline/InlineTooltipUi;)V
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_1b

    monitor-exit p0

    return-object v0

    :cond_13
    :try_start_13
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already called #inflate()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1b
    .catchall {:try_start_13 .. :try_end_1b} :catchall_1b

    :catchall_1b
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private static isValid(III)Z
    .registers 5

    const/4 v0, 0x1

    const/4 v1, -0x2

    if-ne p0, v1, :cond_5

    return v0

    :cond_5
    if-lt p0, p1, :cond_a

    if-gt p0, p2, :cond_a

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method static synthetic lambda$inflate$0(Ljava/util/function/Consumer;)V
    .registers 2

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic lambda$inflate$1(Ljava/util/function/Consumer;)V
    .registers 2

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method public static newInlineSuggestion(Landroid/view/inputmethod/InlineSuggestionInfo;)Landroid/view/inputmethod/InlineSuggestion;
    .registers 3

    new-instance v0, Landroid/view/inputmethod/InlineSuggestion;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, v1, v1}, Landroid/view/inputmethod/InlineSuggestion;-><init>(Landroid/view/inputmethod/InlineSuggestionInfo;Lcom/android/internal/view/inline/IInlineContentProvider;Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl;Lcom/android/internal/view/inline/InlineTooltipUi;)V

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_40

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_40

    :cond_12
    move-object v2, p1

    check-cast v2, Landroid/view/inputmethod/InlineSuggestion;

    iget-object v3, p0, Landroid/view/inputmethod/InlineSuggestion;->mInfo:Landroid/view/inputmethod/InlineSuggestionInfo;

    iget-object v4, v2, Landroid/view/inputmethod/InlineSuggestion;->mInfo:Landroid/view/inputmethod/InlineSuggestionInfo;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3e

    iget-object v3, p0, Landroid/view/inputmethod/InlineSuggestion;->mContentProvider:Lcom/android/internal/view/inline/IInlineContentProvider;

    iget-object v4, v2, Landroid/view/inputmethod/InlineSuggestion;->mContentProvider:Lcom/android/internal/view/inline/IInlineContentProvider;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3e

    iget-object v3, p0, Landroid/view/inputmethod/InlineSuggestion;->mInlineContentCallback:Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl;

    iget-object v4, v2, Landroid/view/inputmethod/InlineSuggestion;->mInlineContentCallback:Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3e

    iget-object v3, p0, Landroid/view/inputmethod/InlineSuggestion;->mInlineTooltipUi:Lcom/android/internal/view/inline/InlineTooltipUi;

    iget-object v4, v2, Landroid/view/inputmethod/InlineSuggestion;->mInlineTooltipUi:Lcom/android/internal/view/inline/InlineTooltipUi;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3e

    goto :goto_3f

    :cond_3e
    move v0, v1

    :goto_3f
    return v0

    :cond_40
    :goto_40
    return v1
.end method

.method public getContentProvider()Lcom/android/internal/view/inline/IInlineContentProvider;
    .registers 2

    iget-object v0, p0, Landroid/view/inputmethod/InlineSuggestion;->mContentProvider:Lcom/android/internal/view/inline/IInlineContentProvider;

    return-object v0
.end method

.method public getInfo()Landroid/view/inputmethod/InlineSuggestionInfo;
    .registers 2

    iget-object v0, p0, Landroid/view/inputmethod/InlineSuggestion;->mInfo:Landroid/view/inputmethod/InlineSuggestionInfo;

    return-object v0
.end method

.method public getInlineContentCallback()Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl;
    .registers 2

    iget-object v0, p0, Landroid/view/inputmethod/InlineSuggestion;->mInlineContentCallback:Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl;

    return-object v0
.end method

.method public getInlineTooltipUi()Lcom/android/internal/view/inline/InlineTooltipUi;
    .registers 2

    iget-object v0, p0, Landroid/view/inputmethod/InlineSuggestion;->mInlineTooltipUi:Lcom/android/internal/view/inline/InlineTooltipUi;

    return-object v0
.end method

.method public hashCode()I
    .registers 4

    const/4 v0, 0x1

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/view/inputmethod/InlineSuggestion;->mInfo:Landroid/view/inputmethod/InlineSuggestionInfo;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Landroid/view/inputmethod/InlineSuggestion;->mContentProvider:Lcom/android/internal/view/inline/IInlineContentProvider;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/view/inputmethod/InlineSuggestion;->mInlineContentCallback:Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Landroid/view/inputmethod/InlineSuggestion;->mInlineTooltipUi:Lcom/android/internal/view/inline/InlineTooltipUi;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    return v0
.end method

.method public inflate(Landroid/content/Context;Landroid/util/Size;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/util/Size;",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Landroid/widget/inline/InlineContentView;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Landroid/view/inputmethod/InlineSuggestion;->mInfo:Landroid/view/inputmethod/InlineSuggestionInfo;

    invoke-virtual {v0}, Landroid/view/inputmethod/InlineSuggestionInfo;->getInlinePresentationSpec()Landroid/widget/inline/InlinePresentationSpec;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/inline/InlinePresentationSpec;->getMinSize()Landroid/util/Size;

    move-result-object v0

    iget-object v1, p0, Landroid/view/inputmethod/InlineSuggestion;->mInfo:Landroid/view/inputmethod/InlineSuggestionInfo;

    invoke-virtual {v1}, Landroid/view/inputmethod/InlineSuggestionInfo;->getInlinePresentationSpec()Landroid/widget/inline/InlinePresentationSpec;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/inline/InlinePresentationSpec;->getMaxSize()Landroid/util/Size;

    move-result-object v1

    invoke-virtual {p2}, Landroid/util/Size;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v3

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v4

    invoke-static {v2, v3, v4}, Landroid/view/inputmethod/InlineSuggestion;->isValid(III)Z

    move-result v2

    if-eqz v2, :cond_b2

    invoke-virtual {p2}, Landroid/util/Size;->getHeight()I

    move-result v2

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v3

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v4

    invoke-static {v2, v3, v4}, Landroid/view/inputmethod/InlineSuggestion;->isValid(III)Z

    move-result v2

    if-eqz v2, :cond_b2

    iget-object v2, p0, Landroid/view/inputmethod/InlineSuggestion;->mInfo:Landroid/view/inputmethod/InlineSuggestionInfo;

    invoke-virtual {v2}, Landroid/view/inputmethod/InlineSuggestionInfo;->getTooltip()Landroid/view/inputmethod/InlineSuggestion;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_4d

    iget-object v4, p0, Landroid/view/inputmethod/InlineSuggestion;->mInlineTooltipUi:Lcom/android/internal/view/inline/InlineTooltipUi;

    if-nez v4, :cond_4f

    new-instance v4, Lcom/android/internal/view/inline/InlineTooltipUi;

    invoke-direct {v4, p1}, Lcom/android/internal/view/inline/InlineTooltipUi;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Landroid/view/inputmethod/InlineSuggestion;->mInlineTooltipUi:Lcom/android/internal/view/inline/InlineTooltipUi;

    goto :goto_4f

    :cond_4d
    iput-object v3, p0, Landroid/view/inputmethod/InlineSuggestion;->mInlineTooltipUi:Lcom/android/internal/view/inline/InlineTooltipUi;

    :cond_4f
    :goto_4f
    iget-object v4, p0, Landroid/view/inputmethod/InlineSuggestion;->mInlineTooltipUi:Lcom/android/internal/view/inline/InlineTooltipUi;

    invoke-direct {p0, p1, p3, p4, v4}, Landroid/view/inputmethod/InlineSuggestion;->getInlineContentCallback(Landroid/content/Context;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;Lcom/android/internal/view/inline/InlineTooltipUi;)Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl;

    move-result-object v4

    iput-object v4, p0, Landroid/view/inputmethod/InlineSuggestion;->mInlineContentCallback:Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl;

    iget-object v4, p0, Landroid/view/inputmethod/InlineSuggestion;->mContentProvider:Lcom/android/internal/view/inline/IInlineContentProvider;

    if-nez v4, :cond_66

    new-instance v4, Landroid/view/inputmethod/InlineSuggestion$$ExternalSyntheticLambda0;

    invoke-direct {v4, p4}, Landroid/view/inputmethod/InlineSuggestion$$ExternalSyntheticLambda0;-><init>(Ljava/util/function/Consumer;)V

    invoke-interface {p3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    iput-object v3, p0, Landroid/view/inputmethod/InlineSuggestion;->mInlineTooltipUi:Lcom/android/internal/view/inline/InlineTooltipUi;

    return-void

    :cond_66
    :try_start_66
    invoke-virtual {p2}, Landroid/util/Size;->getWidth()I

    move-result v3

    invoke-virtual {p2}, Landroid/util/Size;->getHeight()I

    move-result v5

    new-instance v6, Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackWrapper;

    iget-object v7, p0, Landroid/view/inputmethod/InlineSuggestion;->mInlineContentCallback:Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl;

    invoke-direct {v6, v7}, Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackWrapper;-><init>(Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl;)V

    invoke-interface {v4, v3, v5, v6}, Lcom/android/internal/view/inline/IInlineContentProvider;->provideContent(IILcom/android/internal/view/inline/IInlineContentCallback;)V
    :try_end_78
    .catch Landroid/os/RemoteException; {:try_start_66 .. :try_end_78} :catch_79

    goto :goto_9a

    :catch_79
    move-exception v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error creating suggestion content surface: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "InlineSuggestion"

    invoke-static {v5, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Landroid/view/inputmethod/InlineSuggestion$$ExternalSyntheticLambda1;

    invoke-direct {v4, p4}, Landroid/view/inputmethod/InlineSuggestion$$ExternalSyntheticLambda1;-><init>(Ljava/util/function/Consumer;)V

    invoke-interface {p3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :goto_9a
    if-nez v2, :cond_9d

    return-void

    :cond_9d
    new-instance v3, Landroid/util/Size;

    const/4 v4, -0x2

    invoke-direct {v3, v4, v4}, Landroid/util/Size;-><init>(II)V

    iget-object v4, p0, Landroid/view/inputmethod/InlineSuggestion;->mInfo:Landroid/view/inputmethod/InlineSuggestionInfo;

    invoke-virtual {v4}, Landroid/view/inputmethod/InlineSuggestionInfo;->getTooltip()Landroid/view/inputmethod/InlineSuggestion;

    move-result-object v4

    new-instance v5, Landroid/view/inputmethod/InlineSuggestion$$ExternalSyntheticLambda2;

    invoke-direct {v5, p0}, Landroid/view/inputmethod/InlineSuggestion$$ExternalSyntheticLambda2;-><init>(Landroid/view/inputmethod/InlineSuggestion;)V

    invoke-virtual {v4, p1, v3, p3, v5}, Landroid/view/inputmethod/InlineSuggestion;->inflate(Landroid/content/Context;Landroid/util/Size;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    return-void

    :cond_b2
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "size is neither between min:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " and max:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", nor wrap_content"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method synthetic lambda$inflate$2$android-view-inputmethod-InlineSuggestion(Landroid/widget/inline/InlineContentView;)V
    .registers 3

    iget-object v0, p0, Landroid/view/inputmethod/InlineSuggestion;->mInlineTooltipUi:Lcom/android/internal/view/inline/InlineTooltipUi;

    invoke-virtual {v0, p1}, Lcom/android/internal/view/inline/InlineTooltipUi;->setTooltipView(Landroid/widget/inline/InlineContentView;)V

    return-void
.end method

.method synthetic lambda$inflate$3$android-view-inputmethod-InlineSuggestion(Landroid/widget/inline/InlineContentView;)V
    .registers 4

    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/view/inputmethod/InlineSuggestion$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1}, Landroid/view/inputmethod/InlineSuggestion$$ExternalSyntheticLambda3;-><init>(Landroid/view/inputmethod/InlineSuggestion;Landroid/widget/inline/InlineContentView;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "InlineSuggestion { info = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/inputmethod/InlineSuggestion;->mInfo:Landroid/view/inputmethod/InlineSuggestionInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", contentProvider = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/inputmethod/InlineSuggestion;->mContentProvider:Lcom/android/internal/view/inline/IInlineContentProvider;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", inlineContentCallback = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/inputmethod/InlineSuggestion;->mInlineContentCallback:Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", inlineTooltipUi = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/inputmethod/InlineSuggestion;->mInlineTooltipUi:Lcom/android/internal/view/inline/InlineTooltipUi;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 6

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/view/inputmethod/InlineSuggestion;->mContentProvider:Lcom/android/internal/view/inline/IInlineContentProvider;

    if-eqz v1, :cond_8

    or-int/lit8 v1, v0, 0x2

    int-to-byte v0, v1

    :cond_8
    iget-object v1, p0, Landroid/view/inputmethod/InlineSuggestion;->mInlineContentCallback:Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl;

    if-eqz v1, :cond_f

    or-int/lit8 v1, v0, 0x4

    int-to-byte v0, v1

    :cond_f
    iget-object v1, p0, Landroid/view/inputmethod/InlineSuggestion;->mInlineTooltipUi:Lcom/android/internal/view/inline/InlineTooltipUi;

    if-eqz v1, :cond_16

    or-int/lit8 v1, v0, 0x8

    int-to-byte v0, v1

    :cond_16
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget-object v1, p0, Landroid/view/inputmethod/InlineSuggestion;->mInfo:Landroid/view/inputmethod/InlineSuggestionInfo;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    iget-object v1, p0, Landroid/view/inputmethod/InlineSuggestion;->mContentProvider:Lcom/android/internal/view/inline/IInlineContentProvider;

    if-eqz v1, :cond_25

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    :cond_25
    sget-object v1, Landroid/view/inputmethod/InlineSuggestion;->sParcellingForInlineContentCallback:Lcom/android/internal/util/Parcelling;

    iget-object v2, p0, Landroid/view/inputmethod/InlineSuggestion;->mInlineContentCallback:Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl;

    invoke-interface {v1, v2, p1, p2}, Lcom/android/internal/util/Parcelling;->parcel(Ljava/lang/Object;Landroid/os/Parcel;I)V

    sget-object v1, Landroid/view/inputmethod/InlineSuggestion;->sParcellingForInlineTooltipUi:Lcom/android/internal/util/Parcelling;

    iget-object v2, p0, Landroid/view/inputmethod/InlineSuggestion;->mInlineTooltipUi:Lcom/android/internal/view/inline/InlineTooltipUi;

    invoke-interface {v1, v2, p1, p2}, Lcom/android/internal/util/Parcelling;->parcel(Ljava/lang/Object;Landroid/os/Parcel;I)V

    return-void
.end method
