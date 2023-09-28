# classes3.dex

.class public Landroid/provider/SettingsStub;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get()Landroid/provider/SettingsStub;
    .registers 1

    const-class v0, Landroid/provider/SettingsStub;

    invoke-static {v0}, Lcom/miui/base/MiuiStubUtil;->getImpl(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/provider/SettingsStub;

    return-object v0
.end method


# virtual methods
.method public dumpLocked(ILjava/io/PrintWriter;)V
    .registers 3

    return-void
.end method

.method public getMiuiCacheName(Landroid/net/Uri;)Ljava/lang/String;
    .registers 3

    const-string v0, ""

    return-object v0
.end method

.method public getMiuiCacheRingtoneSetting(Landroid/net/Uri;)Ljava/lang/String;
    .registers 3

    const-string v0, ""

    return-object v0
.end method

.method public getMiuiConfigurationForUser(Landroid/content/ContentResolver;Landroid/content/res/Configuration;I)V
    .registers 4

    return-void
.end method

.method public getMiuiRingtoneCacheName(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    const/4 v0, 0x0

    return-object v0
.end method

.method public isMiuiPublicSystemSettings(Landroid/content/pm/PackageInfo;Ljava/lang/String;)Z
    .registers 4

    const/4 v0, 0x0

    return v0
.end method

.method public isMiuiRingtoneCacheUri(Landroid/net/Uri;)Z
    .registers 3

    const/4 v0, 0x0

    return v0
.end method

.method public loadMiuiDefaultRingtoneSettings(Landroid/database/sqlite/SQLiteStatement;Landroid/content/Context;)V
    .registers 3

    return-void
.end method

.method public logAtSettingsChanged(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    return-void
.end method

.method public onSettingMutate(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    return-void
.end method
