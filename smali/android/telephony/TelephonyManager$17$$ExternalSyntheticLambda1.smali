# classes3.dex

.class public final synthetic Landroid/telephony/TelephonyManager$17$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/telephony/TelephonyManager$BootstrapAuthenticationCallback;

.field public final synthetic f$1:[B

.field public final synthetic f$2:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Landroid/telephony/TelephonyManager$BootstrapAuthenticationCallback;[BLjava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/telephony/TelephonyManager$17$$ExternalSyntheticLambda1;->f$0:Landroid/telephony/TelephonyManager$BootstrapAuthenticationCallback;

    iput-object p2, p0, Landroid/telephony/TelephonyManager$17$$ExternalSyntheticLambda1;->f$1:[B

    iput-object p3, p0, Landroid/telephony/TelephonyManager$17$$ExternalSyntheticLambda1;->f$2:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Landroid/telephony/TelephonyManager$17$$ExternalSyntheticLambda1;->f$0:Landroid/telephony/TelephonyManager$BootstrapAuthenticationCallback;

    iget-object v1, p0, Landroid/telephony/TelephonyManager$17$$ExternalSyntheticLambda1;->f$1:[B

    iget-object v2, p0, Landroid/telephony/TelephonyManager$17$$ExternalSyntheticLambda1;->f$2:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Landroid/telephony/TelephonyManager$17;->lambda$onKeysAvailable$0(Landroid/telephony/TelephonyManager$BootstrapAuthenticationCallback;[BLjava/lang/String;)V

    return-void
.end method
