# classes3.dex

.class public Landroid/os/IpcDataCache$Config;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/IpcDataCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Config"
.end annotation


# instance fields
.field private final mApi:Ljava/lang/String;

.field private mChildren:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mDisabled:Z

.field private final mMaxEntries:I

.field private final mModule:Ljava/lang/String;

.field private final mName:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3, p3}, Landroid/os/IpcDataCache$Config;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/os/IpcDataCache$Config;->mDisabled:Z

    iput p1, p0, Landroid/os/IpcDataCache$Config;->mMaxEntries:I

    iput-object p2, p0, Landroid/os/IpcDataCache$Config;->mModule:Ljava/lang/String;

    iput-object p3, p0, Landroid/os/IpcDataCache$Config;->mApi:Ljava/lang/String;

    iput-object p4, p0, Landroid/os/IpcDataCache$Config;->mName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/os/IpcDataCache$Config;Ljava/lang/String;)V
    .registers 5

    invoke-virtual {p1}, Landroid/os/IpcDataCache$Config;->maxEntries()I

    move-result v0

    invoke-virtual {p1}, Landroid/os/IpcDataCache$Config;->module()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1, p2, p2}, Landroid/os/IpcDataCache$Config;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/os/IpcDataCache$Config;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    invoke-virtual {p1}, Landroid/os/IpcDataCache$Config;->maxEntries()I

    move-result v0

    invoke-virtual {p1}, Landroid/os/IpcDataCache$Config;->module()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1, p2, p3}, Landroid/os/IpcDataCache$Config;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private final registerChild(Ljava/lang/String;)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/os/IpcDataCache$Config;->mChildren:Landroid/util/ArraySet;

    if-nez v0, :cond_c

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Landroid/os/IpcDataCache$Config;->mChildren:Landroid/util/ArraySet;

    :cond_c
    iget-object v0, p0, Landroid/os/IpcDataCache$Config;->mChildren:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    iget-boolean v0, p0, Landroid/os/IpcDataCache$Config;->mDisabled:Z

    if-eqz v0, :cond_18

    invoke-static {p1}, Landroid/os/IpcDataCache;->disableForCurrentProcess(Ljava/lang/String;)V

    :cond_18
    monitor-exit p0

    return-void

    :catchall_1a
    move-exception v0

    monitor-exit p0
    :try_end_1c
    .catchall {:try_start_1 .. :try_end_1c} :catchall_1a

    throw v0
.end method


# virtual methods
.method public final api()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/os/IpcDataCache$Config;->mApi:Ljava/lang/String;

    return-object v0
.end method

.method public child(Ljava/lang/String;)Landroid/os/IpcDataCache$Config;
    .registers 4

    new-instance v0, Landroid/os/IpcDataCache$Config;

    invoke-virtual {p0}, Landroid/os/IpcDataCache$Config;->api()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Landroid/os/IpcDataCache$Config;-><init>(Landroid/os/IpcDataCache$Config;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Landroid/os/IpcDataCache$Config;->registerChild(Ljava/lang/String;)V

    return-object v0
.end method

.method public disableAllForCurrentProcess()V
    .registers 3

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Landroid/os/IpcDataCache$Config;->mDisabled:Z

    invoke-virtual {p0}, Landroid/os/IpcDataCache$Config;->disableForCurrentProcess()V

    iget-object v0, p0, Landroid/os/IpcDataCache$Config;->mChildren:Landroid/util/ArraySet;

    if-eqz v0, :cond_1f

    invoke-virtual {v0}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Landroid/os/IpcDataCache;->disableForCurrentProcess(Ljava/lang/String;)V

    goto :goto_f

    :cond_1f
    monitor-exit p0

    return-void

    :catchall_21
    move-exception v0

    monitor-exit p0
    :try_end_23
    .catchall {:try_start_2 .. :try_end_23} :catchall_21

    throw v0
.end method

.method public disableForCurrentProcess()V
    .registers 2

    iget-object v0, p0, Landroid/os/IpcDataCache$Config;->mName:Ljava/lang/String;

    invoke-static {v0}, Landroid/os/IpcDataCache;->disableForCurrentProcess(Ljava/lang/String;)V

    return-void
.end method

.method public invalidateCache()V
    .registers 3

    iget-object v0, p0, Landroid/os/IpcDataCache$Config;->mModule:Ljava/lang/String;

    iget-object v1, p0, Landroid/os/IpcDataCache$Config;->mApi:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/os/IpcDataCache;->invalidateCache(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final maxEntries()I
    .registers 2

    iget v0, p0, Landroid/os/IpcDataCache$Config;->mMaxEntries:I

    return v0
.end method

.method public final module()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/os/IpcDataCache$Config;->mModule:Ljava/lang/String;

    return-object v0
.end method

.method public final name()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/os/IpcDataCache$Config;->mName:Ljava/lang/String;

    return-object v0
.end method
