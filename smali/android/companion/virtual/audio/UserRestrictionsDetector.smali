# classes.dex

.class final Landroid/companion/virtual/audio/UserRestrictionsDetector;
.super Landroid/content/BroadcastReceiver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/companion/virtual/audio/UserRestrictionsDetector$UserRestrictionsCallback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "UserRestrictionsDetector"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mIsUnmuteMicDisallowed:Z

.field private final mLock:Ljava/lang/Object;

.field private final mUserManager:Landroid/os/UserManager;

.field private mUserRestrictionsCallback:Landroid/companion/virtual/audio/UserRestrictionsDetector$UserRestrictionsCallback;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/companion/virtual/audio/UserRestrictionsDetector;->mLock:Ljava/lang/Object;

    iput-object p1, p0, Landroid/companion/virtual/audio/UserRestrictionsDetector;->mContext:Landroid/content/Context;

    const-class v0, Landroid/os/UserManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Landroid/companion/virtual/audio/UserRestrictionsDetector;->mUserManager:Landroid/os/UserManager;

    return-void
.end method


# virtual methods
.method isUnmuteMicrophoneDisallowed()Z
    .registers 3

    iget-object v0, p0, Landroid/companion/virtual/audio/UserRestrictionsDetector;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->getUserRestrictions()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "no_unmute_microphone"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.os.action.USER_RESTRICTIONS_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_27

    invoke-virtual {p0}, Landroid/companion/virtual/audio/UserRestrictionsDetector;->isUnmuteMicrophoneDisallowed()Z

    move-result v1

    iget-object v2, p0, Landroid/companion/virtual/audio/UserRestrictionsDetector;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_13
    iget-boolean v3, p0, Landroid/companion/virtual/audio/UserRestrictionsDetector;->mIsUnmuteMicDisallowed:Z

    if-ne v1, v3, :cond_19

    monitor-exit v2

    return-void

    :cond_19
    iput-boolean v1, p0, Landroid/companion/virtual/audio/UserRestrictionsDetector;->mIsUnmuteMicDisallowed:Z

    monitor-exit v2
    :try_end_1c
    .catchall {:try_start_13 .. :try_end_1c} :catchall_24

    iget-object v2, p0, Landroid/companion/virtual/audio/UserRestrictionsDetector;->mUserRestrictionsCallback:Landroid/companion/virtual/audio/UserRestrictionsDetector$UserRestrictionsCallback;

    if-eqz v2, :cond_27

    invoke-interface {v2, v1}, Landroid/companion/virtual/audio/UserRestrictionsDetector$UserRestrictionsCallback;->onMicrophoneRestrictionChanged(Z)V

    goto :goto_27

    :catchall_24
    move-exception v3

    :try_start_25
    monitor-exit v2
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_24

    throw v3

    :cond_27
    :goto_27
    return-void
.end method

.method register(Landroid/companion/virtual/audio/UserRestrictionsDetector$UserRestrictionsCallback;)V
    .registers 5

    iput-object p1, p0, Landroid/companion/virtual/audio/UserRestrictionsDetector;->mUserRestrictionsCallback:Landroid/companion/virtual/audio/UserRestrictionsDetector$UserRestrictionsCallback;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.os.action.USER_RESTRICTIONS_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/companion/virtual/audio/UserRestrictionsDetector;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v1, p0, Landroid/companion/virtual/audio/UserRestrictionsDetector;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_14
    invoke-virtual {p0}, Landroid/companion/virtual/audio/UserRestrictionsDetector;->isUnmuteMicrophoneDisallowed()Z

    move-result v2

    iput-boolean v2, p0, Landroid/companion/virtual/audio/UserRestrictionsDetector;->mIsUnmuteMicDisallowed:Z

    monitor-exit v1

    return-void

    :catchall_1c
    move-exception v2

    monitor-exit v1
    :try_end_1e
    .catchall {:try_start_14 .. :try_end_1e} :catchall_1c

    throw v2
.end method

.method unregister()V
    .registers 2

    iget-object v0, p0, Landroid/companion/virtual/audio/UserRestrictionsDetector;->mUserRestrictionsCallback:Landroid/companion/virtual/audio/UserRestrictionsDetector$UserRestrictionsCallback;

    if-eqz v0, :cond_c

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/companion/virtual/audio/UserRestrictionsDetector;->mUserRestrictionsCallback:Landroid/companion/virtual/audio/UserRestrictionsDetector$UserRestrictionsCallback;

    iget-object v0, p0, Landroid/companion/virtual/audio/UserRestrictionsDetector;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_c
    return-void
.end method
