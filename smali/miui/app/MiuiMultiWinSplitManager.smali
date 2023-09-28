# classes4.dex

.class public Lmiui/app/MiuiMultiWinSplitManager;
.super Ljava/lang/Object;


# static fields
.field private static final IActivityTaskManagerSingleton:Landroid/util/Singleton;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Singleton<",
            "Lmiui/app/IMiuiMultiWinSplitManager;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "MiuiMultiWinSplitManager"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lmiui/app/MiuiMultiWinSplitManager$1;

    invoke-direct {v0}, Lmiui/app/MiuiMultiWinSplitManager$1;-><init>()V

    sput-object v0, Lmiui/app/MiuiMultiWinSplitManager;->IActivityTaskManagerSingleton:Landroid/util/Singleton;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static adjustToSplitWindingMode(Landroid/os/IBinder;)I
    .registers 4

    :try_start_0
    invoke-static {}, Lmiui/app/MiuiMultiWinSplitManager;->getService()Lmiui/app/IMiuiMultiWinSplitManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lmiui/app/IMiuiMultiWinSplitManager;->adjustToSplitWindingMode(Landroid/os/IBinder;)I

    move-result v0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8} :catch_9

    return v0

    :catch_9
    move-exception v0

    const-string v1, "MiuiMultiWinSplitManager"

    const-string v2, "isSupportDragForMultiWin failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, -0x1

    return v0
.end method

.method private static getService()Lmiui/app/IMiuiMultiWinSplitManager;
    .registers 1

    sget-object v0, Lmiui/app/MiuiMultiWinSplitManager;->IActivityTaskManagerSingleton:Landroid/util/Singleton;

    invoke-virtual {v0}, Landroid/util/Singleton;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/app/IMiuiMultiWinSplitManager;

    return-object v0
.end method

.method public static getSplitRootTasksPos(I)Landroid/os/Bundle;
    .registers 4

    :try_start_0
    invoke-static {}, Lmiui/app/MiuiMultiWinSplitManager;->getService()Lmiui/app/IMiuiMultiWinSplitManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lmiui/app/IMiuiMultiWinSplitManager;->getSplitRootTasksPos(I)Landroid/os/Bundle;

    move-result-object v0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8} :catch_9

    return-object v0

    :catch_9
    move-exception v0

    const-string v1, "MiuiMultiWinSplitManager"

    const-string v2, "getSplitRootTasksPos failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    return-object v0
.end method

.method public static getTouchOffsetInTask(Landroid/os/IBinder;Landroid/graphics/Point;)Z
    .registers 5

    :try_start_0
    invoke-static {}, Lmiui/app/MiuiMultiWinSplitManager;->getService()Lmiui/app/IMiuiMultiWinSplitManager;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lmiui/app/IMiuiMultiWinSplitManager;->getTouchOffsetInTask(Landroid/os/IBinder;Landroid/graphics/Point;)Z

    move-result v0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8} :catch_9

    return v0

    :catch_9
    move-exception v0

    const-string v1, "MiuiMultiWinSplitManager"

    const-string v2, "getTouchOffsetInTask failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    return v0
.end method

.method public static handleMultiWindowSwitch(Landroid/os/IBinder;Landroid/os/Bundle;)V
    .registers 5

    :try_start_0
    invoke-static {}, Lmiui/app/MiuiMultiWinSplitManager;->getService()Lmiui/app/IMiuiMultiWinSplitManager;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lmiui/app/IMiuiMultiWinSplitManager;->handleMultiWindowSwitch(Landroid/os/IBinder;Landroid/os/Bundle;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7} :catch_8

    goto :goto_10

    :catch_8
    move-exception v0

    const-string v1, "MiuiMultiWinSplitManager"

    const-string v2, "handleMultiWindowSwitch failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_10
    return-void
.end method

.method public static isSupportDragForMultiWin(Landroid/os/IBinder;)Z
    .registers 4

    :try_start_0
    invoke-static {}, Lmiui/app/MiuiMultiWinSplitManager;->getService()Lmiui/app/IMiuiMultiWinSplitManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lmiui/app/IMiuiMultiWinSplitManager;->isSupportDragForMultiWin(Landroid/os/IBinder;)Z

    move-result v0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8} :catch_9

    return v0

    :catch_9
    move-exception v0

    const-string v1, "MiuiMultiWinSplitManager"

    const-string v2, "isSupportDragForMultiWin failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    return v0
.end method
