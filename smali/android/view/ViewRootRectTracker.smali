# classes3.dex

.class Landroid/view/ViewRootRectTracker;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/ViewRootRectTracker$ViewInfo;
    }
.end annotation


# instance fields
.field private final mRectCollector:Ljava/util/function/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Function<",
            "Landroid/view/View;",
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;>;"
        }
    .end annotation
.end field

.field private mRects:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field private mRootRects:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field private mRootRectsChanged:Z

.field private mViewInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/ViewRootRectTracker$ViewInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mViewsChanged:Z


# direct methods
.method static bridge synthetic -$$Nest$mgetTrackedRectsForView(Landroid/view/ViewRootRectTracker;Landroid/view/View;)Ljava/util/List;
    .registers 2

    invoke-direct {p0, p1}, Landroid/view/ViewRootRectTracker;->getTrackedRectsForView(Landroid/view/View;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method constructor <init>(Ljava/util/function/Function;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Function<",
            "Landroid/view/View;",
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/ViewRootRectTracker;->mViewsChanged:Z

    iput-boolean v0, p0, Landroid/view/ViewRootRectTracker;->mRootRectsChanged:Z

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/view/ViewRootRectTracker;->mRootRects:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/ViewRootRectTracker;->mViewInfos:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/view/ViewRootRectTracker;->mRects:Ljava/util/List;

    iput-object p1, p0, Landroid/view/ViewRootRectTracker;->mRectCollector:Ljava/util/function/Function;

    return-void
.end method

.method private getTrackedRectsForView(Landroid/view/View;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")",
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/view/ViewRootRectTracker;->mRectCollector:Ljava/util/function/Function;

    invoke-interface {v0, p1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_f

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    goto :goto_10

    :cond_f
    move-object v1, v0

    :goto_10
    return-object v1
.end method


# virtual methods
.method public computeChangedRects()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/view/ViewRootRectTracker;->computeChanges()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Landroid/view/ViewRootRectTracker;->mRects:Ljava/util/List;

    return-object v0

    :cond_9
    const/4 v0, 0x0

    return-object v0
.end method

.method public computeChanges()Z
    .registers 7

    iget-boolean v0, p0, Landroid/view/ViewRootRectTracker;->mRootRectsChanged:Z

    iget-object v1, p0, Landroid/view/ViewRootRectTracker;->mViewInfos:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Landroid/view/ViewRootRectTracker;->mRootRects:Ljava/util/List;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_32

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/ViewRootRectTracker$ViewInfo;

    invoke-virtual {v3}, Landroid/view/ViewRootRectTracker$ViewInfo;->update()I

    move-result v5

    packed-switch v5, :pswitch_data_4a

    goto :goto_31

    :pswitch_24  #0x2
    iput-boolean v4, p0, Landroid/view/ViewRootRectTracker;->mViewsChanged:Z

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_31

    :pswitch_2a  #0x0
    const/4 v0, 0x1

    :pswitch_2b  #0x1
    iget-object v4, v3, Landroid/view/ViewRootRectTracker$ViewInfo;->mRects:Ljava/util/List;

    invoke-interface {v2, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    nop

    :goto_31
    goto :goto_f

    :cond_32
    const/4 v3, 0x0

    if-nez v0, :cond_39

    iget-boolean v5, p0, Landroid/view/ViewRootRectTracker;->mViewsChanged:Z

    if-eqz v5, :cond_48

    :cond_39
    iput-boolean v3, p0, Landroid/view/ViewRootRectTracker;->mViewsChanged:Z

    iput-boolean v3, p0, Landroid/view/ViewRootRectTracker;->mRootRectsChanged:Z

    iget-object v5, p0, Landroid/view/ViewRootRectTracker;->mRects:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_48

    iput-object v2, p0, Landroid/view/ViewRootRectTracker;->mRects:Ljava/util/List;

    return v4

    :cond_48
    return v3

    nop

    :pswitch_data_4a
    .packed-switch 0x0
        :pswitch_2a  #00000000
        :pswitch_2b  #00000001
        :pswitch_24  #00000002
    .end packed-switch
.end method

.method public getLastComputedRects()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/view/ViewRootRectTracker;->mRects:Ljava/util/List;

    return-object v0
.end method

.method public getRootRects()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/view/ViewRootRectTracker;->mRootRects:Ljava/util/List;

    return-object v0
.end method

.method public setRootRects(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v0, "rects must not be null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Landroid/view/ViewRootRectTracker;->mRootRects:Ljava/util/List;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/ViewRootRectTracker;->mRootRectsChanged:Z

    return-void
.end method

.method public updateRectsForView(Landroid/view/View;)V
    .registers 8

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/view/ViewRootRectTracker;->mViewInfos:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_34

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/ViewRootRectTracker$ViewInfo;

    invoke-virtual {v2}, Landroid/view/ViewRootRectTracker$ViewInfo;->getView()Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_2e

    invoke-virtual {v4}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v5

    if-eqz v5, :cond_2e

    invoke-virtual {v4}, Landroid/view/View;->isAggregatedVisible()Z

    move-result v5

    if-nez v5, :cond_27

    goto :goto_2e

    :cond_27
    if-ne v4, p1, :cond_2d

    const/4 v0, 0x1

    iput-boolean v3, v2, Landroid/view/ViewRootRectTracker$ViewInfo;->mDirty:Z

    goto :goto_34

    :cond_2d
    goto :goto_7

    :cond_2e
    :goto_2e
    iput-boolean v3, p0, Landroid/view/ViewRootRectTracker;->mViewsChanged:Z

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_7

    :cond_34
    :goto_34
    if-nez v0, :cond_48

    invoke-virtual {p1}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v2

    if-eqz v2, :cond_48

    iget-object v2, p0, Landroid/view/ViewRootRectTracker;->mViewInfos:Ljava/util/List;

    new-instance v4, Landroid/view/ViewRootRectTracker$ViewInfo;

    invoke-direct {v4, p0, p1}, Landroid/view/ViewRootRectTracker$ViewInfo;-><init>(Landroid/view/ViewRootRectTracker;Landroid/view/View;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iput-boolean v3, p0, Landroid/view/ViewRootRectTracker;->mViewsChanged:Z

    :cond_48
    return-void
.end method
