# classes.dex

.class public abstract Landroid/app/HomeVisibilityListener;
.super Ljava/lang/Object;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
    client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
.end annotation


# instance fields
.field private mActivityManager:Landroid/app/ActivityManager;

.field private mContext:Landroid/content/Context;

.field private mExecutor:Ljava/util/concurrent/Executor;

.field mIsHomeActivityVisible:Z

.field mObserver:Landroid/app/IProcessObserver$Stub;


# direct methods
.method static bridge synthetic -$$Nest$fgetmExecutor(Landroid/app/HomeVisibilityListener;)Ljava/util/concurrent/Executor;
    .registers 1

    iget-object p0, p0, Landroid/app/HomeVisibilityListener;->mExecutor:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$misHomeActivityVisible(Landroid/app/HomeVisibilityListener;)Z
    .registers 1

    invoke-direct {p0}, Landroid/app/HomeVisibilityListener;->isHomeActivityVisible()Z

    move-result p0

    return p0
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/app/HomeVisibilityListener$1;

    invoke-direct {v0, p0}, Landroid/app/HomeVisibilityListener$1;-><init>(Landroid/app/HomeVisibilityListener;)V

    iput-object v0, p0, Landroid/app/HomeVisibilityListener;->mObserver:Landroid/app/IProcessObserver$Stub;

    return-void
.end method

.method private isHomeActivityVisible()Z
    .registers 6

    iget-object v0, p0, Landroid/app/HomeVisibilityListener;->mActivityManager:Landroid/app/ActivityManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3b

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_11

    goto :goto_3b

    :cond_11
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_20

    return v1

    :cond_20
    iget-object v3, p0, Landroid/app/HomeVisibilityListener;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getHomeActivities(Ljava/util/List;)Landroid/content/ComponentName;

    move-result-object v3

    if-nez v3, :cond_32

    return v1

    :cond_32
    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    return v4

    :cond_3b
    :goto_3b
    return v1
.end method


# virtual methods
.method init(Landroid/content/Context;Ljava/util/concurrent/Executor;Landroid/app/ActivityManager;)V
    .registers 5

    iput-object p1, p0, Landroid/app/HomeVisibilityListener;->mContext:Landroid/content/Context;

    iput-object p3, p0, Landroid/app/HomeVisibilityListener;->mActivityManager:Landroid/app/ActivityManager;

    invoke-direct {p0}, Landroid/app/HomeVisibilityListener;->isHomeActivityVisible()Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/HomeVisibilityListener;->mIsHomeActivityVisible:Z

    iput-object p2, p0, Landroid/app/HomeVisibilityListener;->mExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public abstract onHomeVisibilityChanged(Z)V
.end method
