# classes3.dex

.class public final Landroid/telephony/CarrierConfigManager$ImsServiceEntitlement;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/CarrierConfigManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ImsServiceEntitlement"
.end annotation


# static fields
.field public static final KEY_ENTITLEMENT_SERVER_URL_STRING:Ljava/lang/String; = "imsserviceentitlement.entitlement_server_url_string"

.field public static final KEY_FCM_SENDER_ID_STRING:Ljava/lang/String; = "imsserviceentitlement.fcm_sender_id_string"

.field public static final KEY_IMS_PROVISIONING_BOOL:Ljava/lang/String; = "imsserviceentitlement.ims_provisioning_bool"

.field public static final KEY_PREFIX:Ljava/lang/String; = "imsserviceentitlement."

.field public static final KEY_SHOW_VOWIFI_WEBVIEW_BOOL:Ljava/lang/String; = "imsserviceentitlement.show_vowifi_webview_bool"


# direct methods
.method static bridge synthetic -$$Nest$smgetDefaults()Landroid/os/PersistableBundle;
    .registers 1

    invoke-static {}, Landroid/telephony/CarrierConfigManager$ImsServiceEntitlement;->getDefaults()Landroid/os/PersistableBundle;

    move-result-object v0

    return-object v0
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getDefaults()Landroid/os/PersistableBundle;
    .registers 3

    new-instance v0, Landroid/os/PersistableBundle;

    invoke-direct {v0}, Landroid/os/PersistableBundle;-><init>()V

    const-string/jumbo v1, "imsserviceentitlement.entitlement_server_url_string"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "imsserviceentitlement.fcm_sender_id_string"

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "imsserviceentitlement.show_vowifi_webview_bool"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v1, "imsserviceentitlement.ims_provisioning_bool"

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    return-object v0
.end method
