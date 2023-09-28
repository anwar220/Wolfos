# classes4.dex

.class public final Lcom/miui/enterprise/RestrictionsHelper;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/enterprise/RestrictionsHelper$Stub;
    }
.end annotation


# static fields
.field public static final DISALLOW_FINGERPRINT:Ljava/lang/String; = "disallow_fingerprint"

.field public static final DISALLOW_IMEIREAD:Ljava/lang/String; = "disallow_imeiread"


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static handleBluetoothChange(Landroid/content/Context;Z)Z
    .registers 3

    invoke-static {}, Lcom/miui/enterprise/RestrictionsHelper$Stub;->get()Lcom/miui/enterprise/RestrictionsHelper$Stub;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/miui/enterprise/RestrictionsHelper$Stub;->handleBluetoothChange(Landroid/content/Context;Z)Z

    move-result v0

    return v0
.end method

.method public static hasAirplaneRestriction(Landroid/content/Context;)Z
    .registers 2

    invoke-static {}, Lcom/miui/enterprise/RestrictionsHelper$Stub;->get()Lcom/miui/enterprise/RestrictionsHelper$Stub;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/miui/enterprise/RestrictionsHelper$Stub;->hasAirplaneRestriction(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public static hasGPSRestriction(Landroid/content/Context;)Z
    .registers 2

    invoke-static {}, Lcom/miui/enterprise/RestrictionsHelper$Stub;->get()Lcom/miui/enterprise/RestrictionsHelper$Stub;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/miui/enterprise/RestrictionsHelper$Stub;->hasGPSRestriction(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public static hasKeyCodeRestriction(Landroid/content/Context;II)Z
    .registers 4

    invoke-static {}, Lcom/miui/enterprise/RestrictionsHelper$Stub;->get()Lcom/miui/enterprise/RestrictionsHelper$Stub;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/miui/enterprise/RestrictionsHelper$Stub;->hasKeyCodeRestriction(Landroid/content/Context;II)Z

    move-result v0

    return v0
.end method

.method public static hasNFCRestriction(Landroid/content/Context;)Z
    .registers 2

    invoke-static {}, Lcom/miui/enterprise/RestrictionsHelper$Stub;->get()Lcom/miui/enterprise/RestrictionsHelper$Stub;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/miui/enterprise/RestrictionsHelper$Stub;->hasNFCRestriction(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public static hasRestriction(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 3

    invoke-static {}, Lcom/miui/enterprise/RestrictionsHelper$Stub;->get()Lcom/miui/enterprise/RestrictionsHelper$Stub;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/miui/enterprise/RestrictionsHelper$Stub;->hasRestriction(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static hasRestriction(Landroid/content/Context;Ljava/lang/String;I)Z
    .registers 4

    invoke-static {}, Lcom/miui/enterprise/RestrictionsHelper$Stub;->get()Lcom/miui/enterprise/RestrictionsHelper$Stub;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/miui/enterprise/RestrictionsHelper$Stub;->hasRestriction(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public static hasWifiRestriction(Landroid/content/Context;)Z
    .registers 2

    invoke-static {}, Lcom/miui/enterprise/RestrictionsHelper$Stub;->get()Lcom/miui/enterprise/RestrictionsHelper$Stub;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/miui/enterprise/RestrictionsHelper$Stub;->hasWifiRestriction(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public static isCameraRestricted(Landroid/content/Context;)Z
    .registers 2

    invoke-static {}, Lcom/miui/enterprise/RestrictionsHelper$Stub;->get()Lcom/miui/enterprise/RestrictionsHelper$Stub;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/miui/enterprise/RestrictionsHelper$Stub;->isCameraRestricted(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public static isMountDisallowed(Landroid/content/Context;Landroid/os/storage/VolumeInfo;)Z
    .registers 3

    invoke-static {}, Lcom/miui/enterprise/RestrictionsHelper$Stub;->get()Lcom/miui/enterprise/RestrictionsHelper$Stub;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/miui/enterprise/RestrictionsHelper$Stub;->isMountDisallowed(Landroid/content/Context;Landroid/os/storage/VolumeInfo;)Z

    move-result v0

    return v0
.end method

.method public static isUsbDeviceRestricted(Landroid/content/Context;)Z
    .registers 2

    invoke-static {}, Lcom/miui/enterprise/RestrictionsHelper$Stub;->get()Lcom/miui/enterprise/RestrictionsHelper$Stub;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/miui/enterprise/RestrictionsHelper$Stub;->isUsbDeviceRestricted(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method
