# classes4.dex

.class Lcom/miui/enterprise/RestrictionsHelper$Stub;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/enterprise/RestrictionsHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Stub"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get()Lcom/miui/enterprise/RestrictionsHelper$Stub;
    .registers 1

    const-class v0, Lcom/miui/enterprise/RestrictionsHelper$Stub;

    invoke-static {v0}, Lcom/miui/base/MiuiStubUtil;->getImpl(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/enterprise/RestrictionsHelper$Stub;

    return-object v0
.end method


# virtual methods
.method public handleBluetoothChange(Landroid/content/Context;Z)Z
    .registers 4

    const/4 v0, 0x0

    return v0
.end method

.method public hasAirplaneRestriction(Landroid/content/Context;)Z
    .registers 3

    const/4 v0, 0x0

    return v0
.end method

.method public hasGPSRestriction(Landroid/content/Context;)Z
    .registers 3

    const/4 v0, 0x0

    return v0
.end method

.method public hasKeyCodeRestriction(Landroid/content/Context;II)Z
    .registers 5

    const/4 v0, 0x0

    return v0
.end method

.method public hasNFCRestriction(Landroid/content/Context;)Z
    .registers 3

    const/4 v0, 0x0

    return v0
.end method

.method public hasRestriction(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 4

    const/4 v0, 0x0

    return v0
.end method

.method public hasRestriction(Landroid/content/Context;Ljava/lang/String;I)Z
    .registers 5

    const/4 v0, 0x0

    return v0
.end method

.method public hasWifiRestriction(Landroid/content/Context;)Z
    .registers 3

    const/4 v0, 0x0

    return v0
.end method

.method public isCameraRestricted(Landroid/content/Context;)Z
    .registers 3

    const/4 v0, 0x0

    return v0
.end method

.method public isMountDisallowed(Landroid/content/Context;Landroid/os/storage/VolumeInfo;)Z
    .registers 4

    const/4 v0, 0x0

    return v0
.end method

.method public isUsbDeviceRestricted(Landroid/content/Context;)Z
    .registers 3

    const/4 v0, 0x0

    return v0
.end method
