# classes4.dex

.class public Lcom/android/internal/widget/NotificationVanishingFrameLayout;
.super Landroid/widget/FrameLayout;


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1, v1}, Lcom/android/internal/widget/NotificationVanishingFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, v0}, Lcom/android/internal/widget/NotificationVanishingFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/internal/widget/NotificationVanishingFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method private allChildrenGone()Z
    .registers 6

    invoke-virtual {p0}, Lcom/android/internal/widget/NotificationVanishingFrameLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_1a

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/NotificationVanishingFrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_17

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-eq v3, v4, :cond_17

    const/4 v3, 0x0

    return v3

    :cond_17
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_1a
    const/4 v1, 0x1

    return v1
.end method


# virtual methods
.method protected onMeasure(II)V
    .registers 5

    invoke-direct {p0}, Lcom/android/internal/widget/NotificationVanishingFrameLayout;->allChildrenGone()Z

    move-result v0

    if-eqz v0, :cond_11

    const/4 v0, 0x0

    const/high16 v1, 0x40000000  # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-super {p0, v0, v0}, Landroid/widget/FrameLayout;->onMeasure(II)V

    goto :goto_14

    :cond_11
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    :goto_14
    return-void
.end method
