# classes3.dex

.class public final Landroid/view/ScrollCaptureSearchResults;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/ScrollCaptureSearchResults$SearchRequest;
    }
.end annotation


# static fields
.field private static final AFTER:I = 0x1

.field private static final BEFORE:I = -0x1

.field private static final EQUAL:I

.field static final PRIORITY_ORDER:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Landroid/view/ScrollCaptureTarget;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mCancel:Landroid/os/CancellationSignal;

.field private mComplete:Z

.field private mCompleted:I

.field private final mExecutor:Ljava/util/concurrent/Executor;

.field private mOnCompleteListener:Ljava/lang/Runnable;

.field private final mTargets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/ScrollCaptureTarget;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$fgetmCancel(Landroid/view/ScrollCaptureSearchResults;)Landroid/os/CancellationSignal;
    .registers 1

    iget-object p0, p0, Landroid/view/ScrollCaptureSearchResults;->mCancel:Landroid/os/CancellationSignal;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCompleted(Landroid/view/ScrollCaptureSearchResults;)I
    .registers 1

    iget p0, p0, Landroid/view/ScrollCaptureSearchResults;->mCompleted:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmExecutor(Landroid/view/ScrollCaptureSearchResults;)Ljava/util/concurrent/Executor;
    .registers 1

    iget-object p0, p0, Landroid/view/ScrollCaptureSearchResults;->mExecutor:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmTargets(Landroid/view/ScrollCaptureSearchResults;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Landroid/view/ScrollCaptureSearchResults;->mTargets:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmCompleted(Landroid/view/ScrollCaptureSearchResults;I)V
    .registers 2

    iput p1, p0, Landroid/view/ScrollCaptureSearchResults;->mCompleted:I

    return-void
.end method

.method static bridge synthetic -$$Nest$msignalComplete(Landroid/view/ScrollCaptureSearchResults;)V
    .registers 1

    invoke-direct {p0}, Landroid/view/ScrollCaptureSearchResults;->signalComplete()V

    return-void
.end method

.method static bridge synthetic -$$Nest$smnullOrEmpty(Landroid/graphics/Rect;)Z
    .registers 1

    invoke-static {p0}, Landroid/view/ScrollCaptureSearchResults;->nullOrEmpty(Landroid/graphics/Rect;)Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/view/ScrollCaptureSearchResults$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Landroid/view/ScrollCaptureSearchResults$$ExternalSyntheticLambda1;-><init>()V

    sput-object v0, Landroid/view/ScrollCaptureSearchResults;->PRIORITY_ORDER:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/ScrollCaptureSearchResults;->mComplete:Z

    iput-object p1, p0, Landroid/view/ScrollCaptureSearchResults;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/ScrollCaptureSearchResults;->mTargets:Ljava/util/List;

    new-instance v0, Landroid/os/CancellationSignal;

    invoke-direct {v0}, Landroid/os/CancellationSignal;-><init>()V

    iput-object v0, p0, Landroid/view/ScrollCaptureSearchResults;->mCancel:Landroid/os/CancellationSignal;

    return-void
.end method

.method private static area(Landroid/graphics/Rect;)I
    .registers 3

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v1

    mul-int/2addr v0, v1

    return v0
.end method

.method private static hasIncludeHint(Landroid/view/View;)Z
    .registers 2

    invoke-virtual {p0}, Landroid/view/View;->getScrollCaptureHint()I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method private static isDescendant(Landroid/view/View;Landroid/view/View;)Z
    .registers 4

    const/4 v0, 0x0

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    :goto_8
    if-eq v1, p0, :cond_11

    if-eqz v1, :cond_11

    invoke-interface {v1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    goto :goto_8

    :cond_11
    if-ne v1, p0, :cond_14

    const/4 v0, 0x1

    :cond_14
    return v0
.end method

.method static synthetic lambda$static$1(Landroid/view/ScrollCaptureTarget;Landroid/view/ScrollCaptureTarget;)I
    .registers 12

    const/4 v0, 0x0

    if-nez p0, :cond_6

    if-nez p1, :cond_6

    return v0

    :cond_6
    const/4 v1, 0x1

    const/4 v2, -0x1

    if-eqz p0, :cond_63

    if-nez p1, :cond_d

    goto :goto_63

    :cond_d
    invoke-virtual {p0}, Landroid/view/ScrollCaptureTarget;->getScrollBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-static {v3}, Landroid/view/ScrollCaptureSearchResults;->nullOrEmpty(Landroid/graphics/Rect;)Z

    move-result v3

    invoke-virtual {p1}, Landroid/view/ScrollCaptureTarget;->getScrollBounds()Landroid/graphics/Rect;

    move-result-object v4

    invoke-static {v4}, Landroid/view/ScrollCaptureSearchResults;->nullOrEmpty(Landroid/graphics/Rect;)Z

    move-result v4

    if-nez v3, :cond_5a

    if-eqz v4, :cond_22

    goto :goto_5a

    :cond_22
    invoke-virtual {p0}, Landroid/view/ScrollCaptureTarget;->getContainingView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/ScrollCaptureTarget;->getContainingView()Landroid/view/View;

    move-result-object v5

    invoke-static {v0}, Landroid/view/ScrollCaptureSearchResults;->hasIncludeHint(Landroid/view/View;)Z

    move-result v6

    invoke-static {v5}, Landroid/view/ScrollCaptureSearchResults;->hasIncludeHint(Landroid/view/View;)Z

    move-result v7

    if-eq v6, v7, :cond_38

    if-eqz v6, :cond_37

    move v1, v2

    :cond_37
    return v1

    :cond_38
    invoke-static {v0, v5}, Landroid/view/ScrollCaptureSearchResults;->isDescendant(Landroid/view/View;Landroid/view/View;)Z

    move-result v8

    if-eqz v8, :cond_3f

    return v2

    :cond_3f
    invoke-static {v5, v0}, Landroid/view/ScrollCaptureSearchResults;->isDescendant(Landroid/view/View;Landroid/view/View;)Z

    move-result v8

    if-eqz v8, :cond_46

    return v1

    :cond_46
    invoke-virtual {p0}, Landroid/view/ScrollCaptureTarget;->getScrollBounds()Landroid/graphics/Rect;

    move-result-object v8

    invoke-static {v8}, Landroid/view/ScrollCaptureSearchResults;->area(Landroid/graphics/Rect;)I

    move-result v8

    invoke-virtual {p1}, Landroid/view/ScrollCaptureTarget;->getScrollBounds()Landroid/graphics/Rect;

    move-result-object v9

    invoke-static {v9}, Landroid/view/ScrollCaptureSearchResults;->area(Landroid/graphics/Rect;)I

    move-result v9

    if-lt v8, v9, :cond_59

    move v1, v2

    :cond_59
    return v1

    :cond_5a
    :goto_5a
    if-eqz v3, :cond_5f

    if-eqz v4, :cond_5f

    return v0

    :cond_5f
    if-eqz v3, :cond_62

    return v1

    :cond_62
    return v2

    :cond_63
    :goto_63
    if-nez p0, :cond_66

    goto :goto_67

    :cond_66
    move v1, v2

    :goto_67
    return v1
.end method

.method private static nullOrEmpty(Landroid/graphics/Rect;)Z
    .registers 2

    if-eqz p0, :cond_b

    invoke-virtual {p0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_b

    :cond_9
    const/4 v0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 v0, 0x1

    :goto_c
    return v0
.end method

.method private signalComplete()V
    .registers 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/ScrollCaptureSearchResults;->mComplete:Z

    iget-object v0, p0, Landroid/view/ScrollCaptureSearchResults;->mTargets:Ljava/util/List;

    sget-object v1, Landroid/view/ScrollCaptureSearchResults;->PRIORITY_ORDER:Ljava/util/Comparator;

    invoke-interface {v0, v1}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    iget-object v0, p0, Landroid/view/ScrollCaptureSearchResults;->mOnCompleteListener:Ljava/lang/Runnable;

    if-eqz v0, :cond_14

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/ScrollCaptureSearchResults;->mOnCompleteListener:Ljava/lang/Runnable;

    :cond_14
    return-void
.end method


# virtual methods
.method public addTarget(Landroid/view/ScrollCaptureTarget;)V
    .registers 6

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Landroid/view/ScrollCaptureSearchResults;->mTargets:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/ScrollCaptureSearchResults;->mComplete:Z

    invoke-virtual {p1}, Landroid/view/ScrollCaptureTarget;->getCallback()Landroid/view/ScrollCaptureCallback;

    move-result-object v0

    new-instance v1, Landroid/view/ScrollCaptureSearchResults$SearchRequest;

    invoke-direct {v1, p0, p1}, Landroid/view/ScrollCaptureSearchResults$SearchRequest;-><init>(Landroid/view/ScrollCaptureSearchResults;Landroid/view/ScrollCaptureTarget;)V

    iget-object v2, p0, Landroid/view/ScrollCaptureSearchResults;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Landroid/view/ScrollCaptureSearchResults$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, v0, v1}, Landroid/view/ScrollCaptureSearchResults$$ExternalSyntheticLambda0;-><init>(Landroid/view/ScrollCaptureSearchResults;Landroid/view/ScrollCaptureCallback;Ljava/util/function/Consumer;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method dump(Landroid/util/IndentingPrintWriter;)V
    .registers 5

    const-string/jumbo v0, "results:"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "complete: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/ScrollCaptureSearchResults;->isComplete()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cancelled: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/ScrollCaptureSearchResults;->mCancel:Landroid/os/CancellationSignal;

    invoke-virtual {v1}, Landroid/os/CancellationSignal;->isCanceled()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v0, "targets:"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    invoke-virtual {p0}, Landroid/view/ScrollCaptureSearchResults;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_54

    const-string v0, "None"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_90

    :cond_54
    const/4 v0, 0x0

    :goto_55
    iget-object v1, p0, Landroid/view/ScrollCaptureSearchResults;->mTargets:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_8d

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    iget-object v1, p0, Landroid/view/ScrollCaptureSearchResults;->mTargets:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/ScrollCaptureTarget;

    invoke-virtual {v1, p1}, Landroid/view/ScrollCaptureTarget;->dump(Ljava/io/PrintWriter;)V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    add-int/lit8 v0, v0, 0x1

    goto :goto_55

    :cond_8d
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    :goto_90
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    return-void
.end method

.method public finish()V
    .registers 2

    iget-boolean v0, p0, Landroid/view/ScrollCaptureSearchResults;->mComplete:Z

    if-nez v0, :cond_c

    iget-object v0, p0, Landroid/view/ScrollCaptureSearchResults;->mCancel:Landroid/os/CancellationSignal;

    invoke-virtual {v0}, Landroid/os/CancellationSignal;->cancel()V

    invoke-direct {p0}, Landroid/view/ScrollCaptureSearchResults;->signalComplete()V

    :cond_c
    return-void
.end method

.method public getTargets()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/view/ScrollCaptureTarget;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/view/ScrollCaptureSearchResults;->mTargets:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getTopResult()Landroid/view/ScrollCaptureTarget;
    .registers 4

    iget-object v0, p0, Landroid/view/ScrollCaptureSearchResults;->mTargets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_b

    move-object v0, v1

    goto :goto_14

    :cond_b
    iget-object v0, p0, Landroid/view/ScrollCaptureSearchResults;->mTargets:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ScrollCaptureTarget;

    :goto_14
    if-eqz v0, :cond_1d

    invoke-virtual {v0}, Landroid/view/ScrollCaptureTarget;->getScrollBounds()Landroid/graphics/Rect;

    move-result-object v2

    if-eqz v2, :cond_1d

    move-object v1, v0

    :cond_1d
    return-object v1
.end method

.method public isComplete()Z
    .registers 2

    iget-boolean v0, p0, Landroid/view/ScrollCaptureSearchResults;->mComplete:Z

    return v0
.end method

.method public isEmpty()Z
    .registers 2

    iget-object v0, p0, Landroid/view/ScrollCaptureSearchResults;->mTargets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    return v0
.end method

.method synthetic lambda$addTarget$0$android-view-ScrollCaptureSearchResults(Landroid/view/ScrollCaptureCallback;Ljava/util/function/Consumer;)V
    .registers 4

    iget-object v0, p0, Landroid/view/ScrollCaptureSearchResults;->mCancel:Landroid/os/CancellationSignal;

    invoke-interface {p1, v0, p2}, Landroid/view/ScrollCaptureCallback;->onScrollCaptureSearch(Landroid/os/CancellationSignal;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public setOnCompleteListener(Ljava/lang/Runnable;)V
    .registers 3

    iget-boolean v0, p0, Landroid/view/ScrollCaptureSearchResults;->mComplete:Z

    if-eqz v0, :cond_8

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_a

    :cond_8
    iput-object p1, p0, Landroid/view/ScrollCaptureSearchResults;->mOnCompleteListener:Ljava/lang/Runnable;

    :goto_a
    return-void
.end method
