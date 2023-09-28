# classes2.dex

.class interface abstract Landroid/media/MediaPlayerStub;
.super Ljava/lang/Object;


# direct methods
.method public static get()Landroid/media/MediaPlayerStub;
    .registers 1

    const-class v0, Landroid/media/MediaPlayerStub;

    invoke-static {v0}, Lcom/miui/base/MiuiStubUtil;->getImpl(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaPlayerStub;

    return-object v0
.end method


# virtual methods
.method public getCacheForType(ILandroid/content/Context;)Landroid/net/Uri;
    .registers 4

    invoke-virtual {p2}, Landroid/content/Context;->getUserId()I

    move-result v0

    invoke-static {p1, v0}, Landroid/media/RingtoneManager;->getCacheForType(II)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public getMiuiActualDefaultRingtoneUri(Landroid/net/Uri;Landroid/content/Context;I)Landroid/net/Uri;
    .registers 5

    invoke-static {p2, p3}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method
