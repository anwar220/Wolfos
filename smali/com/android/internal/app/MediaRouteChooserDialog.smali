# classes4.dex

.class public Lcom/android/internal/app/MediaRouteChooserDialog;
.super Landroid/app/AlertDialog;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/MediaRouteChooserDialog$RouteComparator;,
        Lcom/android/internal/app/MediaRouteChooserDialog$MediaRouterCallback;,
        Lcom/android/internal/app/MediaRouteChooserDialog$RouteAdapter;
    }
.end annotation


# instance fields
.field private mAdapter:Lcom/android/internal/app/MediaRouteChooserDialog$RouteAdapter;

.field private mAttachedToWindow:Z

.field private final mCallback:Lcom/android/internal/app/MediaRouteChooserDialog$MediaRouterCallback;

.field private mExtendedSettingsButton:Landroid/widget/Button;

.field private mExtendedSettingsClickListener:Landroid/view/View$OnClickListener;

.field private mListView:Landroid/widget/ListView;

.field private mRouteTypes:I

.field private final mRouter:Landroid/media/MediaRouter;

.field private final mShowProgressBarWhenEmpty:Z


# direct methods
.method static bridge synthetic -$$Nest$fgetmRouter(Lcom/android/internal/app/MediaRouteChooserDialog;)Landroid/media/MediaRouter;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/app/MediaRouteChooserDialog;->mRouter:Landroid/media/MediaRouter;

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .registers 4

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/app/MediaRouteChooserDialog;-><init>(Landroid/content/Context;IZ)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IZ)V
    .registers 6

    invoke-direct {p0, p1, p2}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    const-string/jumbo v0, "media_router"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaRouter;

    iput-object v0, p0, Lcom/android/internal/app/MediaRouteChooserDialog;->mRouter:Landroid/media/MediaRouter;

    new-instance v0, Lcom/android/internal/app/MediaRouteChooserDialog$MediaRouterCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/internal/app/MediaRouteChooserDialog$MediaRouterCallback;-><init>(Lcom/android/internal/app/MediaRouteChooserDialog;Lcom/android/internal/app/MediaRouteChooserDialog$MediaRouterCallback-IA;)V

    iput-object v0, p0, Lcom/android/internal/app/MediaRouteChooserDialog;->mCallback:Lcom/android/internal/app/MediaRouteChooserDialog$MediaRouterCallback;

    iput-boolean p3, p0, Lcom/android/internal/app/MediaRouteChooserDialog;->mShowProgressBarWhenEmpty:Z

    return-void
.end method

.method static isLightTheme(Landroid/content/Context;)Z
    .registers 5

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, 0x1010590

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v1

    if-eqz v1, :cond_18

    iget v1, v0, Landroid/util/TypedValue;->data:I

    if-eqz v1, :cond_18

    goto :goto_19

    :cond_18
    const/4 v3, 0x0

    :goto_19
    return v3
.end method

.method private updateExtendedSettingsButton()V
    .registers 3

    iget-object v0, p0, Lcom/android/internal/app/MediaRouteChooserDialog;->mExtendedSettingsButton:Landroid/widget/Button;

    if-eqz v0, :cond_16

    iget-object v1, p0, Lcom/android/internal/app/MediaRouteChooserDialog;->mExtendedSettingsClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/internal/app/MediaRouteChooserDialog;->mExtendedSettingsButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/internal/app/MediaRouteChooserDialog;->mExtendedSettingsClickListener:Landroid/view/View$OnClickListener;

    if-eqz v1, :cond_11

    const/4 v1, 0x0

    goto :goto_13

    :cond_11
    const/16 v1, 0x8

    :goto_13
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    :cond_16
    return-void
.end method


# virtual methods
.method public getRouteTypes()I
    .registers 2

    iget v0, p0, Lcom/android/internal/app/MediaRouteChooserDialog;->mRouteTypes:I

    return v0
.end method

