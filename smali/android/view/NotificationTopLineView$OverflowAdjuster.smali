# classes3.dex

.class final Landroid/view/NotificationTopLineView$OverflowAdjuster;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/NotificationTopLineView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "OverflowAdjuster"
.end annotation


# instance fields
.field private mHeightSpec:I

.field private mOverflow:I

.field private mRegrowView:Landroid/view/View;

.field final synthetic this$0:Landroid/view/NotificationTopLineView;


# direct methods
.method private constructor <init>(Landroid/view/NotificationTopLineView;)V
    .registers 2

    iput-object p1, p0, Landroid/view/NotificationTopLineView$OverflowAdjuster;->this$0:Landroid/view/NotificationTopLineView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/view/NotificationTopLineView;Landroid/view/NotificationTopLineView$OverflowAdjuster-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/view/NotificationTopLineView$OverflowAdjuster;-><init>(Landroid/view/NotificationTopLineView;)V

    return-void
.end method

.method private getHorizontalMargins(Landroid/view/View;)I
    .registers 5

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {v0}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginStart()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginEnd()I

    move-result v2

    add-int/2addr v1, v2

    return v1
.end method


# virtual methods
.method adjust(Landroid/view/View;Landroid/view/View;I)Landroid/view/NotificationTopLineView$OverflowAdjuster;
    .registers 12

    iget v0, p0, Landroid/view/NotificationTopLineView$OverflowAdjuster;->mOverflow:I

    if-lez v0, :cond_a3

    if-eqz p1, :cond_a3

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_10

    goto/16 :goto_a3

    :cond_10
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    if-gt v0, p3, :cond_17

    return-object p0

    :cond_17
    iget v2, p0, Landroid/view/NotificationTopLineView$OverflowAdjuster;->mOverflow:I

    sub-int v2, v0, v2

    invoke-static {p3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    if-nez p3, :cond_30

    iget-object v3, p0, Landroid/view/NotificationTopLineView$OverflowAdjuster;->this$0:Landroid/view/NotificationTopLineView;

    invoke-static {v3}, Landroid/view/NotificationTopLineView;->-$$Nest$fgetmChildHideWidth(Landroid/view/NotificationTopLineView;)I

    move-result v3

    if-ge v2, v3, :cond_30

    iget-object v3, p0, Landroid/view/NotificationTopLineView$OverflowAdjuster;->mRegrowView:Landroid/view/View;

    if-eqz v3, :cond_30

    if-eq v3, p1, :cond_30

    const/4 v2, 0x0

    :cond_30
    const/high16 v3, -0x80000000

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    iget v5, p0, Landroid/view/NotificationTopLineView$OverflowAdjuster;->mHeightSpec:I

    invoke-virtual {p1, v4, v5}, Landroid/view/View;->measure(II)V

    iget v5, p0, Landroid/view/NotificationTopLineView$OverflowAdjuster;->mOverflow:I

    sub-int v6, v0, v2

    sub-int/2addr v5, v6

    iput v5, p0, Landroid/view/NotificationTopLineView$OverflowAdjuster;->mOverflow:I

    if-nez v2, :cond_7f

    iget-object v5, p0, Landroid/view/NotificationTopLineView$OverflowAdjuster;->this$0:Landroid/view/NotificationTopLineView;

    invoke-static {v5}, Landroid/view/NotificationTopLineView;->-$$Nest$fgetmViewsToDisappear(Landroid/view/NotificationTopLineView;)Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget v5, p0, Landroid/view/NotificationTopLineView$OverflowAdjuster;->mOverflow:I

    invoke-direct {p0, p1}, Landroid/view/NotificationTopLineView$OverflowAdjuster;->getHorizontalMargins(Landroid/view/View;)I

    move-result v6

    sub-int/2addr v5, v6

    iput v5, p0, Landroid/view/NotificationTopLineView$OverflowAdjuster;->mOverflow:I

    if-eqz p2, :cond_7f

    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-eq v5, v1, :cond_7f

    iget-object v1, p0, Landroid/view/NotificationTopLineView$OverflowAdjuster;->this$0:Landroid/view/NotificationTopLineView;

    invoke-static {v1}, Landroid/view/NotificationTopLineView;->-$$Nest$fgetmViewsToDisappear(Landroid/view/NotificationTopLineView;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    const/4 v5, 0x0

    invoke-static {v5, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    iget v6, p0, Landroid/view/NotificationTopLineView$OverflowAdjuster;->mHeightSpec:I

    invoke-virtual {p2, v5, v6}, Landroid/view/View;->measure(II)V

    iget v6, p0, Landroid/view/NotificationTopLineView$OverflowAdjuster;->mOverflow:I

    invoke-direct {p0, p2}, Landroid/view/NotificationTopLineView$OverflowAdjuster;->getHorizontalMargins(Landroid/view/View;)I

    move-result v7

    add-int/2addr v7, v1

    sub-int/2addr v6, v7

    iput v6, p0, Landroid/view/NotificationTopLineView$OverflowAdjuster;->mOverflow:I

    :cond_7f
    iget v1, p0, Landroid/view/NotificationTopLineView$OverflowAdjuster;->mOverflow:I

    if-gez v1, :cond_9e

    iget-object v1, p0, Landroid/view/NotificationTopLineView$OverflowAdjuster;->mRegrowView:Landroid/view/View;

    if-eqz v1, :cond_9e

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    iget v5, p0, Landroid/view/NotificationTopLineView$OverflowAdjuster;->mOverflow:I

    sub-int v5, v1, v5

    invoke-static {v5, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    iget-object v6, p0, Landroid/view/NotificationTopLineView$OverflowAdjuster;->mRegrowView:Landroid/view/View;

    iget v7, p0, Landroid/view/NotificationTopLineView$OverflowAdjuster;->mHeightSpec:I

    invoke-virtual {v6, v3, v7}, Landroid/view/View;->measure(II)V

    invoke-virtual {p0}, Landroid/view/NotificationTopLineView$OverflowAdjuster;->finish()V

    return-object p0

    :cond_9e
    if-eqz v2, :cond_a2

    iput-object p1, p0, Landroid/view/NotificationTopLineView$OverflowAdjuster;->mRegrowView:Landroid/view/View;

    :cond_a2
    return-object p0

    :cond_a3
    :goto_a3
    return-object p0
.end method

.method finish()V
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Landroid/view/NotificationTopLineView$OverflowAdjuster;->resetForOverflow(II)Landroid/view/NotificationTopLineView$OverflowAdjuster;

    return-void
.end method

.method resetForOverflow(II)Landroid/view/NotificationTopLineView$OverflowAdjuster;
    .registers 4

    iput p1, p0, Landroid/view/NotificationTopLineView$OverflowAdjuster;->mOverflow:I

    iput p2, p0, Landroid/view/NotificationTopLineView$OverflowAdjuster;->mHeightSpec:I

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/NotificationTopLineView$OverflowAdjuster;->mRegrowView:Landroid/view/View;

    return-object p0
.end method
