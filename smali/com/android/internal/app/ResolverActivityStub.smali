# classes4.dex

.class public Lcom/android/internal/app/ResolverActivityStub;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/android/internal/app/ResolverActivityStub;
    .registers 1

    const-class v0, Lcom/android/internal/app/ResolverActivityStub;

    invoke-static {v0}, Lcom/miui/base/MiuiStubUtil;->getInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/ResolverActivityStub;

    return-object v0
.end method

.method public static newInstance()Lcom/android/internal/app/ResolverActivityStub;
    .registers 1

    const-class v0, Lcom/android/internal/app/ResolverActivityStub;

    invoke-static {v0}, Lcom/miui/base/MiuiStubUtil;->newInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/ResolverActivityStub;

    return-object v0
.end method


# virtual methods
.method public addAppNameIfNeeded(Lcom/android/internal/app/chooser/DisplayResolveInfo;)V
    .registers 2

    return-void
.end method

.method public adjustWindowLayoutTemp()V
    .registers 1

    return-void
.end method

.method public bindOfficalRecommendView()V
    .registers 1

    return-void
.end method

.method public bindProfileView()V
    .registers 1

    return-void
.end method

.method public checkStartShareActivity(Landroid/app/Activity;Landroid/os/Bundle;ILandroid/content/Intent;)Z
    .registers 6

    const/4 v0, 0x0

    return v0
.end method

.method public configureContentView(Ljava/util/List;[Landroid/content/Intent;Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/Intent;",
            ">;[",
            "Landroid/content/Intent;",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public customResolver()V
    .registers 1

    return-void
.end method

.method public getAlwaysUse()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getAlwaysoptionId()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getAndroidForwardIntentToOwnerId()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getAndroidForwardIntentToWorkId()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getApplicationContext()Landroid/content/Context;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public getChosenIndex()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getChosenView()Landroid/view/View;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public getMaxPerScreen()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getMiuiTheme()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getPostListReadyRunnable()Ljava/lang/Runnable;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public getRecommendable()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getResolverClassName()Ljava/lang/String;
    .registers 2

    const-class v0, Lcom/android/internal/app/ResolverActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getShowMoreResolverButton()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public init(Landroid/content/Context;Lcom/android/internal/app/ResolverListAdapter;Landroid/app/Activity;Lcom/android/internal/compat/AlertController$AlertParams;Landroid/view/View;)V
    .registers 6

    return-void
.end method

.method public initGridViews()V
    .registers 1

    return-void
.end method

.method public isInternationalBuild()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public onDestroy()V
    .registers 1

    return-void
.end method

.method public registerPackageMonitor(Landroid/content/Context;Landroid/os/Looper;Z)V
    .registers 4

    return-void
.end method

.method public sendItemSelectedAnalyticsBroadcast(Ljava/util/List;IZLjava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/app/chooser/DisplayResolveInfo;",
            ">;IZ",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    return-void
.end method

.method public setAlwaysUse(Z)V
    .registers 2

    return-void
.end method

.method public setChoseView(Landroid/view/View;)V
    .registers 2

    return-void
.end method

.method public setChosenIndex(I)V
    .registers 2

    return-void
.end method

.method public setPostListReadyRunnable(Ljava/lang/Runnable;)V
    .registers 2

    return-void
.end method

.method public setRecommendable(Z)V
    .registers 2

    return-void
.end method

.method public showMore()V
    .registers 1

    return-void
.end method

.method public unregisterPackageMonitor()V
    .registers 1

    return-void
.end method

.method public useAospShareSheet()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method
