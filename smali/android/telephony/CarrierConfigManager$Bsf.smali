# classes3.dex

.class public final Landroid/telephony/CarrierConfigManager$Bsf;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/CarrierConfigManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Bsf"
.end annotation


# static fields
.field public static final KEY_BSF_SERVER_FQDN_STRING:Ljava/lang/String; = "bsf.bsf_server_fqdn_string"

.field public static final KEY_BSF_SERVER_PORT_INT:Ljava/lang/String; = "bsf.bsf_server_port_int"

.field public static final KEY_BSF_TRANSPORT_TYPE_INT:Ljava/lang/String; = "bsf.bsf_transport_type_int"

.field public static final KEY_PREFIX:Ljava/lang/String; = "bsf."


# direct methods
.method static bridge synthetic -$$Nest$smgetDefaults()Landroid/os/PersistableBundle;
    .registers 1

    invoke-static {}, Landroid/telephony/CarrierConfigManager$Bsf;->getDefaults()Landroid/os/PersistableBundle;

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

    const-string v1, "bsf.bsf_server_port_int"

    const/16 v2, 0x50

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "bsf.bsf_transport_type_int"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "bsf.bsf_server_fqdn_string"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
