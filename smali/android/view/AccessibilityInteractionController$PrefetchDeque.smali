# classes3.dex

.class Landroid/view/AccessibilityInteractionController$PrefetchDeque;
.super Ljava/util/ArrayDeque;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/AccessibilityInteractionController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PrefetchDeque"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E::",
        "Landroid/view/AccessibilityInteractionController$DequeNode;",
        ">",
        "Ljava/util/ArrayDeque<",
        "TE;>;"
    }
.end annotation


# instance fields
.field mPrefetchOutput:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;"
        }
    .end annotation
.end field

.field mStrategy:I

.field final synthetic this$0:Landroid/view/AccessibilityInteractionController;


# direct methods
.method constructor <init>(Landroid/view/AccessibilityInteractionController;ILjava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroid/view/AccessibilityInteractionController$PrefetchDeque;->this$0:Landroid/view/AccessibilityInteractionController;

    invoke-direct {p0}, Ljava/util/ArrayDeque;-><init>()V

    iput p2, p0, Landroid/view/AccessibilityInteractionController$PrefetchDeque;->mStrategy:I

    iput-object p3, p0, Landroid/view/AccessibilityInteractionController$PrefetchDeque;->mPrefetchOutput:Ljava/util/List;

    return-void
.end method


# virtual methods
.method getNext()Landroid/view/AccessibilityInteractionController$DequeNode;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/view/AccessibilityInteractionController$PrefetchDeque;->isStack()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-virtual {p0}, Landroid/view/AccessibilityInteractionController$PrefetchDeque;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/AccessibilityInteractionController$DequeNode;

    return-object v0

    :cond_d
    invoke-virtual {p0}, Landroid/view/AccessibilityInteractionController$PrefetchDeque;->removeLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/AccessibilityInteractionController$DequeNode;

    return-object v0
.end method

.method isStack()Z
    .registers 2

    iget v0, p0, Landroid/view/AccessibilityInteractionController$PrefetchDeque;->mStrategy:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method performTraversalAndPrefetch()V
    .registers 5

    :goto_0
    :try_start_0
    invoke-virtual {p0}, Landroid/view/AccessibilityInteractionController$PrefetchDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2b

    invoke-virtual {p0}, Landroid/view/AccessibilityInteractionController$PrefetchDeque;->getNext()Landroid/view/AccessibilityInteractionController$DequeNode;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/AccessibilityInteractionController$DequeNode;->getA11yNodeInfo()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v1

    if-eqz v1, :cond_15

    iget-object v2, p0, Landroid/view/AccessibilityInteractionController$PrefetchDeque;->mPrefetchOutput:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_15
    iget-object v2, p0, Landroid/view/AccessibilityInteractionController$PrefetchDeque;->this$0:Landroid/view/AccessibilityInteractionController;

    invoke-static {v2}, Landroid/view/AccessibilityInteractionController;->-$$Nest$fgetmPrefetcher(Landroid/view/AccessibilityInteractionController;)Landroid/view/AccessibilityInteractionController$AccessibilityNodePrefetcher;

    move-result-object v2

    iget-object v3, p0, Landroid/view/AccessibilityInteractionController$PrefetchDeque;->mPrefetchOutput:Ljava/util/List;

    invoke-virtual {v2, v3}, Landroid/view/AccessibilityInteractionController$AccessibilityNodePrefetcher;->shouldStopPrefetching(Ljava/util/List;)Z

    move-result v2
    :try_end_21
    .catchall {:try_start_0 .. :try_end_21} :catchall_30

    if-eqz v2, :cond_27

    invoke-virtual {p0}, Landroid/view/AccessibilityInteractionController$PrefetchDeque;->clear()V

    return-void

    :cond_27
    :try_start_27
    invoke-interface {v0, v1, p0}, Landroid/view/AccessibilityInteractionController$DequeNode;->addChildren(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/view/AccessibilityInteractionController$PrefetchDeque;)V
    :try_end_2a
    .catchall {:try_start_27 .. :try_end_2a} :catchall_30

    goto :goto_0

    :cond_2b
    invoke-virtual {p0}, Landroid/view/AccessibilityInteractionController$PrefetchDeque;->clear()V

    nop

    return-void

    :catchall_30
    move-exception v0

    invoke-virtual {p0}, Landroid/view/AccessibilityInteractionController$PrefetchDeque;->clear()V

    throw v0
.end method
