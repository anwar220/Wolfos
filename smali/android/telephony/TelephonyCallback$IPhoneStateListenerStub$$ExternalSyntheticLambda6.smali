# classes3.dex

.class public final synthetic Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;


# instance fields
.field public final synthetic f$0:Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;

.field public final synthetic f$1:Landroid/telephony/TelephonyCallback$BarringInfoListener;

.field public final synthetic f$2:Landroid/telephony/BarringInfo;


# direct methods
.method public synthetic constructor <init>(Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;Landroid/telephony/TelephonyCallback$BarringInfoListener;Landroid/telephony/BarringInfo;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda6;->f$0:Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;

    iput-object p2, p0, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda6;->f$1:Landroid/telephony/TelephonyCallback$BarringInfoListener;

    iput-object p3, p0, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda6;->f$2:Landroid/telephony/BarringInfo;

    return-void
.end method


# virtual methods
.method public final runOrThrow()V
    .registers 4

    iget-object v0, p0, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda6;->f$0:Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;

    iget-object v1, p0, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda6;->f$1:Landroid/telephony/TelephonyCallback$BarringInfoListener;

    iget-object v2, p0, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda6;->f$2:Landroid/telephony/BarringInfo;

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;->lambda$onBarringInfoChanged$57$android-telephony-TelephonyCallback$IPhoneStateListenerStub(Landroid/telephony/TelephonyCallback$BarringInfoListener;Landroid/telephony/BarringInfo;)V

    return-void
.end method
