# classes3.dex

.class public final synthetic Landroid/telephony/TelephonyRegistryManager$CarrierPrivilegesCallbackWrapper$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;


# instance fields
.field public final synthetic f$0:Landroid/telephony/TelephonyRegistryManager$CarrierPrivilegesCallbackWrapper;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Landroid/telephony/TelephonyRegistryManager$CarrierPrivilegesCallbackWrapper;Ljava/lang/String;I)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/telephony/TelephonyRegistryManager$CarrierPrivilegesCallbackWrapper$$ExternalSyntheticLambda4;->f$0:Landroid/telephony/TelephonyRegistryManager$CarrierPrivilegesCallbackWrapper;

    iput-object p2, p0, Landroid/telephony/TelephonyRegistryManager$CarrierPrivilegesCallbackWrapper$$ExternalSyntheticLambda4;->f$1:Ljava/lang/String;

    iput p3, p0, Landroid/telephony/TelephonyRegistryManager$CarrierPrivilegesCallbackWrapper$$ExternalSyntheticLambda4;->f$2:I

    return-void
.end method


# virtual methods
.method public final runOrThrow()V
    .registers 4

    iget-object v0, p0, Landroid/telephony/TelephonyRegistryManager$CarrierPrivilegesCallbackWrapper$$ExternalSyntheticLambda4;->f$0:Landroid/telephony/TelephonyRegistryManager$CarrierPrivilegesCallbackWrapper;

    iget-object v1, p0, Landroid/telephony/TelephonyRegistryManager$CarrierPrivilegesCallbackWrapper$$ExternalSyntheticLambda4;->f$1:Ljava/lang/String;

    iget v2, p0, Landroid/telephony/TelephonyRegistryManager$CarrierPrivilegesCallbackWrapper$$ExternalSyntheticLambda4;->f$2:I

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyRegistryManager$CarrierPrivilegesCallbackWrapper;->lambda$onCarrierServiceChanged$3$android-telephony-TelephonyRegistryManager$CarrierPrivilegesCallbackWrapper(Ljava/lang/String;I)V

    return-void
.end method
