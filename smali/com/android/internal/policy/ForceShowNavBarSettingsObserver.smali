# classes4.dex

.class public Lcom/android/internal/policy/ForceShowNavBarSettingsObserver;
.super Landroid/database/ContentObserver;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mOnChangeRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/os/Handler;Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    iput-object p2, p0, Lcom/android/internal/policy/ForceShowNavBarSettingsObserver;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public isEnabled()Z
    .registers 5

    iget-object v0, p0, Lcom/android/internal/policy/ForceShowNavBarSettingsObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "nav_bar_force_visible"

    const/4 v2, 0x0

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_13

    move v2, v1

    :cond_13
    return v2
.end method

.method public onChange(ZLjava/util/Collection;II)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/Collection<",
            "Landroid/net/Uri;",
            ">;II)V"
        }
    .end annotation

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    if-eq p4, v0, :cond_7

    return-void

    :cond_7
    iget-object v0, p0, Lcom/android/internal/policy/ForceShowNavBarSettingsObserver;->mOnChangeRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_e

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_e
    return-void
.end method

.method public register()V
    .registers 5

    iget-object v0, p0, Lcom/android/internal/policy/ForceShowNavBarSettingsObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    nop

    const-string/jumbo v1, "nav_bar_force_visible"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    return-void
.end method

.method public setOnChangeRunnable(Ljava/lang/Runnable;)V
    .registers 2

    iput-object p1, p0, Lcom/android/internal/policy/ForceShowNavBarSettingsObserver;->mOnChangeRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method public unregister()V
    .registers 2

    iget-object v0, p0, Lcom/android/internal/policy/ForceShowNavBarSettingsObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method
