# classes3.dex

.class public final synthetic Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda43;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;


# instance fields
.field public final synthetic f$0:Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;

.field public final synthetic f$1:Landroid/telephony/TelephonyCallback$AllowedNetworkTypesListener;

.field public final synthetic f$2:I

.field public final synthetic f$3:J


# direct methods
.method public synthetic constructor <init>(Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;Landroid/telephony/TelephonyCallback$AllowedNetworkTypesListener;IJ)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda43;->f$0:Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;

    iput-object p2, p0, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda43;->f$1:Landroid/telephony/TelephonyCallback$AllowedNetworkTypesListener;

    iput p3, p0, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda43;->f$2:I

    iput-wide p4, p0, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda43;->f$3:J

    return-void
.end method


# virtual methods
.method public final runOrThrow()V
    .registers 6

    iget-object v0, p0, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda43;->f$0:Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;

    iget-object v1, p0, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda43;->f$1:Landroid/telephony/TelephonyCallback$AllowedNetworkTypesListener;

    iget v2, p0, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda43;->f$2:I

    iget-wide v3, p0, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda43;->f$3:J

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;->lambda$onAllowedNetworkTypesChanged$63$android-telephony-TelephonyCallback$IPhoneStateListenerStub(Landroid/telephony/TelephonyCallback$AllowedNetworkTypesListener;IJ)V

    return-void
.end method
