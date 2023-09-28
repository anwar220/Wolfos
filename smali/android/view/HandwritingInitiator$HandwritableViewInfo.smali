# classes3.dex

.class public Landroid/view/HandwritingInitiator$HandwritableViewInfo;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/HandwritingInitiator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HandwritableViewInfo"
.end annotation


# instance fields
.field mHandwritingArea:Landroid/graphics/Rect;

.field public mIsDirty:Z

.field final mViewRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/HandwritingInitiator$HandwritableViewInfo;->mHandwritingArea:Landroid/graphics/Rect;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/HandwritingInitiator$HandwritableViewInfo;->mIsDirty:Z

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/view/HandwritingInitiator$HandwritableViewInfo;->mViewRef:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public getHandwritingArea()Landroid/graphics/Rect;
    .registers 2

    iget-object v0, p0, Landroid/view/HandwritingInitiator$HandwritableViewInfo;->mHandwritingArea:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .registers 2

    iget-object v0, p0, Landroid/view/HandwritingInitiator$HandwritableViewInfo;->mViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method public update()Z
    .registers 8

    invoke-virtual {p0}, Landroid/view/HandwritingInitiator$HandwritableViewInfo;->getView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Landroid/view/HandwritingInitiator;->-$$Nest$smisViewActive(Landroid/view/View;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_c

    return v2

    :cond_c
    iget-boolean v1, p0, Landroid/view/HandwritingInitiator$HandwritableViewInfo;->mIsDirty:Z

    const/4 v3, 0x1

    if-nez v1, :cond_12

    return v3

    :cond_12
    invoke-virtual {v0}, Landroid/view/View;->getHandwritingArea()Landroid/graphics/Rect;

    move-result-object v1

    if-nez v1, :cond_19

    return v2

    :cond_19
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    if-eqz v4, :cond_3a

    iget-object v5, p0, Landroid/view/HandwritingInitiator$HandwritableViewInfo;->mHandwritingArea:Landroid/graphics/Rect;

    if-nez v5, :cond_2a

    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    iput-object v5, p0, Landroid/view/HandwritingInitiator$HandwritableViewInfo;->mHandwritingArea:Landroid/graphics/Rect;

    :cond_2a
    iget-object v5, p0, Landroid/view/HandwritingInitiator$HandwritableViewInfo;->mHandwritingArea:Landroid/graphics/Rect;

    invoke-virtual {v5, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v5, p0, Landroid/view/HandwritingInitiator$HandwritableViewInfo;->mHandwritingArea:Landroid/graphics/Rect;

    const/4 v6, 0x0

    invoke-interface {v4, v0, v5, v6}, Landroid/view/ViewParent;->getChildVisibleRect(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Point;)Z

    move-result v5

    if-nez v5, :cond_3a

    iput-object v6, p0, Landroid/view/HandwritingInitiator$HandwritableViewInfo;->mHandwritingArea:Landroid/graphics/Rect;

    :cond_3a
    iput-boolean v2, p0, Landroid/view/HandwritingInitiator$HandwritableViewInfo;->mIsDirty:Z

    return v3
.end method
