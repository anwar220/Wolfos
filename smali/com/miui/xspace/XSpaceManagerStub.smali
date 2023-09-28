# classes4.dex

.class public Lcom/miui/xspace/XSpaceManagerStub;
.super Ljava/lang/Object;


# static fields
.field private static final TAG:Ljava/lang/String; = "XSpaceManagerStub"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/miui/xspace/XSpaceManagerStub;
    .registers 1

    const-class v0, Lcom/miui/xspace/XSpaceManagerStub;

    invoke-static {v0}, Lcom/miui/base/MiuiStubUtil;->getInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/xspace/XSpaceManagerStub;

    return-object v0
.end method


# virtual methods
.method public belongToCrossXSpaceSecureSettings(ILjava/lang/String;)Z
    .registers 4

    const/4 v0, 0x0

    return v0
.end method

.method public belongToCrossXSpaceSettings(ILjava/lang/String;)Z
    .registers 4

    const/4 v0, 0x0

    return v0
.end method

.method public canCrossUser(II)Z
    .registers 4

    const/4 v0, 0x0

    return v0
.end method

.method public checkAndResolve(Landroid/app/Activity;Landroid/content/Intent;Lcom/android/internal/app/AlertController$AlertParams;)Z
    .registers 5

    const/4 v0, 0x0

    return v0
.end method

.method public getXSpaceIconMaskId()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getXSpaceUserFlag()I
    .registers 2

    const/high16 v0, 0x800000

    return v0
.end method

.method public getXSpaceUserId()I
    .registers 2

    const/16 v0, -0x2710

    return v0
.end method

.method public hookGetStorageVolume(Landroid/content/Context;Ljava/io/File;Landroid/os/storage/StorageVolume;)Landroid/os/storage/StorageVolume;
    .registers 4

    return-object p3
.end method

.method public isCrossUserIncomingUri(Landroid/content/Context;I)Z
    .registers 4

    const/4 v0, 0x0

    return v0
.end method

.method public isCrossUserService(Landroid/content/pm/ServiceInfo;I)Z
    .registers 4

    const/4 v0, 0x0

    return v0
.end method

.method public isUidBelongtoXSpace(I)Z
    .registers 3

    const/4 v0, 0x0

    return v0
.end method

.method public isXSpaceMatch(JZI)Z
    .registers 6

    const/4 v0, 0x0

    return v0
.end method

.method public isXSpaceUserHandle(Landroid/os/UserHandle;)Z
    .registers 3

    const/4 v0, 0x0

    return v0
.end method

.method public isXSpaceUserId(I)Z
    .registers 3

    const/4 v0, 0x0

    return v0
.end method
