# classes2.dex

.class interface abstract Landroid/media/RingtoneManagerStub;
.super Ljava/lang/Object;


# direct methods
.method public static get()Landroid/media/RingtoneManagerStub;
    .registers 1

    const-class v0, Landroid/media/RingtoneManagerStub;

    invoke-static {v0}, Lcom/miui/base/MiuiStubUtil;->getImpl(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/RingtoneManagerStub;

    return-object v0
.end method


# virtual methods
.method public getCacheForType(II)Landroid/net/Uri;
    .registers 4

    const/4 v0, 0x0

    return-object v0
.end method

.method public getDefaultType(Landroid/net/Uri;)I
    .registers 3

    const/4 v0, -0x1

    return v0
.end method

.method public getDefaultUri(I)Landroid/net/Uri;
    .registers 3

    const/4 v0, 0x0

    return-object v0
.end method

.method public getSettingForType(I)Ljava/lang/String;
    .registers 3

    const/4 v0, 0x0

    return-object v0
.end method