.method public onAttachedToWindow()V
    .registers 5

    invoke-super {p0}, Landroid/app/AlertDialog;->onAttachedToWindow()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/app/MediaRouteChooserDialog;->mAttachedToWindow:Z

    iget-object v1, p0, Lcom/android/internal/app/MediaRouteChooserDialog;->mRouter:Landroid/media/MediaRouter;

    iget v2, p0, Lcom/android/internal/app/MediaRouteChooserDialog;->mRouteTypes:I

    iget-object v3, p0, Lcom/android/internal/app/MediaRouteChooserDialog;->mCallback:Lcom/android/internal/app/MediaRouteChooserDialog$MediaRouterCallback;

    invoke-virtual {v1, v2, v3, v0}, Landroid/media/MediaRouter;->addCallback(ILandroid/media/MediaRouter$Callback;I)V

    invoke-virtual {p0}, Lcom/android/internal/app/MediaRouteChooserDialog;->refreshRoutes()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 5

    invoke-virtual {p0}, Lcom/android/internal/app/MediaRouteChooserDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x10900a7

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/app/MediaRouteChooserDialog;->setView(Landroid/view/View;)V

    iget v0, p0, Lcom/android/internal/app/MediaRouteChooserDialog;->mRouteTypes:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1c

    const v0, 0x1040563

    goto :goto_1f

    :cond_1c
    const v0, 0x1040562

    :goto_1f
    invoke-virtual {p0, v0}, Lcom/android/internal/app/MediaRouteChooserDialog;->setTitle(I)V

    invoke-virtual {p0}, Lcom/android/internal/app/MediaRouteChooserDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/app/MediaRouteChooserDialog;->isLightTheme(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_30

    const v0, 0x10804b1

    goto :goto_33

    :cond_30
    const v0, 0x10804b0

    :goto_33
    invoke-virtual {p0, v0}, Lcom/android/internal/app/MediaRouteChooserDialog;->setIcon(I)V

    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x1020004

    invoke-virtual {p0, v0}, Lcom/android/internal/app/MediaRouteChooserDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/android/internal/app/MediaRouteChooserDialog$RouteAdapter;

    invoke-virtual {p0}, Lcom/android/internal/app/MediaRouteChooserDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/internal/app/MediaRouteChooserDialog$RouteAdapter;-><init>(Lcom/android/internal/app/MediaRouteChooserDialog;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/internal/app/MediaRouteChooserDialog;->mAdapter:Lcom/android/internal/app/MediaRouteChooserDialog$RouteAdapter;

    const v1, 0x10203a8

    invoke-virtual {p0, v1}, Lcom/android/internal/app/MediaRouteChooserDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/android/internal/app/MediaRouteChooserDialog;->mListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/android/internal/app/MediaRouteChooserDialog;->mAdapter:Lcom/android/internal/app/MediaRouteChooserDialog$RouteAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v1, p0, Lcom/android/internal/app/MediaRouteChooserDialog;->mListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/android/internal/app/MediaRouteChooserDialog;->mAdapter:Lcom/android/internal/app/MediaRouteChooserDialog$RouteAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v1, p0, Lcom/android/internal/app/MediaRouteChooserDialog;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    const v1, 0x10203a7

    invoke-virtual {p0, v1}, Lcom/android/internal/app/MediaRouteChooserDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/internal/app/MediaRouteChooserDialog;->mExtendedSettingsButton:Landroid/widget/Button;

    invoke-direct {p0}, Lcom/android/internal/app/MediaRouteChooserDialog;->updateExtendedSettingsButton()V

    iget-boolean v1, p0, Lcom/android/internal/app/MediaRouteChooserDialog;->mShowProgressBarWhenEmpty:Z

    if-nez v1, :cond_93

    const v1, 0x10203a9

    invoke-virtual {p0, v1}, Lcom/android/internal/app/MediaRouteChooserDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    nop

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v2, 0x11

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_93
    return-void
.end method

.method public onDetachedFromWindow()V
    .registers 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/app/MediaRouteChooserDialog;->mAttachedToWindow:Z

    iget-object v0, p0, Lcom/android/internal/app/MediaRouteChooserDialog;->mRouter:Landroid/media/MediaRouter;

    iget-object v1, p0, Lcom/android/internal/app/MediaRouteChooserDialog;->mCallback:Lcom/android/internal/app/MediaRouteChooserDialog$MediaRouterCallback;

    invoke-virtual {v0, v1}, Landroid/media/MediaRouter;->removeCallback(Landroid/media/MediaRouter$Callback;)V

    invoke-super {p0}, Landroid/app/AlertDialog;->onDetachedFromWindow()V

    return-void
.end method

.method public onFilterRoute(Landroid/media/MediaRouter$RouteInfo;)Z
    .registers 3

    invoke-virtual {p1}, Landroid/media/MediaRouter$RouteInfo;->isDefault()Z

    move-result v0

    if-nez v0, :cond_16

    invoke-virtual {p1}, Landroid/media/MediaRouter$RouteInfo;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_16

    iget v0, p0, Lcom/android/internal/app/MediaRouteChooserDialog;->mRouteTypes:I

    invoke-virtual {p1, v0}, Landroid/media/MediaRouter$RouteInfo;->matchesTypes(I)Z

    move-result v0

    if-eqz v0, :cond_16

    const/4 v0, 0x1

    goto :goto_17

    :cond_16
    const/4 v0, 0x0

    :goto_17
    return v0
.end method

.method public refreshRoutes()V
    .registers 2

    iget-boolean v0, p0, Lcom/android/internal/app/MediaRouteChooserDialog;->mAttachedToWindow:Z

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/internal/app/MediaRouteChooserDialog;->mAdapter:Lcom/android/internal/app/MediaRouteChooserDialog$RouteAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/MediaRouteChooserDialog$RouteAdapter;->update()V

    :cond_9
    return-void
.end method

.method public setExtendedSettingsClickListener(Landroid/view/View$OnClickListener;)V
    .registers 3

    iget-object v0, p0, Lcom/android/internal/app/MediaRouteChooserDialog;->mExtendedSettingsClickListener:Landroid/view/View$OnClickListener;

    if-eq p1, v0, :cond_9

    iput-object p1, p0, Lcom/android/internal/app/MediaRouteChooserDialog;->mExtendedSettingsClickListener:Landroid/view/View$OnClickListener;

    invoke-direct {p0}, Lcom/android/internal/app/MediaRouteChooserDialog;->updateExtendedSettingsButton()V

    :cond_9
    return-void
.end method

.method public setRouteTypes(I)V
    .registers 5

    iget v0, p0, Lcom/android/internal/app/MediaRouteChooserDialog;->mRouteTypes:I

    if-eq v0, p1, :cond_1c

    iput p1, p0, Lcom/android/internal/app/MediaRouteChooserDialog;->mRouteTypes:I

    iget-boolean v0, p0, Lcom/android/internal/app/MediaRouteChooserDialog;->mAttachedToWindow:Z

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/android/internal/app/MediaRouteChooserDialog;->mRouter:Landroid/media/MediaRouter;

    iget-object v1, p0, Lcom/android/internal/app/MediaRouteChooserDialog;->mCallback:Lcom/android/internal/app/MediaRouteChooserDialog$MediaRouterCallback;

    invoke-virtual {v0, v1}, Landroid/media/MediaRouter;->removeCallback(Landroid/media/MediaRouter$Callback;)V

    iget-object v0, p0, Lcom/android/internal/app/MediaRouteChooserDialog;->mRouter:Landroid/media/MediaRouter;

    iget-object v1, p0, Lcom/android/internal/app/MediaRouteChooserDialog;->mCallback:Lcom/android/internal/app/MediaRouteChooserDialog$MediaRouterCallback;

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v1, v2}, Landroid/media/MediaRouter;->addCallback(ILandroid/media/MediaRouter$Callback;I)V

    :cond_19
    invoke-virtual {p0}, Lcom/android/internal/app/MediaRouteChooserDialog;->refreshRoutes()V

    :cond_1c
    return-void
.end method
